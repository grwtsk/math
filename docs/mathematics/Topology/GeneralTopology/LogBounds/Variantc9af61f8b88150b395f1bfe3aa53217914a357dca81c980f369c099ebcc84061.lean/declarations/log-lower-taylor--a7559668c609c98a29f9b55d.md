# log_lower_taylor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fc59dbf7f90a4d6c695870594f016290bb019366",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 38,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c9/c9af61f8b88150b395f1bfe3aa53217914a357dca81c980f369c099ebcc84061.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:90b3f237-45e0-8fcd-628a-39a5f7c5c195",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f295ef14-4514-0062-c02b-c6642b810648",
  "kind": "theorem",
  "lexical_name": "log_lower_taylor",
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
  "slug": "log-lower-taylor--a7559668c609c98a29f9b55d",
  "source": {
    "blob": "fc59dbf7f90a4d6c695870594f016290bb019366",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 38,
    "path": "GRWTSK/Topology/GeneralTopology/LogBounds/Variantc9af61f8b88150b395f1bfe3aa53217914a357dca81c980f369c099ebcc84061.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a7559668c609c98a29f9b55db39a7123d0aeb7c9a941a9175b48b27ea3bfa6d5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LogBounds/Variantc9af61f8b88150b395f1bfe3aa53217914a357dca81c980f369c099ebcc84061.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f295ef14-4514-0062-c02b-c6642b810648`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_lower_taylor (t : ℝ) (ht : 0 ≤ t) : t - t^2 / 2 ≤ log (1 + t) := by
  have h1pt_pos : 0 < 1 + t := by linarith
  have h_chain : t - t^2 / 2 ≤ 2 * t / (t + 2) := by
    by_cases ht0 : t = 0
    · simp [ht0]
    · have ht_pos : 0 < t := ht.lt_of_ne' ht0
      have ht2_pos : 0 < t + 2 := by linarith
      rw [le_div_iff₀ ht2_pos]
      have h1 : (t - t^2 / 2) * (t + 2) = 2*t - t^3/2 := by ring
      rw [h1]
      have h2 : t^3 / 2 ≥ 0 := by positivity
      linarith
  calc t - t^2 / 2 ≤ 2 * t / (t + 2) := h_chain
    _ ≤ log (1 + t) := le_log_one_add_of_nonneg ht

/-! ## Concavity bound for log(1-t) -/

/-- For 0 ≤ t ≤ t₀ < 1, we have (t/t₀) * log(1-t₀) ≤ log(1-t).
    This follows from concavity of log on (0, ∞). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LogBounds/Variantc9af61f8b88150b395f1bfe3aa53217914a357dca81c980f369c099ebcc84061.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LogBounds/Variantc9af61f8b88150b395f1bfe3aa53217914a357dca81c980f369c099ebcc84061.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc59dbf7f90a4d6c695870594f016290bb019366` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
