# extEquivCohomologyClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ee4b068ea36e71d94b1e4272f367039c8e5ff5a1d6448acbb8c98feee916febf",
  "kind": "def",
  "lexical_name": "extEquivCohomologyClass",
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
  "slug": "extequivcohomologyclass--a61f0b4af38e3ed496a09472",
  "source": {
    "blob": "87d0abafa10092313d5a7650830d36fa5ab8ac0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 47,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Varianteaee7f37a5d9d096e88b1b7e7f62ba444389013009809965a9cfeb47016bff26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a61f0b4af38e3ed496a0947228aaac2c84bd60c4562acee70c3f64282fb6c7af",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Varianteaee7f37a5d9d096e88b1b7e7f62ba444389013009809965a9cfeb47016bff26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ee4b068ea36e71d94b1e4272f367039c8e5ff5a1d6448acbb8c98feee916febf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def extEquivCohomologyClass :
    Ext X Y n ≃ CohomologyClass R.cochainComplex ((singleFunctor C 0).obj Y) n :=
  (SmallShiftedHom.precompEquiv.{w} R.π'
    ((by rw [HomologicalComplex.mem_quasiIso_iff]; infer_instance))).trans
      CochainComplex.HomComplex.CohomologyClass.equivOfIsKProjective.{w}.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Varianteaee7f37a5d9d096e88b1b7e7f62ba444389013009809965a9cfeb47016bff26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Varianteaee7f37a5d9d096e88b1b7e7f62ba444389013009809965a9cfeb47016bff26.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87d0abafa10092313d5a7650830d36fa5ab8ac0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
