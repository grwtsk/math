# discr_odd_prime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "83c3817c8cbafeb162db984b7a478db9c0b62daa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 200,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fc/fc88ad488161f1cee8c1a1e8c8971eaa7696b673a4b007b34a765000bb52bbfd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1cb396ce-4a6f-abbf-4361-79b82c888bc2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e8c64ccc-348a-62b0-c3ed-1d94529c9227",
  "kind": "theorem",
  "lexical_name": "discr_odd_prime",
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
  "slug": "discr-odd-prime--ba9964b19f6c3e1d958ef378",
  "source": {
    "blob": "83c3817c8cbafeb162db984b7a478db9c0b62daa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 200,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Discriminant/Variantfc88ad488161f1cee8c1a1e8c8971eaa7696b673a4b007b34a765000bb52bbfd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba9964b19f6c3e1d958ef37837bfc0968093e8494d7f9f578a38878de5da2960",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Discriminant/Variantfc88ad488161f1cee8c1a1e8c8971eaa7696b673a4b007b34a765000bb52bbfd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e8c64ccc-348a-62b0-c3ed-1d94529c9227`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem discr_odd_prime [IsCyclotomicExtension {p} K L] [hp : Fact (p : ℕ).Prime]
    (hζ : IsPrimitiveRoot ζ p) (hirr : Irreducible (cyclotomic p K)) (hodd : p ≠ 2) :
    discr K (hζ.powerBasis K).basis = (-1) ^ (((p : ℕ) - 1) / 2) * p ^ ((p : ℕ) - 2) := by
  have : IsCyclotomicExtension {p ^ (0 + 1)} K L := by
    rw [zero_add, pow_one]
    infer_instance
  have hζ' : IsPrimitiveRoot ζ ↑(p ^ (0 + 1)) := by simpa using hζ
  convert discr_prime_pow_ne_two hζ' (by simpa [hirr]) (by simp [hodd]) using 2
  · rw [zero_add, pow_one, totient_prime hp.out]
  · rw [_root_.pow_zero, one_mul, zero_add, mul_one, Nat.sub_sub]
#align is_cyclotomic_extension.discr_odd_prime IsCyclotomicExtension.discr_odd_prime

end IsCyclotomicExtension
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Discriminant/Variantfc88ad488161f1cee8c1a1e8c8971eaa7696b673a4b007b34a765000bb52bbfd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Discriminant/Variantfc88ad488161f1cee8c1a1e8c8971eaa7696b673a4b007b34a765000bb52bbfd.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83c3817c8cbafeb162db984b7a478db9c0b62daa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
