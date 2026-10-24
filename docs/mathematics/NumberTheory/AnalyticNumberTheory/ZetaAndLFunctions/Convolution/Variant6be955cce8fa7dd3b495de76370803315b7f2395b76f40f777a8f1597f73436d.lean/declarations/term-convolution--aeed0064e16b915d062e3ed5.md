# term_convolution'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a454cc14bde9c1628b7e2da3477e381effc491ed",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 110,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6b/6be955cce8fa7dd3b495de76370803315b7f2395b76f40f777a8f1597f73436d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f820a0e5-d07a-4ec1-9c51-5769a83c9f47",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0da2365f-1cbb-61c0-7a4c-f6bda7d1a2c4",
  "kind": "lemma",
  "lexical_name": "term_convolution'",
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
  "slug": "term-convolution--aeed0064e16b915d062e3ed5",
  "source": {
    "blob": "a454cc14bde9c1628b7e2da3477e381effc491ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 110,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variant6be955cce8fa7dd3b495de76370803315b7f2395b76f40f777a8f1597f73436d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aeed0064e16b915d062e3ed56a129ae4f8b463b0a36fd7398a47e85ab77fc557",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variant6be955cce8fa7dd3b495de76370803315b7f2395b76f40f777a8f1597f73436d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0da2365f-1cbb-61c0-7a4c-f6bda7d1a2c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma term_convolution' (f g : ℕ → ℂ) (s : ℂ) :
    term (f ⍟ g) s = fun n ↦
      ∑' (b : (fun p : ℕ × ℕ ↦ p.1 * p.2) ⁻¹' {n}), term f s b.val.1 * term g s b.val.2 := by
  ext n
  rcases eq_or_ne n 0 with rfl | hn
  · -- show that both sides vanish when `n = 0`; this is the hardest part of the proof!
    refine (term_zero ..).trans ?_
    -- the right hand sum is over the union below, but in each term, one factor is always zero
    have hS : (fun p ↦ p.1 * p.2) ⁻¹' {0} = {0} ×ˢ univ ∪ univ ×ˢ {0} := by
      ext
      simp [Nat.mul_eq_zero]
    have : ∀ p : (fun p : ℕ × ℕ ↦ p.1 * p.2) ⁻¹' {0}, term f s p.val.1 * term g s p.val.2 = 0 := by
      rintro ⟨⟨_, _⟩, hp⟩
      rcases hS ▸ hp with ⟨rfl, -⟩ | ⟨-, rfl⟩ <;> simp
    simp [this]
  -- now `n ≠ 0`
  rw [show (fun p : ℕ × ℕ ↦ p.1 * p.2) ⁻¹' {n} = n.divisorsAntidiagonal by ext; simp [hn],
    Finset.tsum_subtype' n.divisorsAntidiagonal fun p ↦ term f s p.1 * term g s p.2,
    term_convolution f g s n]

end LSeries

open Set in
/-- The L-series of the convolution product `f ⍟ g` of two sequences `f` and `g`
equals the product of their L-series, assuming both L-series converge. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variant6be955cce8fa7dd3b495de76370803315b7f2395b76f40f777a8f1597f73436d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variant6be955cce8fa7dd3b495de76370803315b7f2395b76f40f777a8f1597f73436d.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a454cc14bde9c1628b7e2da3477e381effc491ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
