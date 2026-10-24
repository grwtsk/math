# CompleteConductorThreeSpatialRoute.ofCodec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4f716b378e150bdd9967b73b149bbd0cd59b166a50156590c3d6bfd5611e9c2a",
  "kind": "def",
  "lexical_name": "CompleteConductorThreeSpatialRoute.ofCodec",
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
  "slug": "completeconductorthreespatialroute-ofcodec--f1a1f36ffdfceacc66a3c80e",
  "source": {
    "blob": "a47e19ca32e5c29896e2a6e4aa91ba4424e10dae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 211,
    "path": "GRWTSK/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant31e65693b8dcc0eb5f5ce5c93a29ac9dd0a24e8a65611421c844b03f8140b6a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f1a1f36ffdfceacc66a3c80ec1fba673fae83cc2936fcda6b12635a8f97ee72e",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant31e65693b8dcc0eb5f5ce5c93a29ac9dd0a24e8a65611421c844b03f8140b6a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4f716b378e150bdd9967b73b149bbd0cd59b166a50156590c3d6bfd5611e9c2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def CompleteConductorThreeSpatialRoute.ofCodec
    (counts : ResidueSixCounts) (codec : UniformLosslessSpatialCodec) :
    CompleteConductorThreeSpatialRoute counts where
  codec := codec
  scale := fun K =>
    { tubeScale := 1
      tubeScale_pos := by norm_num
      state := codec.encoder K (indexedMatrixAmplitude counts K)
      state_eq := rfl }

/-- Inhabited actual-prime lossless route.  This is the functional-analytic
Milestone-1 route; it does not yet carry a cone/paraboloid packet frame. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant31e65693b8dcc0eb5f5ce5c93a29ac9dd0a24e8a65611421c844b03f8140b6a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant31e65693b8dcc0eb5f5ce5c93a29ac9dd0a24e8a65611421c844b03f8140b6a4.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a47e19ca32e5c29896e2a6e4aa91ba4424e10dae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
