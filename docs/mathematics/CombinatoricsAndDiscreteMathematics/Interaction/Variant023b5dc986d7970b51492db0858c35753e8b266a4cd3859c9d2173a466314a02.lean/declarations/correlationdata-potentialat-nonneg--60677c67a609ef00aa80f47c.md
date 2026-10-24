# CorrelationData.potentialAt_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:73ce9979-e7b7-86b7-edb3-6612c7cf4375",
  "kind": "theorem",
  "lexical_name": "CorrelationData.potentialAt_nonneg",
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
  "slug": "correlationdata-potentialat-nonneg--60677c67a609ef00aa80f47c",
  "source": {
    "blob": "094f2efd54e537b8f2d8bcd239fb0723fb68c688",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 325,
    "line": 316,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Interaction/Variant023b5dc986d7970b51492db0858c35753e8b266a4cd3859c9d2173a466314a02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60677c67a609ef00aa80f47cb8408900a42026da6e54726e2aaee455b885a2ff",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Interaction/Variant023b5dc986d7970b51492db0858c35753e8b266a4cd3859c9d2173a466314a02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73ce9979-e7b7-86b7-edb3-6612c7cf4375`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 316–325.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem CorrelationData.potentialAt_nonneg {N : ℕ}
    (data : CorrelationData N) (x : ℕ) :
    0 ≤ data.potentialAt x := by
  unfold CorrelationData.potentialAt
  exact add_nonneg
    (correlationEnergyAt_nonneg data.realization data.activeAtoms x)
    (data.residualBudget_nonneg x)

/-- Largest finite correlation potential through moment `2 * N`. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Interaction/Variant023b5dc986d7970b51492db0858c35753e8b266a4cd3859c9d2173a466314a02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Interaction/Variant023b5dc986d7970b51492db0858c35753e8b266a4cd3859c9d2173a466314a02.lean#L316).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `094f2efd54e537b8f2d8bcd239fb0723fb68c688` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
