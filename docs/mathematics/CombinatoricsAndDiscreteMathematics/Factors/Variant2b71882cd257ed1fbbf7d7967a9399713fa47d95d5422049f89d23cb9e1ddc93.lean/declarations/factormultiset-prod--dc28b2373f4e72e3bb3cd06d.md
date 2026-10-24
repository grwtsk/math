# factorMultiset_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "534c281a3a50bd41215ba117d9f3eaab914e5349",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 222,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2b/2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cb3c595f-1161-47e7-ae44-6ef56e963343",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d027e93c-60b2-7803-2b8c-fd65341a9a12",
  "kind": "theorem",
  "lexical_name": "factorMultiset_prod",
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
  "slug": "factormultiset-prod--dc28b2373f4e72e3bb3cd06d",
  "source": {
    "blob": "534c281a3a50bd41215ba117d9f3eaab914e5349",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 222,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Factors/Variant2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc28b2373f4e72e3bb3cd06db9f677fbc5ae2901bf2579da84378523a9d73b4c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Factors/Variant2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d027e93c-60b2-7803-2b8c-fd65341a9a12`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem factorMultiset_prod (v : PrimeMultiset) : v.prod.factorMultiset = v := by
  apply PrimeMultiset.coeNat_injective
  rw [v.prod.coeNat_factorMultiset, PrimeMultiset.coe_prod]
  rcases v with ⟨l⟩
  dsimp [PrimeMultiset.toNatMultiset]
  let l' := l.map ((↑) : Nat.Primes → ℕ)
  have (p : ℕ) (hp : p ∈ l') : p.Prime := by
    simp only [List.map_subtype, List.map_id_fun', id_eq, List.mem_unattach, l'] at hp
    obtain ⟨hp', -⟩ := hp
    exact hp'
  exact Multiset.coe_eq_coe.mpr (@Nat.primeFactorsList_unique _ l' rfl this).symm

end PrimeMultiset

namespace PNat

/-- Positive integers biject with multisets of primes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Factors/Variant2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Factors/Variant2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `534c281a3a50bd41215ba117d9f3eaab914e5349` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
