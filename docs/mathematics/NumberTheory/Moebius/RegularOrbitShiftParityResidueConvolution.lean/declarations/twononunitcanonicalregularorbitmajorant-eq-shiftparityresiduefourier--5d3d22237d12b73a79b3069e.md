# twoNonunitCanonicalRegularOrbitMajorant_eq_shiftParityResidueFourier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c315b7e8-4b64-6078-0ff5-a0f73e9a4ac0",
  "kind": "theorem",
  "lexical_name": "twoNonunitCanonicalRegularOrbitMajorant_eq_shiftParityResidueFourier",
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
  "slug": "twononunitcanonicalregularorbitmajorant-eq-shiftparityresiduefourier--5d3d22237d12b73a79b3069e",
  "source": {
    "blob": "a35181c8e0339923fdc9d1ea7f43f9bc663ba4d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 186,
    "path": "GRWTSK/NumberTheory/Moebius/RegularOrbitShiftParityResidueConvolution.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d3d22237d12b73a79b3069e97b1326b4a0c977b4b4df52aed41e3a375764231",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/RegularOrbitShiftParityResidueConvolution.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c315b7e8-4b64-6078-0ff5-a0f73e9a4ac0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem twoNonunitCanonicalRegularOrbitMajorant_eq_shiftParityResidueFourier
    (b d : ℕ) [NeZero d]
    (k : ZMod (d * d)) :
    twoNonunitCanonicalRegularOrbitMajorant b d k =
      twoNonunitRegularShiftParityResidueFourierMajorant b d k := by
  unfold twoNonunitCanonicalRegularOrbitMajorant
    twoNonunitRegularShiftParityResidueFourierMajorant
  rw [parityEvenHalfShiftSignedResidueFourier_eq_projector b d 0 (by norm_num) k,
      parityOddHalfShiftSignedResidueFourier_eq_projector b d 0 (by norm_num) k,
      parityEvenHalfShiftSignedResidueFourier_eq_projector b d 1 (by norm_num) k,
      parityOddHalfShiftSignedResidueFourier_eq_projector b d 1 (by norm_num) k]

/-- Endpoint aggregate in the refined signed-residue Fourier coordinates. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RegularOrbitShiftParityResidueConvolution.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RegularOrbitShiftParityResidueConvolution.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a35181c8e0339923fdc9d1ea7f43f9bc663ba4d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
