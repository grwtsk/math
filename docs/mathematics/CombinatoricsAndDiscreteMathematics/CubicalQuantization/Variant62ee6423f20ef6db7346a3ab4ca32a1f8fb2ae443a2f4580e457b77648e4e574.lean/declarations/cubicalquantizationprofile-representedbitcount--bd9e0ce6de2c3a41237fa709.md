# CubicalQuantizationProfile.representedBitCount

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7e208f1214af08f70e869852f735629189f441dcf5f68b4e498af6866dd642aa",
  "kind": "def",
  "lexical_name": "CubicalQuantizationProfile.representedBitCount",
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
  "slug": "cubicalquantizationprofile-representedbitcount--bd9e0ce6de2c3a41237fa709",
  "source": {
    "blob": "4afece44ab7f009fc4cffc5626cd357dddf94ab0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 449,
    "line": 437,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CubicalQuantization/Variant62ee6423f20ef6db7346a3ab4ca32a1f8fb2ae443a2f4580e457b77648e4e574.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bd9e0ce6de2c3a41237fa7099179edb38ef30dbfd17817a4dd4dde8f5a25e757",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CubicalQuantization/Variant62ee6423f20ef6db7346a3ab4ca32a1f8fb2ae443a2f4580e457b77648e4e574.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7e208f1214af08f70e869852f735629189f441dcf5f68b4e498af6866dd642aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 437–449.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def CubicalQuantizationProfile.representedBitCount
    {decomposition : FiniteCubicalDecomposition}
    (profile : CubicalQuantizationProfile decomposition) : Nat :=
  ∑ k : Fin (profile.maximumEmittedDegree + 1),
    ∑ cell : decomposition.Cell k.val,
      (profile.cellResolution k cell).value *
        profile.cellRows k cell * profile.cellColumns k cell

/--
The nonuniform higher-order field has precisely `2` raised to the sum of the
cellwise bit counts.  This is the requested nonuniform cardinality formula,
not a uniform-profile approximation.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CubicalQuantization/Variant62ee6423f20ef6db7346a3ab4ca32a1f8fb2ae443a2f4580e457b77648e4e574.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CubicalQuantization/Variant62ee6423f20ef6db7346a3ab4ca32a1f8fb2ae443a2f4580e457b77648e4e574.lean#L437).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4afece44ab7f009fc4cffc5626cd357dddf94ab0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
