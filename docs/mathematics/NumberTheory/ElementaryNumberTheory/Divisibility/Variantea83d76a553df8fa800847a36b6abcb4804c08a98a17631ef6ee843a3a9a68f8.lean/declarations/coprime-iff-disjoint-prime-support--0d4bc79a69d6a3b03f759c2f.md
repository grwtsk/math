# coprime_iff_disjoint_prime_support

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d45976398345fdf504615e9c52e383aa22883bd2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 36,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ea/ea83d76a553df8fa800847a36b6abcb4804c08a98a17631ef6ee843a3a9a68f8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eda93b89-5725-d889-cc68-02be832dcd81",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a99436f4-f5bd-26ee-b367-809ea2e6fba3",
  "kind": "theorem",
  "lexical_name": "coprime_iff_disjoint_prime_support",
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
  "slug": "coprime-iff-disjoint-prime-support--0d4bc79a69d6a3b03f759c2f",
  "source": {
    "blob": "d45976398345fdf504615e9c52e383aa22883bd2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 36,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Divisibility/Variantea83d76a553df8fa800847a36b6abcb4804c08a98a17631ef6ee843a3a9a68f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d4bc79a69d6a3b03f759c2fbd38241cf561e23e77c4e58d4504f95656434ac9",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Divisibility/Variantea83d76a553df8fa800847a36b6abcb4804c08a98a17631ef6ee843a3a9a68f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a99436f4-f5bd-26ee-b367-809ea2e6fba3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coprime_iff_disjoint_prime_support
    (a b : PositiveNat) :
    Nat.Coprime a.val b.val ↔
      ∀ p, ¬ (IsPrimeSupport a p ∧ IsPrimeSupport b p) := by
  constructor
  · intro hcop p hpab
    rcases hpab with ⟨hpa, hpb⟩
    have hpprime : Nat.Prime p := factorization_support_prime a hpa
    have hpda : p ∣ a.val := Nat.dvd_of_factorization_pos hpa
    have hpdb : p ∣ b.val := Nat.dvd_of_factorization_pos hpb
    have hp1 : p = 1 := Nat.eq_one_of_dvd_coprimes hcop hpda hpdb
    exact hpprime.ne_one hp1
  · intro hdis
    by_contra hnot
    rcases Nat.Prime.not_coprime_iff_dvd.mp hnot with
      ⟨p, hpprime, hpda, hpdb⟩
    have hpa : IsPrimeSupport a p := by
      exact Nat.ne_of_gt
        (hpprime.factorization_pos_of_dvd
          (Nat.ne_of_gt a.2) hpda)
    have hpb : IsPrimeSupport b p := by
      exact Nat.ne_of_gt
        (hpprime.factorization_pos_of_dvd
          (Nat.ne_of_gt b.2) hpdb)
    exact hdis p ⟨hpa, hpb⟩

end NumberTheory
end Rebuild
end Folder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Divisibility/Variantea83d76a553df8fa800847a36b6abcb4804c08a98a17631ef6ee843a3a9a68f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Divisibility/Variantea83d76a553df8fa800847a36b6abcb4804c08a98a17631ef6ee843a3a9a68f8.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d45976398345fdf504615e9c52e383aa22883bd2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
