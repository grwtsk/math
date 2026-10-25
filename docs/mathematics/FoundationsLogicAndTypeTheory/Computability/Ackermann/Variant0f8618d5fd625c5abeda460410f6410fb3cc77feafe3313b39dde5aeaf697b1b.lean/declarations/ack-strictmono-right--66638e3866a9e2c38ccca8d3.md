# ack_strictMono_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d8d757a1-35e7-a5e8-ceaa-cffd22469bcf",
  "kind": "theorem",
  "lexical_name": "ack_strictMono_right",
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
  "slug": "ack-strictmono-right--66638e3866a9e2c38ccca8d3",
  "source": {
    "blob": "2a8c91e09409d9db4f15b4f40b15464d165f702c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 143,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant0f8618d5fd625c5abeda460410f6410fb3cc77feafe3313b39dde5aeaf697b1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:66638e3866a9e2c38ccca8d3b4522bd10466326b2284908d489bf642a964a9fb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant0f8618d5fd625c5abeda460410f6410fb3cc77feafe3313b39dde5aeaf697b1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8d757a1-35e7-a5e8-ceaa-cffd22469bcf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ack_strictMono_right : ∀ m, StrictMono (ack m)
  | 0, n₁, n₂, h => by simpa using h
  | m + 1, 0, n + 1, _h => by
    rw [ack_succ_zero, ack_succ_succ]
    exact ack_strictMono_right _ (one_lt_ack_succ_left m n)
  | m + 1, n₁ + 1, n₂ + 1, h => by
    rw [ack_succ_succ, ack_succ_succ]
    apply ack_strictMono_right _ (ack_strictMono_right _ _)
    rwa [add_lt_add_iff_right] at h
  termination_by ack_strictMono_right m x y h => (m, x)
#align ack_strict_mono_right ack_strictMono_right

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant0f8618d5fd625c5abeda460410f6410fb3cc77feafe3313b39dde5aeaf697b1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant0f8618d5fd625c5abeda460410f6410fb3cc77feafe3313b39dde5aeaf697b1b.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a8c91e09409d9db4f15b4f40b15464d165f702c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
