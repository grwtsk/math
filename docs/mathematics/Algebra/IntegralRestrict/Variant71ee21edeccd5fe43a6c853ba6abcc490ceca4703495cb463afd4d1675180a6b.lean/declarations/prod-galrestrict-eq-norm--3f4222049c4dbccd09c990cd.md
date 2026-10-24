# prod_galRestrict_eq_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "63f417f2adbe591569d04513fa4ac43825643dae",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 123,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/71/71ee21edeccd5fe43a6c853ba6abcc490ceca4703495cb463afd4d1675180a6b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d3f6b99f-633b-61f0-147f-7008a3736bf2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:314ece33-5062-9d1b-4f7a-01071caa9d62",
  "kind": "lemma",
  "lexical_name": "prod_galRestrict_eq_norm",
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
  "slug": "prod-galrestrict-eq-norm--3f4222049c4dbccd09c990cd",
  "source": {
    "blob": "63f417f2adbe591569d04513fa4ac43825643dae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 123,
    "path": "GRWTSK/Algebra/IntegralRestrict/Variant71ee21edeccd5fe43a6c853ba6abcc490ceca4703495cb463afd4d1675180a6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f4222049c4dbccd09c990cd92ca56441a2a1e32025175aed5ed7a9e031cd78b",
  "verification": {
    "reference": "docs/verification/Algebra/IntegralRestrict/Variant71ee21edeccd5fe43a6c853ba6abcc490ceca4703495cb463afd4d1675180a6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:314ece33-5062-9d1b-4f7a-01071caa9d62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma prod_galRestrict_eq_norm [IsGalois K L] [IsIntegrallyClosed A] (x : B) :
    (∏ σ : L ≃ₐ[K] L, galRestrict A K L B σ x) =
    algebraMap A B (IsIntegralClosure.mk' (R := A) A (Algebra.norm K <| algebraMap B L x)
      (Algebra.isIntegral_norm K (IsIntegralClosure.isIntegral A L x).algebraMap)) := by
  apply IsIntegralClosure.algebraMap_injective B A L
  rw [← IsScalarTower.algebraMap_apply, IsScalarTower.algebraMap_eq A K L]
  simp only [map_prod, algebraMap_galRestrict_apply, IsIntegralClosure.algebraMap_mk',
    Algebra.norm_eq_prod_automorphisms, AlgHom.coe_coe, RingHom.coe_comp, Function.comp_apply]

attribute [local instance] FractionRing.liftAlgebra FractionRing.isScalarTower_liftAlgebra

noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/IntegralRestrict/Variant71ee21edeccd5fe43a6c853ba6abcc490ceca4703495cb463afd4d1675180a6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/IntegralRestrict/Variant71ee21edeccd5fe43a6c853ba6abcc490ceca4703495cb463afd4d1675180a6b.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63f417f2adbe591569d04513fa4ac43825643dae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
