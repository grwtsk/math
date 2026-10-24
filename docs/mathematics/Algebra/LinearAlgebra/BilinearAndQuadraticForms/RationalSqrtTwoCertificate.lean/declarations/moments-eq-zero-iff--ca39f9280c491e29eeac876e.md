# moments_eq_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:826d3da7-a798-9e6d-2dcf-e039677a9634",
  "kind": "theorem",
  "lexical_name": "moments_eq_zero_iff",
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
  "slug": "moments-eq-zero-iff--ca39f9280c491e29eeac876e",
  "source": {
    "blob": "ce132e758905ebacc112934c7dc9f44bbcf5152c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 118,
    "path": "GRWTSK/Algebra/LinearAlgebra/BilinearAndQuadraticForms/RationalSqrtTwoCertificate.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca39f9280c491e29eeac876eb4cbeca5101d8d571f8aa292c1e7e09554f94c9e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BilinearAndQuadraticForms/RationalSqrtTwoCertificate.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:826d3da7-a798-9e6d-2dcf-e039677a9634`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem moments_eq_zero_iff (p delta : ι → ℚ)
    (hpos : ∀ i, 0 < p i) (hnorm : ∑ i, p i = 1) :
    weightedMean p delta = 0 ∧ residualEnergy p delta = 0 ↔
      ∀ i, delta i = 0 := by
  constructor
  · rintro ⟨hm, hr⟩
    apply (weightedEnergy_eq_zero_iff p delta hpos).1
    calc
      weightedEnergy p delta =
          (weightedMean p delta) ^ 2 + residualEnergy p delta :=
        (energy_decomposition p delta hnorm).symm
      _ = 0 := by rw [hm, hr]; ring
  · intro h
    constructor
    · simp [weightedMean, h]
    · simp [residualEnergy, centeredResidual, weightedMean, h]

/-- The exact sqrt(2) certificate for positive normalized rational weights.
No floating tolerance, arbitrary real weights or irrational differences occur. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BilinearAndQuadraticForms/RationalSqrtTwoCertificate.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BilinearAndQuadraticForms/RationalSqrtTwoCertificate.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce132e758905ebacc112934c7dc9f44bbcf5152c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
