# nrRealPlaces_eq_zero_of_two_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4675e490-9499-6995-74e1-c135234d9f8d",
  "kind": "theorem",
  "lexical_name": "nrRealPlaces_eq_zero_of_two_lt",
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
  "slug": "nrrealplaces-eq-zero-of-two-lt--33a4091018e079044fc5b27e",
  "source": {
    "blob": "c695658a1815808a9ab9757565a74081ad15a4e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 561,
    "line": 525,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant9e67f51d657c0cb273634ba4a2d04b5521ef557fe71fa8f1ba576e0646391735.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:33a4091018e079044fc5b27e6ac5b0b5a1c8d7bf0175f8bedf225e19ae0171e4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Variant9e67f51d657c0cb273634ba4a2d04b5521ef557fe71fa8f1ba576e0646391735.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4675e490-9499-6995-74e1-c135234d9f8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 525–561.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nrRealPlaces_eq_zero_of_two_lt (hk : 2 < k) (hζ : IsPrimitiveRoot ζ k) :
    NumberField.InfinitePlace.nrRealPlaces K = 0 := by
  refine (@Fintype.card_eq_zero_iff _ (_)).2 ⟨fun ⟨w, hwreal⟩ ↦ ?_⟩
  rw [NumberField.InfinitePlace.isReal_iff] at hwreal
  let f := w.embedding
  have hζ' : IsPrimitiveRoot (f ζ) k := hζ.map_of_injective f.injective
  have him : (f ζ).im = 0 := by
    rw [← Complex.conj_eq_iff_im, ← NumberField.ComplexEmbedding.conjugate_coe_eq]
    congr
  have hre : (f ζ).re = 1 ∨ (f ζ).re = -1 := by
    rw [← Complex.abs_re_eq_norm] at him
    have := Complex.norm_eq_one_of_pow_eq_one hζ'.pow_eq_one (by lia)
    rwa [← him, ← abs_one, abs_eq_abs] at this
  cases hre with
  | inl hone =>
    exact hζ'.ne_one (by lia) <| Complex.ext (by simp [hone]) (by simp [him])
  | inr hnegone =>
    replace hζ' := hζ'.eq_orderOf
    simp only [show f ζ = -1 from Complex.ext (by simp [hnegone]) (by simp [him]),
      orderOf_neg_one, ringChar.eq_zero] at hζ'
    lia

end IsPrimitiveRoot

end NumberField.InfinitePlace

/-!

## The infinite place of the rationals.

-/

namespace Rat

open NumberField

/-- The infinite place of `ℚ`, coming from the canonical map `ℚ → ℂ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Variant9e67f51d657c0cb273634ba4a2d04b5521ef557fe71fa8f1ba576e0646391735.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant9e67f51d657c0cb273634ba4a2d04b5521ef557fe71fa8f1ba576e0646391735.lean#L525).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c695658a1815808a9ab9757565a74081ad15a4e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
