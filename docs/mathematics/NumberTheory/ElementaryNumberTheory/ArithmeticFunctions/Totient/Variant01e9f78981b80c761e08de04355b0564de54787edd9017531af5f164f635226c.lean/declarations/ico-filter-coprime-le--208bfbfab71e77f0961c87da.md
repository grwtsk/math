# Ico_filter_coprime_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c94929f1903663ff9019ab796e45d205c1d83093",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 82,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/01/01e9f78981b80c761e08de04355b0564de54787edd9017531af5f164f635226c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6211871c-5fec-b475-a135-01378e61ebb7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6f74bc06-522c-abd6-3ad0-646f3ca2d567",
  "kind": "theorem",
  "lexical_name": "Ico_filter_coprime_le",
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
  "slug": "ico-filter-coprime-le--208bfbfab71e77f0961c87da",
  "source": {
    "blob": "c94929f1903663ff9019ab796e45d205c1d83093",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 82,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant01e9f78981b80c761e08de04355b0564de54787edd9017531af5f164f635226c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:208bfbfab71e77f0961c87dab3c751edd831f5b8414f29945d8fa828670d57fb",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant01e9f78981b80c761e08de04355b0564de54787edd9017531af5f164f635226c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f74bc06-522c-abd6-3ad0-646f3ca2d567`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ico_filter_coprime_le {a : ℕ} (k n : ℕ) (a_pos : 0 < a) :
    ((Ico k (k + n)).filter (coprime a)).card ≤ totient a * (n / a + 1) := by
  conv_lhs => rw [← Nat.mod_add_div n a]
  induction' n / a with i ih
  · rw [← filter_coprime_Ico_eq_totient a k]
    simp only [add_zero, mul_one, mul_zero, le_of_lt (mod_lt n a_pos),
      Nat.zero_eq, zero_add]
    --Porting note: below line was `mono`
    refine Finset.card_mono ?_
    refine' monotone_filter_left a.coprime _
    simp only [Finset.le_eq_subset]
    exact Ico_subset_Ico rfl.le (add_le_add_left (le_of_lt (mod_lt n a_pos)) k)
  simp only [mul_succ]
  simp_rw [← add_assoc] at ih ⊢
  calc
    (filter a.coprime (Ico k (k + n % a + a * i + a))).card = (filter a.coprime
        (Ico k (k + n % a + a * i) ∪ Ico (k + n % a + a * i) (k + n % a + a * i + a))).card := by
      congr
      rw [Ico_union_Ico_eq_Ico]
      rw [add_assoc]
      exact le_self_add
      exact le_self_add
    _ ≤ (filter a.coprime (Ico k (k + n % a + a * i))).card + a.totient := by
      rw [filter_union, ← filter_coprime_Ico_eq_totient a (k + n % a + a * i)]
      apply card_union_le
    _ ≤ a.totient * i + a.totient + a.totient := add_le_add_right ih (totient a)
#align nat.Ico_filter_coprime_le Nat.Ico_filter_coprime_le

open ZMod

/-- Note this takes an explicit `Fintype ((ZMod n)ˣ)` argument to avoid trouble with instance
diamonds. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant01e9f78981b80c761e08de04355b0564de54787edd9017531af5f164f635226c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant01e9f78981b80c761e08de04355b0564de54787edd9017531af5f164f635226c.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c94929f1903663ff9019ab796e45d205c1d83093` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
