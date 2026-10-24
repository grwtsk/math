# doubled_halfSquareModulusFrequency

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:674c9713-5927-6bc5-bfcb-6ba29db3c491",
  "kind": "theorem",
  "lexical_name": "doubled_halfSquareModulusFrequency",
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
  "slug": "doubled-halfsquaremodulusfrequency--f887d947c3fd9506765e89e7",
  "source": {
    "blob": "791e4238fb1bb06bed50920b4787f79f26e49705",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 65,
    "path": "GRWTSK/NumberTheory/Moebius/HalfIndexAffineChowlaTwoUnitSplit.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f887d947c3fd9506765e89e79b145644cedf41be5434c913a8c7cb1cb72603fc",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/HalfIndexAffineChowlaTwoUnitSplit.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:674c9713-5927-6bc5-bfcb-6ba29db3c491`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem doubled_halfSquareModulusFrequency
    (d : ℕ) [NeZero d]
    (hTwo : TwoUnitSquareModulusParameter d)
    (ell : ZMod (d * d)) :
    doubledSquareModulusFrequency d
        (halfSquareModulusFrequency d ell) = ell := by
  have hunit := two_isUnit_squareModulus d hTwo
  have hmul :
      (2 : ZMod (d * d)) * (2 : ZMod (d * d))⁻¹ = 1 :=
    ZMod.mul_inv_of_unit _ hunit
  unfold doubledSquareModulusFrequency halfSquareModulusFrequency
  calc
    (2 : ZMod (d * d))⁻¹ * ell +
        (2 : ZMod (d * d))⁻¹ * ell =
      (2 : ZMod (d * d)) *
        ((2 : ZMod (d * d))⁻¹ * ell) := by ring
    _ = ((2 : ZMod (d * d)) *
          (2 : ZMod (d * d))⁻¹) * ell := by ring
    _ = ell := by rw [hmul, one_mul]

/-- Halving after doubling recovers the original frequency on the two-unit
branch. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/HalfIndexAffineChowlaTwoUnitSplit.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/HalfIndexAffineChowlaTwoUnitSplit.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `791e4238fb1bb06bed50920b4787f79f26e49705` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
