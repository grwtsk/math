# count_bagInter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:33ec605a-c345-e6a4-c847-6b3592b7fe94",
  "kind": "theorem",
  "lexical_name": "count_bagInter",
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
  "slug": "count-baginter--c4aa0ac9ea685f227c0fdc84",
  "source": {
    "blob": "fad414f9c55cb8501f46470fa26dd5a6af830a78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 205,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant5e6a68dac9470e1f869949d7f2325025a055b7eddc950e8973ff4dfe4a7dc968.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4aa0ac9ea685f227c0fdc847796c23df71915258db9480e42f25c8dadf89062",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant5e6a68dac9470e1f869949d7f2325025a055b7eddc950e8973ff4dfe4a7dc968.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:33ec605a-c345-e6a4-c847-6b3592b7fe94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem count_bagInter {a : α} :
    ∀ {l₁ l₂ : List α}, count a (l₁.bagInter l₂) = min (count a l₁) (count a l₂)
  | [], l₂ => by simp
  | l₁, [] => by simp
  | b :: l₁, l₂ => by
    by_cases hb : b ∈ l₂
    · rw [cons_bagInter_of_pos _ hb, count_cons, count_cons, count_bagInter, count_erase,
        ← Nat.add_min_add_right]
      by_cases ba : b = a
      · simp only [beq_iff_eq]
        rw [if_pos ba, Nat.sub_add_cancel]
        rwa [succ_le_iff, count_pos_iff, ← ba]
      · simp only [beq_iff_eq]
        rw [if_neg ba, Nat.sub_zero, Nat.add_zero, Nat.add_zero]
    · rw [cons_bagInter_of_neg _ hb, count_bagInter]
      by_cases ab : a = b
      · rw [← ab] at hb
        rw [count_eq_zero.2 hb, Nat.min_zero, Nat.min_zero]
      · rw [count_cons_of_ne (Ne.symm ab)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant5e6a68dac9470e1f869949d7f2325025a055b7eddc950e8973ff4dfe4a7dc968.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant5e6a68dac9470e1f869949d7f2325025a055b7eddc950e8973ff4dfe4a7dc968.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fad414f9c55cb8501f46470fa26dd5a6af830a78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
