# ack_add_one_sq_lt_ack_add_four

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:093a941d-39fc-d39f-9e34-7a0d888c119a",
  "kind": "theorem",
  "lexical_name": "ack_add_one_sq_lt_ack_add_four",
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
  "slug": "ack-add-one-sq-lt-ack-add-four--093721db373afb2a3f0eca58",
  "source": {
    "blob": "b3c14fd5b4652aef752fd84985d05fb322284ae9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 268,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant8cde9c95d605a70b63014adfa9eb07558c07af4c6e5c78d9deace13079bbc322.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:093721db373afb2a3f0eca58587beea16ae1deaa2f32e7596084f22142476caa",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant8cde9c95d605a70b63014adfa9eb07558c07af4c6e5c78d9deace13079bbc322.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:093a941d-39fc-d39f-9e34-7a0d888c119a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ack_add_one_sq_lt_ack_add_four (m n : ℕ) : ack m ((n + 1) ^ 2) < ack (m + 4) n :=
  calc
    ack m ((n + 1) ^ 2) < ack m ((ack m n + 1) ^ 2) :=
      ack_strictMono_right m <| Nat.pow_lt_pow_left (succ_lt_succ <| lt_ack_right m n) two_ne_zero
    _ ≤ ack m (ack (m + 3) n) := ack_mono_right m <| ack_add_one_sq_lt_ack_add_three m n
    _ ≤ ack (m + 2) (ack (m + 3) n) := ack_mono_left _ <| by omega
    _ = ack (m + 3) (n + 1) := (ack_succ_succ _ n).symm
    _ ≤ ack (m + 4) n := ack_succ_right_le_ack_succ_left _ n

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant8cde9c95d605a70b63014adfa9eb07558c07af4c6e5c78d9deace13079bbc322.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant8cde9c95d605a70b63014adfa9eb07558c07af4c6e5c78d9deace13079bbc322.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3c14fd5b4652aef752fd84985d05fb322284ae9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
