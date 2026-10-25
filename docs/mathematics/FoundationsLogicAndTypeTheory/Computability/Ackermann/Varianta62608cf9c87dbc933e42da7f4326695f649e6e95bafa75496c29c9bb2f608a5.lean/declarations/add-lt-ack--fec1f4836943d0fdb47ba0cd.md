# add_lt_ack

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0591278f143cf3bb909e263a515a3dd52fa92aff",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 155,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a6/a62608cf9c87dbc933e42da7f4326695f649e6e95bafa75496c29c9bb2f608a5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d74db208-058a-6978-5044-7ea91d779b65",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:661f6e71-9848-5e95-08e5-16b118c21ebf",
  "kind": "theorem",
  "lexical_name": "add_lt_ack",
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
  "slug": "add-lt-ack--fec1f4836943d0fdb47ba0cd",
  "source": {
    "blob": "0591278f143cf3bb909e263a515a3dd52fa92aff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 155,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/Ackermann/Varianta62608cf9c87dbc933e42da7f4326695f649e6e95bafa75496c29c9bb2f608a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fec1f4836943d0fdb47ba0cdf01a09cf1d49c5007e0e430bf5365d1aa58af832",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/Ackermann/Varianta62608cf9c87dbc933e42da7f4326695f649e6e95bafa75496c29c9bb2f608a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:661f6e71-9848-5e95-08e5-16b118c21ebf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem add_lt_ack : ∀ m n, m + n < ack m n
  | 0, n => by simp
  | m + 1, 0 => by simpa using add_lt_ack m 1
  | m + 1, n + 1 =>
    calc
      m + 1 + n + 1 ≤ m + (m + n + 2) := by omega
      _ < ack m (m + n + 2) := add_lt_ack _ _
      _ ≤ ack m (ack (m + 1) n) :=
        ack_mono_right m <| le_of_eq_of_le (by rw [succ_eq_add_one]; ring_nf)
        <| succ_le_of_lt <| add_lt_ack (m + 1) n
      _ = ack (m + 1) (n + 1) := (ack_succ_succ m n).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/Ackermann/Varianta62608cf9c87dbc933e42da7f4326695f649e6e95bafa75496c29c9bb2f608a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/Ackermann/Varianta62608cf9c87dbc933e42da7f4326695f649e6e95bafa75496c29c9bb2f608a5.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0591278f143cf3bb909e263a515a3dd52fa92aff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
