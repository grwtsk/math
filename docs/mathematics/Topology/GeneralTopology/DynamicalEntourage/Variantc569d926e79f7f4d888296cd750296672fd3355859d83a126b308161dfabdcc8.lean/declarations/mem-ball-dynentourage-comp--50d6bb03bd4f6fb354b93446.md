# mem_ball_dynEntourage_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f9a72e0a-2b60-d462-bef4-6ff7f995e3dd",
  "kind": "lemma",
  "lexical_name": "mem_ball_dynEntourage_comp",
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
  "slug": "mem-ball-dynentourage-comp--50d6bb03bd4f6fb354b93446",
  "source": {
    "blob": "20ea9df4a15893e3631ee6ed827a6f9a7294ea4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 138,
    "path": "GRWTSK/Topology/GeneralTopology/DynamicalEntourage/Variantc569d926e79f7f4d888296cd750296672fd3355859d83a126b308161dfabdcc8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50d6bb03bd4f6fb354b9344656007635d9cc2358f688d67bd40d3adda1dbe605",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DynamicalEntourage/Variantc569d926e79f7f4d888296cd750296672fd3355859d83a126b308161dfabdcc8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9a72e0a-2b60-d462-bef4-6ff7f995e3dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_ball_dynEntourage_comp (T : X → X) (n : ℕ) {U : Set (X × X)} (U_symm : IsSymmetricRel U)
    (x y : X) (h : (ball x (dynEntourage T U n) ∩ ball y (dynEntourage T U n)).Nonempty) :
    x ∈ ball y (dynEntourage T (U ○ U) n) := by
  rcases h with ⟨z, z_Bx, z_By⟩
  rw [mem_ball_symmetry (IsSymmetricRel.dynEntourage T U_symm n)] at z_Bx
  exact dynEntourage_comp_subset T U U n (mem_ball_comp z_By z_Bx)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DynamicalEntourage/Variantc569d926e79f7f4d888296cd750296672fd3355859d83a126b308161dfabdcc8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DynamicalEntourage/Variantc569d926e79f7f4d888296cd750296672fd3355859d83a126b308161dfabdcc8.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20ea9df4a15893e3631ee6ed827a6f9a7294ea4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
