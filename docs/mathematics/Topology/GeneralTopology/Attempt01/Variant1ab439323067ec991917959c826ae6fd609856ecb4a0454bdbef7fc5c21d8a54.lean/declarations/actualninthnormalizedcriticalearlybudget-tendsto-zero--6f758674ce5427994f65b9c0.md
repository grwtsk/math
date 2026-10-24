# actualNinthNormalizedCriticalEarlyBudget_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:786fb9de-29b9-b383-c1ea-1968b53e4c0f",
  "kind": "theorem",
  "lexical_name": "actualNinthNormalizedCriticalEarlyBudget_tendsto_zero",
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
  "slug": "actualninthnormalizedcriticalearlybudget-tendsto-zero--6f758674ce5427994f65b9c0",
  "source": {
    "blob": "824c158caab73b8086a42954d41ec9e4fa16abe8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 213,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt01/Variant1ab439323067ec991917959c826ae6fd609856ecb4a0454bdbef7fc5c21d8a54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f758674ce5427994f65b9c0810d603b43f1dd1ac0815ddb30859c3b12955052",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt01/Variant1ab439323067ec991917959c826ae6fd609856ecb4a0454bdbef7fc5c21d8a54.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:786fb9de-29b9-b383-c1ea-1968b53e4c0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualNinthNormalizedCriticalEarlyBudget_tendsto_zero (T : ℝ) :
    Tendsto (actualNinthNormalizedCriticalEarlyBudget T) atTop (𝓝 0) := by
  have hh := ((power_exp_tendsto_zero 9).const_mul |actualEarlyCriticalErrorCenter T|).add
    ((power_exp_tendsto_zero 7).const_mul
      (2 * B * Real.exp (T / 2) * (5 / 8 * T ^ 2 + 5 / 2 * T)))
  unfold actualNinthNormalizedCriticalEarlyBudget
  simpa only [mul_zero, add_zero] using hh

/-- The exact early/late split keeps a fixed amplitude and its normalized edge cost explicit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt01/Variant1ab439323067ec991917959c826ae6fd609856ecb4a0454bdbef7fc5c21d8a54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt01/Variant1ab439323067ec991917959c826ae6fd609856ecb4a0454bdbef7fc5c21d8a54.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `824c158caab73b8086a42954d41ec9e4fa16abe8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
