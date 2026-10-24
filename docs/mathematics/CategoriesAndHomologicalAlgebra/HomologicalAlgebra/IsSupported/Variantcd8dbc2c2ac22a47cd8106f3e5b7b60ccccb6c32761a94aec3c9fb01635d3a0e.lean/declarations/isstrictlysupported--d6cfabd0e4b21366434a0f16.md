# IsStrictlySupported

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:48c96ee791d4153187c6349e47c71324e64bab43f8367d995aeee2f35463b140",
  "kind": "class",
  "lexical_name": "IsStrictlySupported",
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
  "slug": "isstrictlysupported--d6cfabd0e4b21366434a0f16",
  "source": {
    "blob": "7554c07f7e1d04039458b5455c116af3ac280207",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 48,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/IsSupported/Variantcd8dbc2c2ac22a47cd8106f3e5b7b60ccccb6c32761a94aec3c9fb01635d3a0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d6cfabd0e4b21366434a0f16b8f3db585a633075f8545daa4fe70c3d5a9cf199",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/IsSupported/Variantcd8dbc2c2ac22a47cd8106f3e5b7b60ccccb6c32761a94aec3c9fb01635d3a0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:48c96ee791d4153187c6349e47c71324e64bab43f8367d995aeee2f35463b140`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class IsStrictlySupported : Prop where
  isZero (i' : ι') (hi' : ∀ i, e.f i ≠ i') : IsZero (K.X i')

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/IsSupported/Variantcd8dbc2c2ac22a47cd8106f3e5b7b60ccccb6c32761a94aec3c9fb01635d3a0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/IsSupported/Variantcd8dbc2c2ac22a47cd8106f3e5b7b60ccccb6c32761a94aec3c9fb01635d3a0e.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7554c07f7e1d04039458b5455c116af3ac280207` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
