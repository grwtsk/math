# native_width_power_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7ffa440d-e199-f731-5ac9-b9b060ad5d6a",
  "kind": "theorem",
  "lexical_name": "native_width_power_bound",
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
  "slug": "native-width-power-bound--480aab1f2369171636e9bb28",
  "source": {
    "blob": "9ea087f3fa738fde8cdd1d6f02da1ce56d908400",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 92,
    "path": "GRWTSK/Analysis/DyadicEnergyBudget/Variant3904f0dec13414f3f6f3d1e9ada3283aac8420dad00c5fe5da9c53a7d07690b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:480aab1f2369171636e9bb28658c448e9d749e94c71471ec027d88cfcb2d0fca",
  "verification": {
    "reference": "docs/verification/Analysis/DyadicEnergyBudget/Variant3904f0dec13414f3f6f3d1e9ada3283aac8420dad00c5fe5da9c53a7d07690b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ffa440d-e199-f731-5ac9-b9b060ad5d6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem native_width_power_bound (N K : ℕ) :
    width N K ≤ 2 * (N : ℝ) ^ (-(1 / 2 : ℝ)) := by
  rw [Real.rpow_neg (Nat.cast_nonneg N), ← Real.sqrt_eq_rpow, inv_eq_one_div]
  unfold width cellClock
  have hi : 0 ≤ (1 : ℝ) / Real.sqrt (N + K : ℕ) := by positivity
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/DyadicEnergyBudget/Variant3904f0dec13414f3f6f3d1e9ada3283aac8420dad00c5fe5da9c53a7d07690b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/DyadicEnergyBudget/Variant3904f0dec13414f3f6f3d1e9ada3283aac8420dad00c5fe5da9c53a7d07690b8.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ea087f3fa738fde8cdd1d6f02da1ce56d908400` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
