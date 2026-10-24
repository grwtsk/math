# heatVisible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d649b39f375be058a49b5bbde70b73bc1cf60f6c1fa222ec71a2971ed85f5570",
  "kind": "def",
  "lexical_name": "heatVisible",
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
  "slug": "heatvisible--09a9bcaa235f2738013ae5bd",
  "source": {
    "blob": "19836f80637c0886ba7163281bb604e434595dc5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 27,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/HeatResidualControl/Variantbd9be3c847f78b1c2ff1bfec757af2c2d4e493d9bfcebcda7f283989c546d4ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:09a9bcaa235f2738013ae5bdc9e0468038dc1ba45585925e2df0ac0cc4ce7cc3",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/HeatResidualControl/Variantbd9be3c847f78b1c2ff1bfec757af2c2d4e493d9bfcebcda7f283989c546d4ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d649b39f375be058a49b5bbde70b73bc1cf60f6c1fa222ec71a2971ed85f5570`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def heatVisible
    {s : Carrier.GridShape}
    {k : Nat}
    (H : Spectral.GraphHeat s k)
    (t : NNReal)
    (X : Spectral.SpectralTensor s k) :
    Spectral.SpectralTensor s k :=
  H.heat t X

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/HeatResidualControl/Variantbd9be3c847f78b1c2ff1bfec757af2c2d4e493d9bfcebcda7f283989c546d4ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/HeatResidualControl/Variantbd9be3c847f78b1c2ff1bfec757af2c2d4e493d9bfcebcda7f283989c546d4ab.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19836f80637c0886ba7163281bb604e434595dc5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
