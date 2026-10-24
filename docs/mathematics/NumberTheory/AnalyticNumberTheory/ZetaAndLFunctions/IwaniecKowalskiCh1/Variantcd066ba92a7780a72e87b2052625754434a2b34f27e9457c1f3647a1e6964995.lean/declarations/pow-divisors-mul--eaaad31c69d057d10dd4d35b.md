# pow_divisors_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b365865c3c2c3a2b16519910930a7370ed08f5fd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 783,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cd/cd066ba92a7780a72e87b2052625754434a2b34f27e9457c1f3647a1e6964995.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:deab5b97-de8c-3d18-297d-66ad64beb8ed",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9773171f-46c6-26ae-3ea4-a67034f64bfc",
  "kind": "lemma",
  "lexical_name": "pow_divisors_mul",
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
  "slug": "pow-divisors-mul--eaaad31c69d057d10dd4d35b",
  "source": {
    "blob": "b365865c3c2c3a2b16519910930a7370ed08f5fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 813,
    "line": 783,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantcd066ba92a7780a72e87b2052625754434a2b34f27e9457c1f3647a1e6964995.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eaaad31c69d057d10dd4d35bd709ce272982a6ebeb1be20021ed26f3311165c9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantcd066ba92a7780a72e87b2052625754434a2b34f27e9457c1f3647a1e6964995.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9773171f-46c6-26ae-3ea4-a67034f64bfc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 783–813.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pow_divisors_mul {m n k : ℕ} (hmn : Nat.Coprime m n) :
    (m * n).divisors.filter (fun x => x ^ k ∣ m * n) =
    (m.divisors.filter (fun x => x ^ k ∣ m) ×ˢ n.divisors.filter (fun x => x ^ k ∣ n)).image
      (fun p => p.1 * p.2) := by
  ext x
  simp only [mem_image, mem_product, mem_filter, mem_divisors, ne_eq, Prod.exists]
  constructor
  · intro hx
    obtain ⟨a, b, ha, hb, hab⟩ : ∃ a b : ℕ, a ∣ m ∧ b ∣ n ∧ a * b = x := Nat.dvd_mul.mp hx.1.1
    simp only [mul_eq_zero, not_or, ← hab, mul_pow] at hx
    exact ⟨a, b, ⟨⟨⟨⟨ha, hx.1.2.1⟩, (hmn.coprime_dvd_left ha).pow_left k |>.dvd_of_dvd_mul_right (dvd_trans (dvd_mul_right _ _) hx.2)⟩,
      ⟨⟨hb, hx.1.2.2⟩, (hmn.symm.coprime_dvd_left hb).pow_left k |>.dvd_of_dvd_mul_left (dvd_trans (dvd_mul_left _ _) hx.2)⟩⟩, hab⟩⟩
  · intro ⟨a, b, hab⟩
    rw[← hab.2, mul_pow]
    exact ⟨⟨Nat.mul_dvd_mul hab.1.1.1.1 hab.1.2.1.1, Nat.mul_ne_zero_iff.mpr ⟨hab.1.1.1.2, hab.1.2.1.2⟩⟩, mul_dvd_mul hab.1.1.2 hab.1.2.2⟩

@[blueprint
  "divisors_mul_injective"
  (title := "divisors-mul-injective")
  (statement := /--
    Let $m$ and $n$ be coprime natural numbers. The function $(a,b) \mapsto ab$ is injective on the
    product of the divisors of $m$ and $n$.
    \begin{verbatim}
    Upstreamed to mathlib via PR #36495.
    \end{verbatim}
  -/)
  (proof := /--
    Since $m$ and $n$ are coprime, any element in the product of their divisors can be uniquely
    expressed as a product of an element from each set. The injectivity follows from the uniqueness
    of this decomposition.
  -/)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantcd066ba92a7780a72e87b2052625754434a2b34f27e9457c1f3647a1e6964995.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantcd066ba92a7780a72e87b2052625754434a2b34f27e9457c1f3647a1e6964995.lean#L783).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b365865c3c2c3a2b16519910930a7370ed08f5fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
