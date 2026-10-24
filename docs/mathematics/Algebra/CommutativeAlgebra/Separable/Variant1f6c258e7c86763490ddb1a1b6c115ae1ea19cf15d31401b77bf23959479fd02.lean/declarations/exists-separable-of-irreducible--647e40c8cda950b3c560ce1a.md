# exists_separable_of_irreducible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "def5f1a76b00df7be7ed85a0524e0f291a2825d0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 332,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1f/1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dcb0c811-b8c2-6473-0fb4-403b136f22eb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:217313ab-2767-3169-1d7c-5ed6ad26c2f8",
  "kind": "theorem",
  "lexical_name": "exists_separable_of_irreducible",
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
  "slug": "exists-separable-of-irreducible--647e40c8cda950b3c560ce1a",
  "source": {
    "blob": "def5f1a76b00df7be7ed85a0524e0f291a2825d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 357,
    "line": 332,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:647e40c8cda950b3c560ce1ac68aa22a776d4ca9175823a3493965761a9b71a5",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:217313ab-2767-3169-1d7c-5ed6ad26c2f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 332–357.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_separable_of_irreducible {f : F[X]} (hf : Irreducible f) (hp : p ≠ 0) :
    ∃ (n : ℕ) (g : F[X]), g.Separable ∧ expand F (p ^ n) g = f := by
  replace hp : p.Prime := (CharP.char_is_prime_or_zero F p).resolve_right hp
  induction' hn : f.natDegree using Nat.strong_induction_on with N ih generalizing f
  rcases separable_or p hf with (h | ⟨h1, g, hg, hgf⟩)
  · refine' ⟨0, f, h, _⟩
    rw [pow_zero, expand_one]
  · cases' N with N
    · rw [natDegree_eq_zero_iff_degree_le_zero, degree_le_zero_iff] at hn
      rw [hn, separable_C, isUnit_iff_ne_zero, Classical.not_not] at h1
      have hf0 : f ≠ 0 := hf.ne_zero
      rw [h1, C_0] at hn
      exact absurd hn hf0
    have hg1 : g.natDegree * p = N.succ := by rwa [← natDegree_expand, hgf]
    have hg2 : g.natDegree ≠ 0 := by
      intro this
      rw [this, zero_mul] at hg1
      cases hg1
    have hg3 : g.natDegree < N.succ := by
      rw [← mul_one g.natDegree, ← hg1]
      exact Nat.mul_lt_mul_of_pos_left hp.one_lt hg2.bot_lt
    rcases ih _ hg3 hg rfl with ⟨n, g, hg4, rfl⟩
    refine' ⟨n + 1, g, hg4, _⟩
    rw [← hgf, expand_expand, pow_succ]
#align polynomial.exists_separable_of_irreducible Polynomial.exists_separable_of_irreducible

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean#L332).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `def5f1a76b00df7be7ed85a0524e0f291a2825d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
