# exists_ideal_ge_liesOver_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ba6d3048c4e8007f84ee08b1958155419e4ed2e2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 46,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/82/826d4b5dca9b68229bc2718789edb767ea4b402b3980155ceaba9ce4d06f0130.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:61b890ae-6ec3-2863-9ac2-f7595e6c8cdd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fc4ea670-9759-d7a9-3502-83588ff7335e",
  "kind": "lemma",
  "lexical_name": "exists_ideal_ge_liesOver_of_le",
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
  "slug": "exists-ideal-ge-liesover-of-le--451dfc253fc7e85184c1d6e1",
  "source": {
    "blob": "ba6d3048c4e8007f84ee08b1958155419e4ed2e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 46,
    "path": "GRWTSK/Algebra/HasGoingUp/Variant826d4b5dca9b68229bc2718789edb767ea4b402b3980155ceaba9ce4d06f0130.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:451dfc253fc7e85184c1d6e19382ff2f537b4c1f6ea38f7be0c31cdfcb4260e7",
  "verification": {
    "reference": "docs/verification/Algebra/HasGoingUp/Variant826d4b5dca9b68229bc2718789edb767ea4b402b3980155ceaba9ce4d06f0130.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc4ea670-9759-d7a9-3502-83588ff7335e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_ideal_ge_liesOver_of_le [Algebra.HasGoingUp R S]
    {p q : Ideal R} [q.IsPrime] (P : Ideal S) [P.IsPrime] [P.LiesOver p]
    (hle : p ≤ q) :
    ∃ Q, P ≤ Q ∧ Q.IsPrime ∧ Q.LiesOver q := by
  rcases eq_or_ne p q with rfl | h
  · use P
  · rw [P.over_def p] at hle h
    exact Algebra.HasGoingUp.exists_ideal_ge_liesOver_of_lt P (lt_of_le_of_ne hle h)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/HasGoingUp/Variant826d4b5dca9b68229bc2718789edb767ea4b402b3980155ceaba9ce4d06f0130.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/HasGoingUp/Variant826d4b5dca9b68229bc2718789edb767ea4b402b3980155ceaba9ce4d06f0130.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba6d3048c4e8007f84ee08b1958155419e4ed2e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
