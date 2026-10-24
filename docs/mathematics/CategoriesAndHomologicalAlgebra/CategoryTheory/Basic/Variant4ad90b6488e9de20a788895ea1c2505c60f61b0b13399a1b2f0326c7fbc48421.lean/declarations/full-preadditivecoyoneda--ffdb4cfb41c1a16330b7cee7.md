# full_preadditiveCoyoneda

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dec0c4cb280abec0832574457fbe465d8a65e7b4f1f65447b51f1bcca45dd618",
  "kind": "instance",
  "lexical_name": "full_preadditiveCoyoneda",
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
  "slug": "full-preadditivecoyoneda--ffdb4cfb41c1a16330b7cee7",
  "source": {
    "blob": "64520a8896c12d7b24256eb65906f77cfc19cf3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 130,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4ad90b6488e9de20a788895ea1c2505c60f61b0b13399a1b2f0326c7fbc48421.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ffdb4cfb41c1a16330b7cee7a4aa14a89839e9e2c04c0decee9b5f939efbb3ef",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4ad90b6488e9de20a788895ea1c2505c60f61b0b13399a1b2f0326c7fbc48421.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dec0c4cb280abec0832574457fbe465d8a65e7b4f1f65447b51f1bcca45dd618`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance full_preadditiveCoyoneda : (preadditiveCoyoneda : Cᵒᵖ ⥤ C ⥤ AddCommGrp).Full :=
  let _ : Functor.Full (preadditiveCoyoneda ⋙
      (whiskeringRight C AddCommGrp (Type v)).obj (forget AddCommGrp)) :=
    Coyoneda.coyoneda_full
  Functor.Full.of_comp_faithful preadditiveCoyoneda
    ((whiskeringRight C AddCommGrp (Type v)).obj (forget AddCommGrp))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4ad90b6488e9de20a788895ea1c2505c60f61b0b13399a1b2f0326c7fbc48421.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4ad90b6488e9de20a788895ea1c2505c60f61b0b13399a1b2f0326c7fbc48421.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64520a8896c12d7b24256eb65906f77cfc19cf3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
