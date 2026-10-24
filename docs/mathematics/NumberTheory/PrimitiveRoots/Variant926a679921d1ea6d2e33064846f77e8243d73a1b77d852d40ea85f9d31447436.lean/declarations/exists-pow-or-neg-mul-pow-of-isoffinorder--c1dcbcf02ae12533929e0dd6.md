# exists_pow_or_neg_mul_pow_of_isOfFinOrder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:262433f6-7044-c39f-05b8-2b901312fdfe",
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
  "slug": "exists-pow-or-neg-mul-pow-of-isoffinorder--c1dcbcf02ae12533929e0dd6",
  "source": {
    "blob": "fd476bc7d52c740056c02129b6f1bb179acf61a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 284,
    "line": 269,
    "path": "GRWTSK/NumberTheory/PrimitiveRoots/Variant926a679921d1ea6d2e33064846f77e8243d73a1b77d852d40ea85f9d31447436.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1dcbcf02ae12533929e0dd6a01b3c51b387f3c23acc3b0bc84b1ab66d9a4d4a",
  "verification": {
    "reference": "docs/verification/NumberTheory/PrimitiveRoots/Variant926a679921d1ea6d2e33064846f77e8243d73a1b77d852d40ea85f9d31447436.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:262433f6-7044-c39f-05b8-2b901312fdfe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–284.

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

[Verification target and public status](../../../../../verification/NumberTheory/PrimitiveRoots/Variant926a679921d1ea6d2e33064846f77e8243d73a1b77d852d40ea85f9d31447436.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/PrimitiveRoots/Variant926a679921d1ea6d2e33064846f77e8243d73a1b77d852d40ea85f9d31447436.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd476bc7d52c740056c02129b6f1bb179acf61a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
