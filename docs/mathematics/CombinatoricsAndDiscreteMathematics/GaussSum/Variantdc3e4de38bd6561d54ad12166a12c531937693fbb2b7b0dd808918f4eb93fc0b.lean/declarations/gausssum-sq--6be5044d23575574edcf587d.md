# gaussSum_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4a3ad76b-a532-1fb3-8002-32986a026582",
  "kind": "theorem",
  "lexical_name": "gaussSum_sq",
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
  "slug": "gausssum-sq--6be5044d23575574edcf587d",
  "source": {
    "blob": "3f5ff71fd5130953bf05fb626eca91bb2f360389",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 137,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GaussSum/Variantdc3e4de38bd6561d54ad12166a12c531937693fbb2b7b0dd808918f4eb93fc0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6be5044d23575574edcf587dcfafb31ec9f3d8c22cbbefe7985e8af93b585bec",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GaussSum/Variantdc3e4de38bd6561d54ad12166a12c531937693fbb2b7b0dd808918f4eb93fc0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a3ad76b-a532-1fb3-8002-32986a026582`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gaussSum_sq {χ : MulChar R R'} (hχ₁ : IsNontrivial χ) (hχ₂ : IsQuadratic χ)
    {ψ : AddChar R R'} (hψ : IsPrimitive ψ) : gaussSum χ ψ ^ 2 = χ (-1) * Fintype.card R := by
  rw [pow_two, ← gaussSum_mul_gaussSum_eq_card hχ₁ hψ, hχ₂.inv, mul_rotate']
  congr
  rw [mul_comm, ← gaussSum_mulShift _ _ (-1 : Rˣ), inv_mulShift]
  rfl
#align gauss_sum_sq gaussSum_sq

end GaussSumProd

/-!
### Gauss sums and Frobenius
-/


section gaussSum_frob

variable {R : Type u} [CommRing R] [Fintype R] {R' : Type v} [CommRing R']

-- We assume that the target ring `R'` has prime characteristic `p`.
variable (p : ℕ) [fp : Fact p.Prime] [hch : CharP R' p]

/-- When `R'` has prime characteristic `p`, then the `p`th power of the Gauss sum
of `χ` and `ψ` is the Gauss sum of `χ^p` and `ψ^p`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/GaussSum/Variantdc3e4de38bd6561d54ad12166a12c531937693fbb2b7b0dd808918f4eb93fc0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GaussSum/Variantdc3e4de38bd6561d54ad12166a12c531937693fbb2b7b0dd808918f4eb93fc0b.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f5ff71fd5130953bf05fb626eca91bb2f360389` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
