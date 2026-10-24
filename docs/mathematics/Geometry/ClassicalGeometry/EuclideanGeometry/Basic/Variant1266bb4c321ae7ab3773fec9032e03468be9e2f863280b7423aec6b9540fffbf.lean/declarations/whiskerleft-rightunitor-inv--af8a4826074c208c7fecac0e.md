# whiskerLeft_rightUnitor_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "12c131c11f5571508a123e12824d90deac82d3ba",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 382,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/12/1266bb4c321ae7ab3773fec9032e03468be9e2f863280b7423aec6b9540fffbf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eea4ce4d-fe8b-8ecd-8ace-ffcc101cbf05",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6048e894-ed4a-eacb-4fba-85846fc6139e",
  "kind": "theorem",
  "lexical_name": "whiskerLeft_rightUnitor_inv",
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
  "slug": "whiskerleft-rightunitor-inv--af8a4826074c208c7fecac0e",
  "source": {
    "blob": "12c131c11f5571508a123e12824d90deac82d3ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 394,
    "line": 382,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant1266bb4c321ae7ab3773fec9032e03468be9e2f863280b7423aec6b9540fffbf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af8a4826074c208c7fecac0e1cc8e4794d5a76e5585c83fd3e9c4287f636b728",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant1266bb4c321ae7ab3773fec9032e03468be9e2f863280b7423aec6b9540fffbf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6048e894-ed4a-eacb-4fba-85846fc6139e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 382–394.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem whiskerLeft_rightUnitor_inv (f : a ⟶ b) (g : b ⟶ c) :
    f ◁ (ρ_ g).inv = (ρ_ (f ≫ g)).inv ≫ (α_ f g (𝟙 c)).hom :=
  eq_of_inv_eq_inv (by simp)

/-
It is not so obvious whether `leftUnitor_whiskerRight` or `leftUnitor_comp` should be a simp
lemma. Our choice is the former. One reason is that the latter yields the following loop:
[id_whiskerLeft]   : 𝟙 a ◁ (ρ_ f).hom ==> (λ_ (f ≫ 𝟙 b)).hom ≫ (ρ_ f).hom ≫ (λ_ f).inv
[leftUnitor_comp]  : (λ_ (f ≫ 𝟙 b)).hom ==> (α_ (𝟙 a) f (𝟙 b)).inv ≫ (λ_ f).hom ▷ 𝟙 b
[whiskerRight_id]  : (λ_ f).hom ▷ 𝟙 b ==> (ρ_ (𝟙 a ≫ f)).hom ≫ (λ_ f).hom ≫ (ρ_ f).inv
[rightUnitor_comp] : (ρ_ (𝟙 a ≫ f)).hom ==> (α_ (𝟙 a) f (𝟙 b)).hom ≫ 𝟙 a ◁ (ρ_ f).hom
-/
@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant1266bb4c321ae7ab3773fec9032e03468be9e2f863280b7423aec6b9540fffbf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant1266bb4c321ae7ab3773fec9032e03468be9e2f863280b7423aec6b9540fffbf.lean#L382).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12c131c11f5571508a123e12824d90deac82d3ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
