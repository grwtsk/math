# CotangentSpace.map_toInfinitesimal_bijective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b6ef7478-a127-c38e-29ff-c811f97a5568",
  "kind": "lemma",
  "lexical_name": "CotangentSpace.map_toInfinitesimal_bijective",
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
  "slug": "cotangentspace-map-toinfinitesimal-bijective--0481db54fa800e4afb4ed153",
  "source": {
    "blob": "35afb79ea726356586d546a4de1b8fd31ec5b6fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 502,
    "line": 490,
    "path": "GRWTSK/Algebra/Kaehler/Variant4cbaf2cb72d5ec69a14d3c55a5c3218ccc84b8bfd3d8ee6239606a0117f1da13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0481db54fa800e4afb4ed1535501ad711bbb6386ffd14ea2f4dd0fbdf6f7dd69",
  "verification": {
    "reference": "docs/verification/Algebra/Kaehler/Variant4cbaf2cb72d5ec69a14d3c55a5c3218ccc84b8bfd3d8ee6239606a0117f1da13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b6ef7478-a127-c38e-29ff-c811f97a5568`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 490–502.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma CotangentSpace.map_toInfinitesimal_bijective (P : Extension.{u} R S) :
    Function.Bijective (CotangentSpace.map P.toInfinitesimal) := by
  suffices CotangentSpace.map P.toInfinitesimal =
      (tensorKaehlerQuotKerSqEquiv _ _ _).symm.toLinearMap by
    rw [this]; exact(tensorKaehlerQuotKerSqEquiv _ _ _).symm.bijective
  letI : Algebra P.Ring P.infinitesimal.Ring := inferInstanceAs (Algebra P.Ring (P.Ring ⧸ _))
  have : IsScalarTower P.Ring P.infinitesimal.Ring S := .of_algebraMap_eq' rfl
  apply LinearMap.restrictScalars_injective P.Ring
  ext x a
  dsimp
  simp only [map_tmul, id.map_eq_id, RingHom.id_apply, Hom.toAlgHom_apply]
  exact (tensorKaehlerQuotKerSqEquiv_symm_tmul_D _ _).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Kaehler/Variant4cbaf2cb72d5ec69a14d3c55a5c3218ccc84b8bfd3d8ee6239606a0117f1da13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Kaehler/Variant4cbaf2cb72d5ec69a14d3c55a5c3218ccc84b8bfd3d8ee6239606a0117f1da13.lean#L490).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35afb79ea726356586d546a4de1b8fd31ec5b6fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
