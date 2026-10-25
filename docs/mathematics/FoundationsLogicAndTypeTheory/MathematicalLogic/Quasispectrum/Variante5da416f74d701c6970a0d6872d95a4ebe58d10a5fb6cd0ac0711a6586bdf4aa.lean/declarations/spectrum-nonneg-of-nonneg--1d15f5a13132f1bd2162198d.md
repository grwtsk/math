# spectrum_nonneg_of_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c1b273bbf8cfa7d1e182fa2f861877a5452b05dd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 443,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e5da416f74d701c6970a0d6872d95a4ebe58d10a5fb6cd0ac0711a6586bdf4aa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:893b2e80-6476-cfe0-10fe-1c0bd53226aa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f24d9c7d-f342-38c7-cfa4-79c12305e69b",
  "kind": "lemma",
  "lexical_name": "spectrum_nonneg_of_nonneg",
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
  "slug": "spectrum-nonneg-of-nonneg--1d15f5a13132f1bd2162198d",
  "source": {
    "blob": "c1b273bbf8cfa7d1e182fa2f861877a5452b05dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 462,
    "line": 443,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Quasispectrum/Variante5da416f74d701c6970a0d6872d95a4ebe58d10a5fb6cd0ac0711a6586bdf4aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d15f5a13132f1bd2162198d5536812e983d1365d186ae0f1bce18443bb79211",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Quasispectrum/Variante5da416f74d701c6970a0d6872d95a4ebe58d10a5fb6cd0ac0711a6586bdf4aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f24d9c7d-f342-38c7-cfa4-79c12305e69b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 443–462.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma spectrum_nonneg_of_nonneg {𝕜 A : Type*} [CommSemiring 𝕜] [PartialOrder 𝕜]
    [Ring A] [PartialOrder A]
    [Algebra 𝕜 A] [NonnegSpectrumClass 𝕜 A] ⦃a : A⦄ (ha : 0 ≤ a) ⦃x : 𝕜⦄ (hx : x ∈ spectrum 𝕜 a) :
    0 ≤ x :=
  NonnegSpectrumClass.quasispectrum_nonneg_of_nonneg a ha x (spectrum_subset_quasispectrum 𝕜 a hx)

grind_pattern spectrum_nonneg_of_nonneg => x ∈ spectrum 𝕜 a

/-! ### Restriction of the spectrum -/

/-- Given an element `a : A` of an `S`-algebra, where `S` is itself an `R`-algebra, we say that
the spectrum of `a` restricts via a function `f : S → R` if `f` is a left inverse of
`algebraMap R S`, and `f` is a right inverse of `algebraMap R S` on `spectrum S a`.

For example, when `f = Complex.re` (so `S := ℂ` and `R := ℝ`), `SpectrumRestricts a f` means that
the `ℂ`-spectrum of `a` is contained within `ℝ`. This arises naturally when `a` is selfadjoint
and `A` is a C⋆-algebra.

This is the property allows us to restrict a continuous functional calculus over `S` to a
continuous functional calculus over `R`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Quasispectrum/Variante5da416f74d701c6970a0d6872d95a4ebe58d10a5fb6cd0ac0711a6586bdf4aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Quasispectrum/Variante5da416f74d701c6970a0d6872d95a4ebe58d10a5fb6cd0ac0711a6586bdf4aa.lean#L443).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1b273bbf8cfa7d1e182fa2f861877a5452b05dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
