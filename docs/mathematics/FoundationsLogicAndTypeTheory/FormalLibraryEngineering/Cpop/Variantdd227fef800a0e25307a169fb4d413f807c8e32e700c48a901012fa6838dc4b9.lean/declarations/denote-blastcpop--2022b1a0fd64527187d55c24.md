# denote_blastCpop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:29552d86-f9a5-002e-2605-462134f7373f",
  "kind": "theorem",
  "lexical_name": "denote_blastCpop",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "denote-blastcpop--2022b1a0fd64527187d55c24",
  "source": {
    "blob": "d1812ff626310aec0f5bcd39aac1cb04d417fdb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 329,
    "line": 299,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cpop/Variantdd227fef800a0e25307a169fb4d413f807c8e32e700c48a901012fa6838dc4b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2022b1a0fd64527187d55c24f5f61f2c12a2776dc1c80e3c9ee3158959932e81",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cpop/Variantdd227fef800a0e25307a169fb4d413f807c8e32e700c48a901012fa6838dc4b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29552d86-f9a5-002e-2605-462134f7373f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 299–329.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem denote_blastCpop (aig : AIG α) (xc : AIG.RefVec aig w) (x : BitVec w)
    (assign : α → Bool)
    (hx : ∀ (idx : Nat) (hidx : idx < w), ⟦aig, xc.get idx hidx, assign⟧ = x.getLsbD idx) :
    ∀ (idx : Nat) (hidx : idx < w),
      ⟦
        (blastCpop aig xc).aig,
        (blastCpop aig xc).vec.get idx hidx,
        assign
      ⟧ = (BitVec.cpop x).getLsbD idx := by
    generalize hgen : blastCpop aig xc = res
    rw [BitVec.cpop_eq_cpopRec]
    unfold blastCpop at hgen
    split at hgen
    · simp only at hgen
      rw [← hgen]
      unfold BitVec.cpopRec
      simp only [show 1 < w by omega, reduceDIte, BitVec.cast_eq]
      apply denote_blastCpopTree
      apply denote_blastExtractAndExtend
      simp [hx]
    · unfold BitVec.cpopRec
      split at hgen
      · rw [← hgen]
        simp [show w = 1 by omega, hx]
      · rw [← hgen]
        simp [show w = 0 by omega]

end bitblast
end BVExpr

end Std.Tactic.BVDecide
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cpop/Variantdd227fef800a0e25307a169fb4d413f807c8e32e700c48a901012fa6838dc4b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cpop/Variantdd227fef800a0e25307a169fb4d413f807c8e32e700c48a901012fa6838dc4b9.lean#L299).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1812ff626310aec0f5bcd39aac1cb04d417fdb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
