# regularEpiOfKernelPair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2706519174f5911bf810024235ee8963b64430bfcba3f37c27065e325e0bbef1",
  "kind": "def",
  "lexical_name": "regularEpiOfKernelPair",
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
  "slug": "regularepiofkernelpair--1c6007c7b1668d598e6c136c",
  "source": {
    "blob": "9e4d98c3dab5717f332d59d7011620ea31bf74d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 460,
    "line": 453,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variantf894db9540befbb8c0d8485205bf196951a24e510b3dd4b190d82fb60237fdc5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1c6007c7b1668d598e6c136caffdc9ba2e17aefa8b4d3dd819d5c3e320301fdb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variantf894db9540befbb8c0d8485205bf196951a24e510b3dd4b190d82fb60237fdc5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2706519174f5911bf810024235ee8963b64430bfcba3f37c27065e325e0bbef1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 453–460.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def regularEpiOfKernelPair {B X : C} (f : X ⟶ B) [HasPullback f f]
    (hc : IsColimit (Cofork.ofπ f pullback.condition)) : RegularEpi f where
  W := pullback f f
  left := pullback.fst f f
  right := pullback.snd f f
  w := pullback.condition
  isColimit := hc

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variantf894db9540befbb8c0d8485205bf196951a24e510b3dd4b190d82fb60237fdc5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variantf894db9540befbb8c0d8485205bf196951a24e510b3dd4b190d82fb60237fdc5.lean#L453).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e4d98c3dab5717f332d59d7011620ea31bf74d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
