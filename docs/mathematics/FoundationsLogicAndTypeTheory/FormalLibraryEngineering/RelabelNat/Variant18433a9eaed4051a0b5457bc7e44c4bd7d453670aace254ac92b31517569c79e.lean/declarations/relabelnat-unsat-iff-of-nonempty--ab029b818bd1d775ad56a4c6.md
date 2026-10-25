# relabelNat_unsat_iff_of_NonEmpty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c14604f6-1274-2776-7e81-af42ae4f0921",
  "kind": "theorem",
  "lexical_name": "relabelNat_unsat_iff_of_NonEmpty",
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
  "slug": "relabelnat-unsat-iff-of-nonempty--ab029b818bd1d775ad56a4c6",
  "source": {
    "blob": "a1e3e1dc57df37fd7c31ab45f796cf68c31e806b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 366,
    "line": 342,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant18433a9eaed4051a0b5457bc7e44c4bd7d453670aace254ac92b31517569c79e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab029b818bd1d775ad56a4c6b56da617b4016931ee5b7370e812f7289b99efa0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant18433a9eaed4051a0b5457bc7e44c4bd7d453670aace254ac92b31517569c79e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c14604f6-1274-2776-7e81-af42ae4f0921`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 342–366.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem relabelNat_unsat_iff_of_NonEmpty [Nonempty α] {aig : AIG α} {hidx1} {hidx2} :
    (aig.relabelNat).UnsatAt idx invert hidx1 ↔ aig.UnsatAt idx invert hidx2 := by
  simp only [relabelNat, relabelNat']
  rw [relabel_unsat_iff]
  intro x y hx hy heq
  split at heq
  next hcase1 =>
    split at heq
    next hcase2 =>
      apply RelabelNat.State.ofAIG_find_unique
      · assumption
      · rw [heq]
        assumption
    next hcase2 =>
      exfalso
      rcases RelabelNat.State.ofAIG_find_some y hy with ⟨n, hn⟩
      simp [hcase2] at hn
  next hcase =>
    exfalso
    rcases RelabelNat.State.ofAIG_find_some x hx with ⟨n, hn⟩
    simp [hcase] at hn

/--
`relabelNat` preserves unsatisfiablility.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant18433a9eaed4051a0b5457bc7e44c4bd7d453670aace254ac92b31517569c79e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant18433a9eaed4051a0b5457bc7e44c4bd7d453670aace254ac92b31517569c79e.lean#L342).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1e3e1dc57df37fd7c31ab45f796cf68c31e806b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
