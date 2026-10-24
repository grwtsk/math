# map_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bcc55ede3007a77d6bd354599141272f03caab9f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 178,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a1/a11cd4eb2fd7a0ade8db338d7a715fc6c428c20fb9321a50352a520253fac260.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:58df5b99-6ba5-dd05-bcae-819dd9ba2ef5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7b588783-c134-0d5f-62c9-11f545a5b6a4",
  "kind": "lemma",
  "lexical_name": "map_eq_zero",
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
  "slug": "map-eq-zero--d68dad7f703f95533d9167ca",
  "source": {
    "blob": "bcc55ede3007a77d6bd354599141272f03caab9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 178,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functoriality/Varianta11cd4eb2fd7a0ade8db338d7a715fc6c428c20fb9321a50352a520253fac260.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d68dad7f703f95533d9167ca8e7870e3f84571f684e61a75741fee53ccb84450",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functoriality/Varianta11cd4eb2fd7a0ade8db338d7a715fc6c428c20fb9321a50352a520253fac260.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b588783-c134-0d5f-62c9-11f545a5b6a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map_eq_zero (n : ℕ) [NeZero n] (hf : f = 1) : map f φ n = 0 := by
  obtain ⟨n, rfl⟩ := Nat.exists_eq_add_one_of_ne_zero (NeZero.ne n)
  obtain rfl : f = (1 : PUnit.{u + 1} →* H).comp (1 : G →* PUnit.{u + 1}) := by simpa using hf
  have : map (1 : G →* PUnit.{u + 1}) (A := res 1 A) φ (n + 1) = 0 :=
    (isZero_groupCohomology_succ_of_subsingleton _ _).eq_of_src ..
  rw [show φ = (resFunctor (1 : G →* PUnit.{u + 1})).map (𝟙 (res 1 A)) ≫ φ from rfl,
    map_comp, this, Limits.comp_zero]

/-- The isomorphism between cohomology groups induced by a group isomorphism `e : G ≃* H` and a
isomorphism between representations (restricted by `e`). -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functoriality/Varianta11cd4eb2fd7a0ade8db338d7a715fc6c428c20fb9321a50352a520253fac260.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functoriality/Varianta11cd4eb2fd7a0ade8db338d7a715fc6c428c20fb9321a50352a520253fac260.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcc55ede3007a77d6bd354599141272f03caab9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
