# ack_strict_mono_left'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6d15a870-ec60-9b71-e3ec-a6e42fe5e97d",
  "kind": "theorem",
  "lexical_name": "ack_strict_mono_left'",
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
  "slug": "ack-strict-mono-left--070cfdf940188b943b35099f",
  "source": {
    "blob": "b3c14fd5b4652aef752fd84985d05fb322284ae9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 185,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant8cde9c95d605a70b63014adfa9eb07558c07af4c6e5c78d9deace13079bbc322.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:070cfdf940188b943b35099fe12b89feba5eb8d35a7e1da8efbd8866fe620bf3",
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

Occurrence: `result:6d15a870-ec60-9b71-e3ec-a6e42fe5e97d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem ack_strict_mono_left' : ∀ {m₁ m₂} (n), m₁ < m₂ → ack m₁ n < ack m₂ n
  | m, 0, _ => fun h => (not_lt_zero m h).elim
  | 0, m + 1, 0 => fun _h => by simpa using one_lt_ack_succ_right m 0
  | 0, m + 1, n + 1 => fun h => by
    rw [ack_zero, ack_succ_succ]
    apply lt_of_le_of_lt (le_trans _ <| add_le_add_left (add_add_one_le_ack _ _) m) (add_lt_ack _ _)
    omega
  | m₁ + 1, m₂ + 1, 0 => fun h => by
    simpa using ack_strict_mono_left' 1 ((add_lt_add_iff_right 1).1 h)
  | m₁ + 1, m₂ + 1, n + 1 => fun h => by
    rw [ack_succ_succ, ack_succ_succ]
    exact
      (ack_strict_mono_left' _ <| (add_lt_add_iff_right 1).1 h).trans
        (ack_strictMono_right _ <| ack_strict_mono_left' n h)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant8cde9c95d605a70b63014adfa9eb07558c07af4c6e5c78d9deace13079bbc322.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant8cde9c95d605a70b63014adfa9eb07558c07af4c6e5c78d9deace13079bbc322.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3c14fd5b4652aef752fd84985d05fb322284ae9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
