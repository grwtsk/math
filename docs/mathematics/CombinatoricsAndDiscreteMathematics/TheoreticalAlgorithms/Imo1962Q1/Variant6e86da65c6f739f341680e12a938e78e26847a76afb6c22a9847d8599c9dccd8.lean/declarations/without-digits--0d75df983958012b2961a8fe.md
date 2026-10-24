# without_digits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ee3efbf6-80b4-38e0-68c1-112e99122a37",
  "kind": "theorem",
  "lexical_name": "without_digits",
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
  "slug": "without-digits--0d75df983958012b2961a8fe",
  "source": {
    "blob": "5e86f8b3bd6245bbecbb093480e58cc255850b8f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 51,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant6e86da65c6f739f341680e12a938e78e26847a76afb6c22a9847d8599c9dccd8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d75df983958012b2961a8fe2262573a933419ae0fc8657519c9673e867127d3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant6e86da65c6f739f341680e12a938e78e26847a76afb6c22a9847d8599c9dccd8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee3efbf6-80b4-38e0-68c1-112e99122a37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem without_digits {n : ℕ} (h1 : ProblemPredicate n) : ∃ c : ℕ, ProblemPredicate' c n := by
  use n / 10
  cases' n with n
  · have h2 : ¬ProblemPredicate 0 := by norm_num [ProblemPredicate]
    contradiction
  · rw [ProblemPredicate, digits_def' (by decide : 2 ≤ 10) n.succ_pos, List.headI, List.tail_cons,
      List.concat_eq_append] at h1
    constructor
    · rw [← h1.left, div_add_mod (n + 1) 10]
    · rw [← h1.right, ofDigits_append, ofDigits_digits, ofDigits_singleton, add_comm, mul_comm]
#align imo1962_q1.without_digits Imo1962Q1.without_digits

/-!
Now we can eliminate possibilities for `(digits 10 c).length` until we get to the one that works.
-/


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant6e86da65c6f739f341680e12a938e78e26847a76afb6c22a9847d8599c9dccd8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant6e86da65c6f739f341680e12a938e78e26847a76afb6c22a9847d8599c9dccd8.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e86f8b3bd6245bbecbb093480e58cc255850b8f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
