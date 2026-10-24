# arcOrientation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8173e4b9c0bfefe09e99f076b361f89ee22ed358fec5553b0c884eff4aa9f2b0",
  "kind": "def",
  "lexical_name": "arcOrientation",
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
  "slug": "arcorientation--d4cd59e8bdc56c8792bd2c83",
  "source": {
    "blob": "e4fc770a333ad154f8c99770ac51781577ea540c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 95,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EuclideanPlaneSubsumption/Variantcd2eb0d9e4806a02dbec0bdcfff4c9a351a1710268d860b37f14d34ccf6ae5d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d4cd59e8bdc56c8792bd2c8301615a613147d214f1fad0e3c7a520ffd7b5dc6d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EuclideanPlaneSubsumption/Variantcd2eb0d9e4806a02dbec0bdcfff4c9a351a1710268d860b37f14d34ccf6ae5d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8173e4b9c0bfefe09e99f076b361f89ee22ed358fec5553b0c884eff4aa9f2b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def arcOrientation := link 6 "ArcOrientation" (by decide) .inductive
  { value := "a533729a78c0fa5cc2558a52024e2c771a5dda68d9821462b618446f6fae4ef7" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Geometry.ArcOrientation" (by decide)
  .carrierReconstruction
  "Represent directed circular orientation independently of display coordinates."

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EuclideanPlaneSubsumption/Variantcd2eb0d9e4806a02dbec0bdcfff4c9a351a1710268d860b37f14d34ccf6ae5d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EuclideanPlaneSubsumption/Variantcd2eb0d9e4806a02dbec0bdcfff4c9a351a1710268d860b37f14d34ccf6ae5d2.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4fc770a333ad154f8c99770ac51781577ea540c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
