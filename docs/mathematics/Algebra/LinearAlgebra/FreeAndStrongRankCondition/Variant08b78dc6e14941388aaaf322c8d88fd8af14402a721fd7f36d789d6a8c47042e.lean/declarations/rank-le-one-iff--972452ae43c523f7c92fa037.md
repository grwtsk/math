# rank_le_one_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:88ace869-2616-b9e9-c63f-5250de859a9b",
  "kind": "theorem",
  "lexical_name": "rank_le_one_iff",
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
  "slug": "rank-le-one-iff--972452ae43c523f7c92fa037",
  "source": {
    "blob": "6d2d5ffffaeef593b7b7ca140c440764ffc2015d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 81,
    "path": "GRWTSK/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant08b78dc6e14941388aaaf322c8d88fd8af14402a721fd7f36d789d6a8c47042e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:972452ae43c523f7c92fa037b1aeb147d4d4b45fb81363b7351efec2c1bbd6c1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant08b78dc6e14941388aaaf322c8d88fd8af14402a721fd7f36d789d6a8c47042e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88ace869-2616-b9e9-c63f-5250de859a9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rank_le_one_iff [Module.Free K V] :
    Module.rank K V ≤ 1 ↔ ∃ v₀ : V, ∀ v, ∃ r : K, r • v₀ = v := by
  obtain ⟨κ, b⟩ := Module.Free.exists_basis (R := K) (M := V)
  constructor
  · intro hd
    rw [← b.mk_eq_rank'', le_one_iff_subsingleton] at hd
    rcases isEmpty_or_nonempty κ with hb | ⟨⟨i⟩⟩
    · use 0
      have h' : ∀ v : V, v = 0 := by
        simpa [range_eq_empty, Submodule.eq_bot_iff] using b.span_eq.symm
      intro v
      simp [h' v]
    · use b i
      have h' : (K ∙ b i) = ⊤ :=
        (subsingleton_range b).eq_singleton_of_mem (mem_range_self i) ▸ b.span_eq
      intro v
      have hv : v ∈ (⊤ : Submodule K V) := mem_top
      rwa [← h', mem_span_singleton] at hv
  · rintro ⟨v₀, hv₀⟩
    have h : (K ∙ v₀) = ⊤ := by
      ext
      simp [mem_span_singleton, hv₀]
    rw [← rank_top, ← h]
    refine (rank_span_le _).trans_eq ?_
    simp

/-- A vector space has dimension `1` if and only if there is a
single non-zero vector of which all vectors are multiples. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant08b78dc6e14941388aaaf322c8d88fd8af14402a721fd7f36d789d6a8c47042e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant08b78dc6e14941388aaaf322c8d88fd8af14402a721fd7f36d789d6a8c47042e.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d2d5ffffaeef593b7b7ca140c440764ffc2015d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
