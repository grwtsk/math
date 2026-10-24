# subsingleton_of_isInitial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8dee44d8de5f3b91206564e4415c99a292e8a112",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 700,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0f/0f7c0577b69151c888dd8d42ef08c69ae40672689b13b26435351b572d503e27.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6f735ddb-7852-1d1c-9625-bbac3ff79ef1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8d3d16b3-ea9a-716b-f37a-2a0032e2fbff",
  "kind": "lemma",
  "lexical_name": "subsingleton_of_isInitial",
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
  "slug": "subsingleton-of-isinitial--9708b6c7ee8fc3b084973f05",
  "source": {
    "blob": "8dee44d8de5f3b91206564e4415c99a292e8a112",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 711,
    "line": 700,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Lattice/Variant0f7c0577b69151c888dd8d42ef08c69ae40672689b13b26435351b572d503e27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9708b6c7ee8fc3b084973f0587daea5c3f32b6657fcd36975493a2a9edaa07e1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Lattice/Variant0f7c0577b69151c888dd8d42ef08c69ae40672689b13b26435351b572d503e27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d3d16b3-ea9a-716b-f37a-2a0032e2fbff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 700–711.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma subsingleton_of_isInitial {X : C} (hX : IsInitial X) : Subsingleton (Subobject X) := by
  suffices ∀ (S : Subobject X), S = .mk (𝟙 _) from ⟨by simp [this]⟩
  intro S
  obtain ⟨A, i, _, rfl⟩ := S.mk_surjective
  have fac : hX.to A ≫ i = 𝟙 X := hX.hom_ext _ _
  let e : A ≅ X :=
    { hom := i
      inv := hX.to A
      hom_inv_id := by rw [← cancel_mono i, assoc, fac, id_comp, comp_id]
      inv_hom_id := fac }
  exact mk_eq_mk_of_comm i (𝟙 X) e (by simp [e])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Lattice/Variant0f7c0577b69151c888dd8d42ef08c69ae40672689b13b26435351b572d503e27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Lattice/Variant0f7c0577b69151c888dd8d42ef08c69ae40672689b13b26435351b572d503e27.lean#L700).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8dee44d8de5f3b91206564e4415c99a292e8a112` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
