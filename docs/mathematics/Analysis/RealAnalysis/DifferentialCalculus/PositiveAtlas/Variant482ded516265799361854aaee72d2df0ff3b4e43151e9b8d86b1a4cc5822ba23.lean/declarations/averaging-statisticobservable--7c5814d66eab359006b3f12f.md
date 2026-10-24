# averaging_statisticObservable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3716cf65-a019-ccb2-0c9e-92750db6a6eb",
  "kind": "theorem",
  "lexical_name": "averaging_statisticObservable",
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
  "slug": "averaging-statisticobservable--7c5814d66eab359006b3f12f",
  "source": {
    "blob": "123a2ff5561a5500a266a67c58563fba1d4b00ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 50,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PositiveAtlas/Variant482ded516265799361854aaee72d2df0ff3b4e43151e9b8d86b1a4cc5822ba23.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c5814d66eab359006b3f12f7bb42ee11a9329311a6add41bc3e01e18e0655a3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/PositiveAtlas/Variant482ded516265799361854aaee72d2df0ff3b4e43151e9b8d86b1a4cc5822ba23.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3716cf65-a019-ccb2-0c9e-92750db6a6eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem averaging_statisticObservable (theta u : E) :
    (F.probabilityFibre theta).averaging (F.statisticObservable u) =
      fun _ _ => F.centroid theta u := by
  funext b i
  change (∑ i, F.probability theta i * F.statistic i u) /
    (F.probabilityFibre theta).mass b = F.centroid theta u
  rw [F.probabilityFibre_mass, div_one, F.centroid_apply]

/-- The centered statistic is the actual residual of the constructed projector. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/PositiveAtlas/Variant482ded516265799361854aaee72d2df0ff3b4e43151e9b8d86b1a4cc5822ba23.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PositiveAtlas/Variant482ded516265799361854aaee72d2df0ff3b4e43151e9b8d86b1a4cc5822ba23.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `123a2ff5561a5500a266a67c58563fba1d4b00ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
