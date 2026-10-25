# blastConst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1a02db00e25b85bb44a7eeeb0ea1a5665234790a5d5070ea30b075ade1688582",
  "kind": "def",
  "lexical_name": "blastConst",
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
  "slug": "blastconst--ee461b7353a09074d7fb84fc",
  "source": {
    "blob": "6417d654628b8ce5b0f3cdc23c94a749bfc7c10d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 28,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Const/Variant432d5353f8d7e685d35350bb1d0f686b92b6a6e954edb6342384274d94974e12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ee461b7353a09074d7fb84fcb65bbd61c7f3b0aead33fd4404dcc7024afbdffd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Const/Variant432d5353f8d7e685d35350bb1d0f686b92b6a6e954edb6342384274d94974e12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1a02db00e25b85bb44a7eeeb0ea1a5665234790a5d5070ea30b075ade1688582`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def blastConst (aig : AIG α) (val : BitVec w) : AIG.RefVec aig w :=
  go aig val 0 (.emptyWithCapacity w) (by omega)
where
  go (aig : AIG α) (val : BitVec w) (curr : Nat) (s : AIG.RefVec aig curr) (hcurr : curr ≤ w) :
      AIG.RefVec aig w :=
    if hcurr : curr < w then
      let bitRef := aig.mkConstCached (val.getLsbD curr)
      let s := s.push bitRef
      go aig val (curr + 1) s (by omega)
    else
      have hcurr : curr = w := by omega
      hcurr ▸ s
  termination_by w - curr

end bitblast
end BVExpr

end Std.Tactic.BVDecide
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Const/Variant432d5353f8d7e685d35350bb1d0f686b92b6a6e954edb6342384274d94974e12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Const/Variant432d5353f8d7e685d35350bb1d0f686b92b6a6e954edb6342384274d94974e12.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6417d654628b8ce5b0f3cdc23c94a749bfc7c10d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
