# le_div_iff_mul_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4b02db27-03bf-a3a5-def2-a31b8372ced5",
  "kind": "theorem",
  "lexical_name": "le_div_iff_mul_le",
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
  "slug": "le-div-iff-mul-le--6cdf81e2e734b766fa16c07a",
  "source": {
    "blob": "9b627df79663c17b4e2cb61f5576c2157eca3e8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 836,
    "line": 826,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant47b6d95cfc0e419dba998a092448fc1c75eec47b38a1d972263cc61501f80b58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6cdf81e2e734b766fa16c07ad9ea9b1c0a8233fed6c67073f37ed28a6ce9d5e6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant47b6d95cfc0e419dba998a092448fc1c75eec47b38a1d972263cc61501f80b58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b02db27-03bf-a3a5-def2-a31b8372ced5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 826–836.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_div_iff_mul_le (k0 : 0 < k) : x ≤ y / k ↔ x * k ≤ y := by
  induction y, k using mod.inductionOn generalizing x with
    (rw [div_eq]; simp [h]; cases x with | zero => simp [zero_le] | succ x => ?_)
  | base y k h =>
    simp [not_succ_le_zero x, succ_mul, Nat.add_comm]
    refine Nat.lt_of_lt_of_le ?_ (Nat.le_add_right ..)
    exact Nat.not_le.1 fun h' => h ⟨k0, h'⟩
  | ind y k h IH =>
    rw [← add_one, Nat.add_le_add_iff_right, IH k0, succ_mul,
        ← Nat.add_sub_cancel (x*k) k, Nat.sub_le_sub_iff_right h.2, Nat.add_sub_cancel]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant47b6d95cfc0e419dba998a092448fc1c75eec47b38a1d972263cc61501f80b58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant47b6d95cfc0e419dba998a092448fc1c75eec47b38a1d972263cc61501f80b58.lean#L826).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b627df79663c17b4e2cb61f5576c2157eca3e8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
