# twoReconstruction_uniform_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:db4d2aaf-0b32-d84e-d70a-0d0ba471f1c2",
  "kind": "theorem",
  "lexical_name": "twoReconstruction_uniform_bound",
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
  "slug": "tworeconstruction-uniform-bound--63206a4832dffd91ba31cb5b",
  "source": {
    "blob": "4d4f31ef2dbaf5b29dadaedc7a3c26dbcf58ffb7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 171,
    "path": "GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyTwoCoordinateReconstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63206a4832dffd91ba31cb5b605432a98ffbe9c64cfbf01dbe3d854c61a5bb1d",
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

Occurrence: `result:db4d2aaf-0b32-d84e-d70a-0d0ba471f1c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem twoReconstruction_uniform_bound {X : ℕ} (hX : 10 ≤ X)
    (v : CanonicalFourFamilyRealPacket) :
    canonicalFourFamilyAmbientSourceEnergy X
      (twoReconstruction X hX (canonicalFourFamilyWindowReadout X v)) ≤
        (2 / (Real.log 2) ^ 2) * canonicalFourFamilyWindowOutputEnergy X v := by
  have hlog : 0 < Real.log 2 := Real.log_pos (by norm_num)
  have hsq : 0 < (Real.log 2) ^ 2 := sq_pos_of_pos hlog
  have hb (j : Bool) :
      (canonicalFourFamilyGreenMatrixApply X (twoRow X j) v /
        Real.log (twoCofactor X j : ℝ)) ^ 2 ≤
        canonicalFourFamilyWindowOutputEnergy X v / (Real.log 2) ^ 2 := by
    have hk : (2 : ℝ) ≤ twoCofactor X j := by exact_mod_cast twoCofactor_ge_two hX j
    have hl := Real.log_le_log (by norm_num : (0 : ℝ) < 2) hk
    have hle : (Real.log 2) ^ 2 ≤ Real.log (twoCofactor X j : ℝ) ^ 2 := by nlinarith
    have he := Finset.single_le_sum
      (f := fun n => (canonicalFourFamilyGreenMatrixApply X n v) ^ 2)
      (fun _ _ => sq_nonneg _) (twoRow_mem hX j)
    rw [div_pow]
    exact (div_le_div_of_nonneg_left (sq_nonneg _) hsq hle).trans
      (div_le_div_of_nonneg_right he hsq.le)
  rw [twoReconstruction, twoPacket_energy hX]
  change (_ / _) ^ 2 + (_ / _) ^ 2 ≤ _
  calc
    _ ≤ canonicalFourFamilyWindowOutputEnergy X v / (Real.log 2) ^ 2 +
        canonicalFourFamilyWindowOutputEnergy X v / (Real.log 2) ^ 2 :=
      add_le_add (hb false) (hb true)
    _ = _ := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CanonicalFourFamilyTwoCoordinateReconstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyTwoCoordinateReconstruction.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d4f31ef2dbaf5b29dadaedc7a3c26dbcf58ffb7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
