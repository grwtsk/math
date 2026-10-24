# next_power_period_count

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5faa2bd1-a7e1-be6a-8fa0-6e9418ad105a",
  "kind": "theorem",
  "lexical_name": "next_power_period_count",
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
  "slug": "next-power-period-count--45d62a011b5118b89174bd87",
  "source": {
    "blob": "1e916e8853ecd803d63096c8fe933390d74b6ab9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 296,
    "line": 291,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant5490172f0caa51971e2e9f78135cd9641664854ae3f565afa6d2920aeb50f492.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45d62a011b5118b89174bd875a806fc49f02a47f761c86d62fc365e28bb078e9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant5490172f0caa51971e2e9f78135cd9641664854ae3f565afa6d2920aeb50f492.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5faa2bd1-a7e1-be6a-8fa0-6e9418ad105a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 291–296.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem next_power_period_count (p k : ℕ) (hp : p.Prime) :
    ((Finset.Ioc 0 (p ^ (k + 1))).filter fun n => p ^ (k + 1) ∣ n).card = 1 := by
  rw [Nat.Ioc_filter_dvd_card_eq_div, Nat.div_self (pow_pos hp.pos _)]

/-- The valuation shell is the difference of nested divisibility cells, so its
coordinates are not treated as independent observations. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant5490172f0caa51971e2e9f78135cd9641664854ae3f565afa6d2920aeb50f492.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant5490172f0caa51971e2e9f78135cd9641664854ae3f565afa6d2920aeb50f492.lean#L291).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e916e8853ecd803d63096c8fe933390d74b6ab9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
