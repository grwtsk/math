# twoPacket_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e3cd9ac2-e315-4618-2680-234166563f74",
  "kind": "theorem",
  "lexical_name": "twoPacket_apply",
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
  "slug": "twopacket-apply--2bb3cab3d7ce650f24a75a26",
  "source": {
    "blob": "4d4f31ef2dbaf5b29dadaedc7a3c26dbcf58ffb7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 122,
    "path": "GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyTwoCoordinateReconstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2bb3cab3d7ce650f24a75a260de9b7f7b61944ffefec0882c8b07765d036ddc5",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CanonicalFourFamilyTwoCoordinateReconstruction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3cd9ac2-e315-4618-2680-234166563f74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem twoPacket_apply {X : ℕ} (hX : 10 ≤ X) (n : ℕ) (v : Bool → ℝ) :
    canonicalFourFamilyGreenMatrixApply X n (twoPacket v) =
      ∑ j : Bool, canonicalFourFamilyGreenMatrixEntry X n (twoFamily j) (twoCenter j) * v j := by
  classical
  unfold canonicalFourFamilyGreenMatrixApply twoPacket
  simp only [Finset.mul_sum]
  conv_lhs =>
    arg 2
    ext F
    rw [Finset.sum_comm]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro j _
  have hc : twoCenter j ∈ Finset.range (2 * X + 1) := by cases j <;> simp [twoCenter] <;> omega
  simp [mul_ite, ite_and, Finset.sum_ite_eq', hc]


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CanonicalFourFamilyTwoCoordinateReconstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyTwoCoordinateReconstruction.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d4f31ef2dbaf5b29dadaedc7a3c26dbcf58ffb7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
