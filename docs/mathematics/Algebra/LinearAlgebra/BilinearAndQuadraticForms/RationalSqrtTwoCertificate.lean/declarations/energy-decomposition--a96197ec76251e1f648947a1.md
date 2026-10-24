# energy_decomposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6e17b5de-e400-f37f-f46b-82d907dd11d1",
  "kind": "theorem",
  "lexical_name": "energy_decomposition",
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
  "slug": "energy-decomposition--a96197ec76251e1f648947a1",
  "source": {
    "blob": "ce132e758905ebacc112934c7dc9f44bbcf5152c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 72,
    "path": "GRWTSK/Algebra/LinearAlgebra/BilinearAndQuadraticForms/RationalSqrtTwoCertificate.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a96197ec76251e1f648947a142719c561873266939b7b8e8611142e48ba928e9",
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

Occurrence: `result:6e17b5de-e400-f37f-f46b-82d907dd11d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem energy_decomposition (p delta : ι → ℚ)
    (hnorm : ∑ i, p i = 1) :
    (weightedMean p delta) ^ 2 + residualEnergy p delta =
      weightedEnergy p delta := by
  classical
  have hr : residualEnergy p delta =
      weightedEnergy p delta - (2 * weightedMean p delta) * weightedMean p delta +
        (weightedMean p delta) ^ 2 := by
    unfold residualEnergy centeredResidual
    calc
      (∑ i, p i * (delta i - weightedMean p delta) ^ 2) =
          ∑ i, (p i * (delta i) ^ 2 -
            (2 * weightedMean p delta) * (p i * delta i) +
            (weightedMean p delta) ^ 2 * p i) := by
        apply Finset.sum_congr rfl
        intro i _
        ring
      _ = weightedEnergy p delta -
          (2 * weightedMean p delta) * weightedMean p delta +
          (weightedMean p delta) ^ 2 * (∑ i, p i) := by
        simp only [Finset.sum_add_distrib, Finset.sum_sub_distrib,
          ← Finset.mul_sum, weightedMean, weightedEnergy]
      _ = _ := by rw [hnorm, mul_one]
  rw [hr]
  ring

/-- Strictly positive weights make zero full energy equivalent to zero data. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BilinearAndQuadraticForms/RationalSqrtTwoCertificate.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BilinearAndQuadraticForms/RationalSqrtTwoCertificate.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce132e758905ebacc112934c7dc9f44bbcf5152c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
