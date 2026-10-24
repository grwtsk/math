# Finset.prod_primes_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "86ba4dac19f41567aee9273ac6a67ffd76728700",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 85,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a55e1cd70089ee0b042f322b337ca69e46cd1c6b415e6c8f06c208cc36cbe40c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a384737f-5830-c559-e277-547f61962135",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dac0d3e5-0dcf-d424-f53e-2f4a1a7218e9",
  "kind": "theorem",
  "lexical_name": "Finset.prod_primes_dvd",
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
  "slug": "finset-prod-primes-dvd--76f72c8a8ffeaf0eba80e7ba",
  "source": {
    "blob": "86ba4dac19f41567aee9273ac6a67ffd76728700",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 85,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Associated/Varianta55e1cd70089ee0b042f322b337ca69e46cd1c6b415e6c8f06c208cc36cbe40c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76f72c8a8ffeaf0eba80e7ba47336c2251b27e7d99836c8f713b7b6692bc6425",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Associated/Varianta55e1cd70089ee0b042f322b337ca69e46cd1c6b415e6c8f06c208cc36cbe40c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dac0d3e5-0dcf-d424-f53e-2f4a1a7218e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Finset.prod_primes_dvd [CancelCommMonoidWithZero α] [Unique αˣ] {s : Finset α} (n : α)
    (h : ∀ a ∈ s, Prime a) (div : ∀ a ∈ s, a ∣ n) : (∏ p in s, p) ∣ n := by
  classical
    exact
      Multiset.prod_primes_dvd n (by simpa only [Multiset.map_id', Finset.mem_def] using h)
        (by simpa only [Multiset.map_id', Finset.mem_def] using div)
        (by
          -- POrting note: was
          -- `simp only [Multiset.map_id', associated_eq_eq, Multiset.countP_eq_card_filter, ←
          --    Multiset.count_eq_card_filter_eq, ← Multiset.nodup_iff_count_le_one, s.nodup]`
          intro a
          simp only [Multiset.map_id', associated_eq_eq, Multiset.countP_eq_card_filter]
          change Multiset.card (Multiset.filter (fun b => a = b) s.val) ≤ 1
          apply le_of_eq_of_le (Multiset.count_eq_card_filter_eq _ _).symm
          apply Multiset.nodup_iff_count_le_one.mp
          exact s.nodup)
#align finset.prod_primes_dvd Finset.prod_primes_dvd

namespace Associates

section CommMonoid

variable [CommMonoid α]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Associated/Varianta55e1cd70089ee0b042f322b337ca69e46cd1c6b415e6c8f06c208cc36cbe40c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Associated/Varianta55e1cd70089ee0b042f322b337ca69e46cd1c6b415e6c8f06c208cc36cbe40c.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86ba4dac19f41567aee9273ac6a67ffd76728700` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
