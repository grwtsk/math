# uliftYonedaIsoYoneda

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e7b672a3c40fbda076047f5cbcecb803499802348e1ecfa3060c98cb933892da",
  "kind": "def",
  "lexical_name": "uliftYonedaIsoYoneda",
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
  "slug": "uliftyonedaisoyoneda--58cbf912c89c5e4d54ad231e",
  "source": {
    "blob": "663f36dbdbffd4791c14e6eb9ffc4670910dc164",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 181,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant1310f535b471031ae81fbc58ec683a94b5b0e20172b829752a9e26dd0326d513.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:58cbf912c89c5e4d54ad231e65fc1e4131198c3bb047761ce79b3ab303a5f390",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant1310f535b471031ae81fbc58ec683a94b5b0e20172b829752a9e26dd0326d513.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e7b672a3c40fbda076047f5cbcecb803499802348e1ecfa3060c98cb933892da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def uliftYonedaIsoYoneda {C : Type u} [Category.{max w v} C] (J : GrothendieckTopology C)
    [J.Subcanonical] :
    GrothendieckTopology.uliftYoneda.{w} J ≅ J.yoneda :=
  dsimp% NatIso.ofComponents (fun _ => (fullyFaithfulSheafToPresheaf J _).preimageIso
    (NatIso.ofComponents (fun _ ↦ Equiv.ulift.toIso)))

variable [Subcanonical J]

/--
The yoneda embedding into the presheaf category factors through the one
to the sheaf category.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant1310f535b471031ae81fbc58ec683a94b5b0e20172b829752a9e26dd0326d513.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant1310f535b471031ae81fbc58ec683a94b5b0e20172b829752a9e26dd0326d513.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `663f36dbdbffd4791c14e6eb9ffc4670910dc164` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
