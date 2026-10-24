# ofFromSpecStalk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7ee75a8955ec9a4513ed74b1ed80a85fd4a5939ae3e9480e345b8266e50ec84a",
  "kind": "def",
  "lexical_name": "ofFromSpecStalk",
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
  "slug": "offromspecstalk--fb1a6ed9eb8189fa21f4f666",
  "source": {
    "blob": "83be0fd853851132262d98d7926cfac92f5372f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 182,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/RationalMap/Variant3803bf4ee462e69c2a0e784c6a16e034b518b3b8d36e1c503173c849f9bf4013.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fb1a6ed9eb8189fa21f4f66693d1cb85a472edeab837ba22916eb124223c5a9c",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/RationalMap/Variant3803bf4ee462e69c2a0e784c6a16e034b518b3b8d36e1c503173c849f9bf4013.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7ee75a8955ec9a4513ed74b1ed80a85fd4a5939ae3e9480e345b8266e50ec84a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofFromSpecStalk [IrreducibleSpace X] [LocallyOfFiniteType sY] {x : X} [X.IsGermInjectiveAt x]
    (φ : Spec (X.presheaf.stalk x) ⟶ Y) (h : φ ≫ sY = X.fromSpecStalk x ≫ sX) : X.PartialMap Y where
  hom := (spread_out_of_isGermInjective' sX sY φ h).choose_spec.choose_spec.choose
  domain := (spread_out_of_isGermInjective' sX sY φ h).choose
  dense_domain := (spread_out_of_isGermInjective' sX sY φ h).choose.2.dense
    ⟨_, (spread_out_of_isGermInjective' sX sY φ h).choose_spec.choose⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/RationalMap/Variant3803bf4ee462e69c2a0e784c6a16e034b518b3b8d36e1c503173c849f9bf4013.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/RationalMap/Variant3803bf4ee462e69c2a0e784c6a16e034b518b3b8d36e1c503173c849f9bf4013.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83be0fd853851132262d98d7926cfac92f5372f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
