# exists_pow_or_neg_mul_pow_of_isOfFinOrder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f513f38acffe05d4a4cc5e0cd36ea6aac6e290c1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 261,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d9/d9bef50cb7095450d45e8132a4312d0a6f4d7c08e97a17fb2144812a49960bfe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5199a12d-92a9-e888-eb5f-bab8669251e2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0bdea2e5-c4c0-f98e-a16f-9123e7f82c71",
  "kind": "theorem",
  "lexical_name": "exists_pow_or_neg_mul_pow_of_isOfFinOrder",
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
  "slug": "exists-pow-or-neg-mul-pow-of-isoffinorder--3440b3a6ddd33aff451fc019",
  "source": {
    "blob": "f513f38acffe05d4a4cc5e0cd36ea6aac6e290c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 261,
    "path": "GRWTSK/NumberTheory/PrimitiveRoots/Variantd9bef50cb7095450d45e8132a4312d0a6f4d7c08e97a17fb2144812a49960bfe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3440b3a6ddd33aff451fc019b2320b4db8f32dbd80cb2afc55ddecd8d4e9fb60",
  "verification": {
    "reference": "docs/verification/NumberTheory/PrimitiveRoots/Variantd9bef50cb7095450d45e8132a4312d0a6f4d7c08e97a17fb2144812a49960bfe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0bdea2e5-c4c0-f98e-a16f-9123e7f82c71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 261–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_pow_or_neg_mul_pow_of_isOfFinOrder [IsCyclotomicExtension {n} ℚ K]
    (hno : Odd (n : ℕ)) {ζ x : K} (hζ : IsPrimitiveRoot ζ n) (hx : IsOfFinOrder x) :
    ∃ r : ℕ, r < n ∧ (x = ζ ^ r ∨ x = -ζ ^ r) :=  by
  obtain ⟨r, hr⟩ := hζ.exists_neg_pow_of_isOfFinOrder hno hx
  refine ⟨r % n, Nat.mod_lt _ n.2, ?_⟩
  rw [show ζ ^ (r % ↑n) = ζ ^ r from (IsPrimitiveRoot.eq_orderOf hζ).symm ▸ pow_mod_orderOf .., hr]
  rcases Nat.even_or_odd r with (h | h) <;> simp [neg_pow, h.neg_one_pow]

end Field

section CommRing

variable [CommRing L] {ζ : L}
variable {K} [Field K] [Algebra K L]

/-- This mathematically trivial result is complementary to `norm_eq_one` below. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/PrimitiveRoots/Variantd9bef50cb7095450d45e8132a4312d0a6f4d7c08e97a17fb2144812a49960bfe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/PrimitiveRoots/Variantd9bef50cb7095450d45e8132a4312d0a6f4d7c08e97a17fb2144812a49960bfe.lean#L261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f513f38acffe05d4a4cc5e0cd36ea6aac6e290c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
