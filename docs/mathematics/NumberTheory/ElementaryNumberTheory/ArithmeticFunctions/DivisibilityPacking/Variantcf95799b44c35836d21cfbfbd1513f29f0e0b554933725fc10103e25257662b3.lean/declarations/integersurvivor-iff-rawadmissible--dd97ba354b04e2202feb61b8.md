# integerSurvivor_iff_rawAdmissible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:27dafed0-8c7c-1e19-9e86-3e812960f995",
  "kind": "theorem",
  "lexical_name": "integerSurvivor_iff_rawAdmissible",
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
  "slug": "integersurvivor-iff-rawadmissible--dd97ba354b04e2202feb61b8",
  "source": {
    "blob": "ecf9787f8252235ddb5388ddfb80153dbb6a140d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 137,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variantcf95799b44c35836d21cfbfbd1513f29f0e0b554933725fc10103e25257662b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd97ba354b04e2202feb61b8d0860cdf6ef1c5fb55eb1f2903909ba699143a44",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variantcf95799b44c35836d21cfbfbd1513f29f0e0b554933725fc10103e25257662b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:27dafed0-8c7c-1e19-9e86-3e812960f995`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integerSurvivor_iff_rawAdmissible (H : Finset ℤ) (y : ℕ) (n : ℤ) :
    IntegerSurvivor H y n ↔ RawAdmissible H y (n : ZMod (Modulus y)) := by
  classical
  simp only [IntegerSurvivor, RawAdmissible, forbiddenResidues, Finset.mem_image,
    not_exists, not_and]
  constructor
  · intro hn p h hh heq
    apply hn p p.property h hh
    have hz : ((n + h : ℤ) : ZMod (p : ℕ)) = 0 := by
      have hr : localReduction y p (n : ZMod (Modulus y)) = (n : ZMod (p : ℕ)) :=
        map_intCast (localReduction y p) n
      rw [hr] at heq
      push_cast
      linear_combination -heq
    exact (ZMod.intCast_zmod_eq_zero_iff_dvd (n + h) p).mp hz
  · intro hn p hp h hh hd
    have hz := (ZMod.intCast_zmod_eq_zero_iff_dvd (n + h) p).mpr hd
    apply hn ⟨p, hp⟩ h hh
    rw [map_intCast]
    push_cast at hz
    linear_combination -hz

/-- The formulation using a product is equivalent because every observed modulus is prime. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variantcf95799b44c35836d21cfbfbd1513f29f0e0b554933725fc10103e25257662b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variantcf95799b44c35836d21cfbfbd1513f29f0e0b554933725fc10103e25257662b3.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecf9787f8252235ddb5388ddfb80153dbb6a140d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
