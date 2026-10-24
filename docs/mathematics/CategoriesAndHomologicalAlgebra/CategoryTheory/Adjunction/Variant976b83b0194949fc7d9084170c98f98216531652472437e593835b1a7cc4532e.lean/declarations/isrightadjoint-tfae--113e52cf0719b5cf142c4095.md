# isRightAdjoint_TFAE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:38781a9e-52db-3e5f-7106-097ac470d519",
  "kind": "theorem",
  "lexical_name": "isRightAdjoint_TFAE",
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
  "slug": "isrightadjoint-tfae--113e52cf0719b5cf142c4095",
  "source": {
    "blob": "e31bb968221f2c0d15705671e772c0607b9745cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 190,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant976b83b0194949fc7d9084170c98f98216531652472437e593835b1a7cc4532e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:113e52cf0719b5cf142c40950d6dd1e14d23f5f7f440cbb2535362ed3b45f1d6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant976b83b0194949fc7d9084170c98f98216531652472437e593835b1a7cc4532e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:38781a9e-52db-3e5f-7106-097ac470d519`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isRightAdjoint_TFAE (u : b ⟶ a) :
    List.TFAE [
      IsRightAdjoint u,
      HasAbsLeftKanLift u (𝟙 a),
      ∃ _ : HasLeftKanLift u (𝟙 a), LanLift.CommuteWith u (𝟙 a) u] := by
  tfae_have 1 → 2
  | h => IsAbsKan.hasAbsLeftKanLift (Adjunction.ofIsRightAdjoint u).isAbsoluteLeftKanLift
  tfae_have 2 → 3
  | h => ⟨inferInstance, inferInstance⟩
  tfae_have 3 → 1
  | ⟨h, h'⟩ => .mk <| (lanLiftIsKan u (𝟙 a)).adjunction <| LanLift.CommuteWith.isKan u (𝟙 a) u
  tfae_finish

end LeftLift

namespace LeftExtension

/-- A left adjoint commutes with a left Kan extension. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant976b83b0194949fc7d9084170c98f98216531652472437e593835b1a7cc4532e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant976b83b0194949fc7d9084170c98f98216531652472437e593835b1a7cc4532e.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e31bb968221f2c0d15705671e772c0607b9745cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
