# lowestEigenvalue_nonvanishing_iff_positive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a7758e67-34f8-8984-e6a7-d8d2e76647a7",
  "kind": "theorem",
  "lexical_name": "lowestEigenvalue_nonvanishing_iff_positive",
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
  "slug": "lowesteigenvalue-nonvanishing-iff-positive--21946c7cfc842ec98e956411",
  "source": {
    "blob": "b517c0daab0a2e9e3631f03ab90a1d1824cb31e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 131,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt01/Variant55d38e81dab36478ebdcdc069a0c92e8dd5c263647d67f7d989692dece84a41a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21946c7cfc842ec98e956411d250bd3e21089b2de22912846d555d15bae0d26b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt01/Variant55d38e81dab36478ebdcdc069a0c92e8dd5c263647d67f7d989692dece84a41a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7758e67-34f8-8984-e6a7-d8d2e76647a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lowestEigenvalue_nonvanishing_iff_positive {λ : ℝ → ℝ}
    (hλ : LowestEigenvalueProfile λ) :
    NonvanishingOnPositive λ ↔ (∀ a : ℝ, 0 < a → 0 < λ a) :=
  (positive_everywhere_iff_nonvanishing hλ.1 hλ.2).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt01/Variant55d38e81dab36478ebdcdc069a0c92e8dd5c263647d67f7d989692dece84a41a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt01/Variant55d38e81dab36478ebdcdc069a0c92e8dd5c263647d67f7d989692dece84a41a.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b517c0daab0a2e9e3631f03ab90a1d1824cb31e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
