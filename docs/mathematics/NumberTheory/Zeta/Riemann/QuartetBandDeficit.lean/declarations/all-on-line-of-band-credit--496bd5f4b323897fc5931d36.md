# all_on_line_of_band_credit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f42bd078-a201-c280-a92c-eed61c474712",
  "kind": "theorem",
  "lexical_name": "all_on_line_of_band_credit",
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
  "slug": "all-on-line-of-band-credit--496bd5f4b323897fc5931d36",
  "source": {
    "blob": "d2ca8b344529aa6398e414541ca2243059bfcb4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 117,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuartetBandDeficit.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:496bd5f4b323897fc5931d36116bb67a52d135cdb95da38d9a311724e38780ab",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuartetBandDeficit.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f42bd078-a201-c280-a92c-eed61c474712`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem all_on_line_of_band_credit (lower upper : ℝ) (nonnegative : 0 ≤ lower)
    (known : Finset ZeroPoint) (credit allowance : ℕ)
    (knownSubset : known ⊆ bandHead lower upper)
    (knownOnLine : ∀ z ∈ known, z.1.re = 1 / 2)
    (creditLower : credit ≤ mass known multiplicity)
    (countUpper : bandCount lower upper ≤ allowance) (strict : allowance < credit + 4) :
    ∀ z ∈ bandHead lower upper, z.1.re = 1 / 2 := by
  classical
  intro z member
  by_contra offLine
  have nonreal := im_ne_zero_of_band lower upper nonnegative z member
  have conjugateOffLine : (conjugated z).1.re ≠ 1 / 2 := by
    simpa [conjugated, zeroConjugate] using offLine
  have reflectedMember : reflected z ∈ bandHead lower upper := by
    simpa only [mem_bandHead, height_reflected] using (mem_bandHead lower upper z).mp member
  have conjugateMember : conjugated z ∈ bandHead lower upper := by
    simpa only [mem_bandHead, height_conjugated] using (mem_bandHead lower upper z).mp member
  have fourthMember : reflected (conjugated z) ∈ bandHead lower upper := by
    simpa only [mem_bandHead, height_reflected, height_conjugated] using
      (mem_bandHead lower upper z).mp member
  have missing := off_line_pair_missing known z knownOnLine offLine
  have conjugateMissing := off_line_pair_missing known (conjugated z) knownOnLine conjugateOffLine
  obtain ⟨ab, ac, ad, bc, bd, cd⟩ := quartet_distinct z offLine nonreal
  have required := known_add_four_le_mass (bandHead lower upper) known multiplicity
    knownSubset z (reflected z) (conjugated z) (reflected (conjugated z))
    member reflectedMember conjugateMember fourthMember
    missing.1 missing.2 conjugateMissing.1 conjugateMissing.2 ab ac ad bc bd cd
  have p₁ := multiplicity_pos z
  have p₂ := multiplicity_pos (reflected z)
  have p₃ := multiplicity_pos (conjugated z)
  have p₄ := multiplicity_pos (reflected (conjugated z))
  change mass (bandHead lower upper) multiplicity ≤ allowance at countUpper
  omega

/-- Preserve the already established lower-height theorem. Real-axis cases belong
there; the new band proof is not extrapolated to height zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuartetBandDeficit.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuartetBandDeficit.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2ca8b344529aa6398e414541ca2243059bfcb4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
