# sum_coeff_eq_coeff_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5a21250b-f623-1fe9-8e7d-30357789bdfa",
  "kind": "theorem",
  "lexical_name": "sum_coeff_eq_coeff_sum",
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
  "slug": "sum-coeff-eq-coeff-sum--0750b7e95e298b43d053b9d7",
  "source": {
    "blob": "fad8147e9acb6abbec8511334051230f4e599cc8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 51,
    "path": "GRWTSK/Algebra/RingTheory/TeichmullerSeries/Variante1319b9aa40ebe6d37897252e5d563cc52a575c98dd55e2bc0b5e888df0b20e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0750b7e95e298b43d053b9d7b0c40c6e74d6fab84f823213f3df26957e3ca94d",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/TeichmullerSeries/Variante1319b9aa40ebe6d37897252e5d563cc52a575c98dd55e2bc0b5e888df0b20e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a21250b-f623-1fe9-8e7d-30357789bdfa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_coeff_eq_coeff_sum {α : Type*} {S : Finset α} (x : α → 𝕎 R)
    (h : ∀ (n : ℕ), Subsingleton {r | r ∈ S ∧ (x r).coeff n ≠ 0}) (n : ℕ) :
    (∑ s ∈ S, x s).coeff n = ∑ (s ∈ S), (x s).coeff n := by
  classical
  induction S using Finset.induction generalizing n with
  | empty =>
    simp
  | insert a S' ha hind =>
    have : (∀ (n : ℕ), Subsingleton {r | r ∈ S' ∧ (x r).coeff n ≠ 0}) := by
      refine fun n ↦ ⟨fun b c ↦ ?_⟩
      ext
      exact congrArg (fun x ↦ x.1) <|
          (h n).allEq ⟨b.1, S'.subset_insert a b.2.1, b.2.2⟩ ⟨c.1, S'.subset_insert a c.2.1, c.2.2⟩
    replace hind := hind this
    simp only [ha, not_false_eq_true, Finset.sum_insert]
    have : ∀ (n : ℕ), (x a).coeff n = 0 ∨ (∑ s ∈ S', x s).coeff n = 0 := by
      simp only [hind]
      by_contra! ⟨m, hma, hmS'⟩
      have := Finset.sum_eq_zero.mt hmS'
      push Not at this
      choose b hb hb' using this
      have : a = b :=
        congrArg (fun x ↦ x.1) <|
          (h m).allEq ⟨a, S'.mem_insert_self a, hma⟩ ⟨b, S'.mem_insert_of_mem hb, hb'⟩
      exact ha (this ▸ hb)
    rw [coeff_add_of_disjoint n _ _ this, hind n]

variable [CharP R p]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/TeichmullerSeries/Variante1319b9aa40ebe6d37897252e5d563cc52a575c98dd55e2bc0b5e888df0b20e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/TeichmullerSeries/Variante1319b9aa40ebe6d37897252e5d563cc52a575c98dd55e2bc0b5e888df0b20e3.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fad8147e9acb6abbec8511334051230f4e599cc8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
