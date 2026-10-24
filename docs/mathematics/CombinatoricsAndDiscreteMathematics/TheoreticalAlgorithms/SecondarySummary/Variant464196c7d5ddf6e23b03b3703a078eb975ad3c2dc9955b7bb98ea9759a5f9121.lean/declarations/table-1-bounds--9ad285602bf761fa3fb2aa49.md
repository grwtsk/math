# table_1_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:56842158-6b68-006c-0d01-a1fca3806f06",
  "kind": "lemma",
  "lexical_name": "table_1_bounds",
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
  "slug": "table-1-bounds--9ad285602bf761fa3fb2aa49",
  "source": {
    "blob": "c32a0604b30673c0c50c6c344bf7ea2a0adc183e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 98,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SecondarySummary/Variant464196c7d5ddf6e23b03b3703a078eb975ad3c2dc9955b7bb98ea9759a5f9121.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ad285602bf761fa3fb2aa49b714ceee8adb2063079e67c7bdcb739c09d93b39",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SecondarySummary/Variant464196c7d5ddf6e23b03b3703a078eb975ad3c2dc9955b7bb98ea9759a5f9121.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56842158-6b68-006c-0d01-a1fca3806f06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma table_1_bounds (X σ A B C ε₀ : ℝ) (h : (X, σ, A, B, C, ε₀) ∈ Table_1) :
    1000 ≤ X ∧ 3 / 2 ≤ B ∧ B ≤ 2 ∧ 0 ≤ C ∧ C ^ 2 * 5.5666305 ≤ 4 * 5.573412 ∧
    122 ≤ A + 0.1 := by
  simp only [Table_1, List.mem_cons, List.mem_nil_iff, or_false, Prod.mk.injEq] at h
  rcases h with ⟨rfl, rfl, rfl, rfl, rfl, rfl⟩ | ⟨rfl, rfl, rfl, rfl, rfl, rfl⟩ |
    ⟨rfl, rfl, rfl, rfl, rfl, rfl⟩ | ⟨rfl, rfl, rfl, rfl, rfl, rfl⟩ |
    ⟨rfl, rfl, rfl, rfl, rfl, rfl⟩ | ⟨rfl, rfl, rfl, rfl, rfl, rfl⟩ |
    ⟨rfl, rfl, rfl, rfl, rfl, rfl⟩ | ⟨rfl, rfl, rfl, rfl, rfl, rfl⟩ |
    ⟨rfl, rfl, rfl, rfl, rfl, rfl⟩ | ⟨rfl, rfl, rfl, rfl, rfl, rfl⟩ <;>
  constructor <;> norm_num

@[blueprint "pt_cor_1"
  (title := "PT Corollary 1")
  (statement := /--
Let $R = 5.573412$. For each row $\{X, \sigma, A, B, C, \epsilon_0\}$ from \cite[Table 1]{PT2021}
we have
$$
\left|\frac{\theta(x) - x}{x}\right| \leq A_1 \left(\frac{\log x}{R}\right)^B
  \exp\left(-C\sqrt{\frac{\log x}{R}}\right)
$$
where $A_1 = A + 0.1$.
  -/)
  (proof := /-- This follows trivially (and wastefully) from the work of Dusart
  \cite[Cor.\ 4.5]{Dusart2018} or the authors \cite[Cor.\ 2]{PT2021}. It should also follow from
  the results of \cite{FKS2}. -/)
  (latexEnv := "corollary")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SecondarySummary/Variant464196c7d5ddf6e23b03b3703a078eb975ad3c2dc9955b7bb98ea9759a5f9121.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SecondarySummary/Variant464196c7d5ddf6e23b03b3703a078eb975ad3c2dc9955b7bb98ea9759a5f9121.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c32a0604b30673c0c50c6c344bf7ea2a0adc183e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
