# weightedMertensEndpointFourDistinctCorrelation_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:96b05e48-caa4-1301-2999-5fb1ae286001",
  "kind": "theorem",
  "lexical_name": "weightedMertensEndpointFourDistinctCorrelation_one",
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
  "slug": "weightedmertensendpointfourdistinctcorrelation-one--9b2e1bdea595e0d9131f251b",
  "source": {
    "blob": "405364f32af7a8cc02408418276e88e6998168ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 160,
    "path": "GRWTSK/NumberTheory/Moebius/EndpointFibreDiagonalCancellationWitness.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b2e1bdea595e0d9131f251be9686d5281fa6258f60ffc17a1c6c38fe7d2e2b7",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/EndpointFibreDiagonalCancellationWitness.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96b05e48-caa4-1301-2999-5fb1ae286001`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedMertensEndpointFourDistinctCorrelation_one :
    weightedMertensEndpointFourDistinctCorrelation 1 = 0 := by
  norm_num [Finset.sum_Ico_eq_sum_range, Finset.sum_range_succ, weightedMertensEndpointFourDistinctCorrelation,
    mertensEndpointFibreFourDistinctCorrelation_two,
    mertensEndpointFibreFourDistinctCorrelation_three]

/-- The complete reciprocal endpoint-weighted energy is exactly one at scale
one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/EndpointFibreDiagonalCancellationWitness.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/EndpointFibreDiagonalCancellationWitness.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `405364f32af7a8cc02408418276e88e6998168ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
