# ack_ack_lt_ack_max_add_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:44224298-7161-122d-6635-7cad35d87b03",
  "kind": "theorem",
  "lexical_name": "ack_ack_lt_ack_max_add_two",
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
  "slug": "ack-ack-lt-ack-max-add-two--91573107ef3192e38d7bff1a",
  "source": {
    "blob": "2a8c91e09409d9db4f15b4f40b15464d165f702c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 303,
    "line": 295,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant0f8618d5fd625c5abeda460410f6410fb3cc77feafe3313b39dde5aeaf697b1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:91573107ef3192e38d7bff1a69bb73673e13ef55aff91ffff18f92b326b292e3",
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

Occurrence: `result:44224298-7161-122d-6635-7cad35d87b03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–303.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ack_ack_lt_ack_max_add_two (m n k : ℕ) : ack m (ack n k) < ack (max m n + 2) k :=
  calc
    ack m (ack n k) ≤ ack (max m n) (ack n k) := ack_mono_left _ (le_max_left _ _)
    _ < ack (max m n) (ack (max m n + 1) k) :=
      ack_strictMono_right _ <| ack_strictMono_left k <| lt_succ_of_le <| le_max_right m n
    _ = ack (max m n + 1) (k + 1) := (ack_succ_succ _ _).symm
    _ ≤ ack (max m n + 2) k := ack_succ_right_le_ack_succ_left _ _
#align ack_ack_lt_ack_max_add_two ack_ack_lt_ack_max_add_two

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant0f8618d5fd625c5abeda460410f6410fb3cc77feafe3313b39dde5aeaf697b1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant0f8618d5fd625c5abeda460410f6410fb3cc77feafe3313b39dde5aeaf697b1b.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a8c91e09409d9db4f15b4f40b15464d165f702c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
