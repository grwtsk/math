# forIn'_loop_eq_forIn'_range'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5f35b7ae-28f5-32d3-ddb4-4d32712b7c36",
  "kind": "theorem",
  "lexical_name": "forIn'_loop_eq_forIn'_range'",
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
  "slug": "forin-loop-eq-forin-range--05da426ae9c7b7543b969be0",
  "source": {
    "blob": "e56f31265f6f33f759b94073b8b0e8c585e44318",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 70,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantc63439c1306d246ede417f80c0763658375e968d1c46536252db8fa14b25414a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:05da426ae9c7b7543b969be08d7b021b03dd352b1eed85c616b1a6d5a6c7f5a7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantc63439c1306d246ede417f80c0763658375e968d1c46536252db8fa14b25414a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f35b7ae-28f5-32d3-ddb4-4d32712b7c36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem forIn'_loop_eq_forIn'_range' [Monad m] (r : Range)
    (init : β) (f : (a : Nat) → a ∈ r → β → m (ForInStep β)) (i) (w₁) (w₂) :
    forIn'.loop r f init i w₁ w₂ =
      forIn' (List.range' i ((r.stop - i + r.step - 1) / r.step) r.step) init
        fun a h => f a (mem_of_mem_range'_aux w₁ w₂ h) := by
  have w := r.step_pos
  rw [forIn'.loop]
  split <;> rename_i h
  · simp only [size_eq r h, List.range'_succ, List.forIn'_cons]
    congr 1
    funext step
    split
    · simp
    · rw [forIn'_loop_eq_forIn'_range']
  · have : (r.stop - i + r.step - 1) / r.step = 0 := by
      rw [Nat.div_eq_iff] <;> omega
    simp [this]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantc63439c1306d246ede417f80c0763658375e968d1c46536252db8fa14b25414a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantc63439c1306d246ede417f80c0763658375e968d1c46536252db8fa14b25414a.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e56f31265f6f33f759b94073b8b0e8c585e44318` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
