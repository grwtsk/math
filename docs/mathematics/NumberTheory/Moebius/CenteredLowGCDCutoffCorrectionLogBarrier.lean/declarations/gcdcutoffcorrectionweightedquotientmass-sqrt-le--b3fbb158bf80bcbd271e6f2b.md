# gcdCutoffCorrectionWeightedQuotientMass_sqrt_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5f7ff413-0225-bd67-766a-c2e841ba2615",
  "kind": "theorem",
  "lexical_name": "gcdCutoffCorrectionWeightedQuotientMass_sqrt_le",
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
  "slug": "gcdcutoffcorrectionweightedquotientmass-sqrt-le--b3fbb158bf80bcbd271e6f2b",
  "source": {
    "blob": "2ded7c30cf8a2ea3925ebc3902f0906a4cbcea94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 515,
    "line": 450,
    "path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDCutoffCorrectionLogBarrier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3fbb158bf80bcbd271e6f2b6a2074cdaee469fc3526a3e5b68e917be57c1f95",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CenteredLowGCDCutoffCorrectionLogBarrier.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f7ff413-0225-bd67-766a-c2e841ba2615`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 450–515.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gcdCutoffCorrectionWeightedQuotientMass_sqrt_le
    {X : ℕ}
    (hX : 4 ≤ X) :
    gcdCutoffCorrectionWeightedQuotientMass X X.sqrt ≤
      64 * (X : ℝ) * Real.sqrt (X : ℝ) *
        Real.log (X : ℝ) := by
  have hroot : 2 ≤ X.sqrt := by
    rw [Nat.le_sqrt]
    nlinarith
  have hbase :=
    (gcdCutoffCorrectionWeightedQuotientMass_le_relaxed
      (X := X) (Y := X.sqrt) (by omega : 1 ≤ X.sqrt)).trans
      (gcdCutoffCorrectionRelaxedFactorMass_le
        (X := X) hroot)
  have hXpos : 0 < (X : ℝ) := by
    exact_mod_cast (show 0 < X by omega)
  have hsqrtpos : 0 < Real.sqrt (X : ℝ) :=
    Real.sqrt_pos.2 hXpos
  have hrootpos : 0 < (X.sqrt : ℝ) := by
    exact_mod_cast (show 0 < X.sqrt by omega)
  have hrootInv :
      1 / (X.sqrt : ℝ) ≤
        2 / Real.sqrt (X : ℝ) := by
    have hsqrtle :
        Real.sqrt (X : ℝ) ≤ 2 * (X.sqrt : ℝ) := by
      have h := Real.real_sqrt_le_nat_sqrt_succ (a := X)
      have hplus :
          ((X.sqrt + 1 : ℕ) : ℝ) ≤
            2 * (X.sqrt : ℝ) := by
        exact_mod_cast (show X.sqrt + 1 ≤ 2 * X.sqrt by omega)
      exact h.trans hplus
    apply (div_le_iff₀ hrootpos).2
    apply (le_div_iff₀ hsqrtpos).2
    nlinarith
  have hlog :
      Real.log (X.sqrt : ℝ) ≤
        Real.log (X : ℝ) := by
    exact Real.log_le_log hrootpos
      (by
        exact_mod_cast
          (Nat.sqrt_le X))
  calc
    gcdCutoffCorrectionWeightedQuotientMass X X.sqrt ≤
      32 * (X : ℝ)^2 *
        (Real.log (X.sqrt : ℝ) / (X.sqrt : ℝ)) := hbase
    _ ≤
      32 * (X : ℝ)^2 *
        (Real.log (X : ℝ) *
          (2 / Real.sqrt (X : ℝ))) := by
      have hlognonneg : 0 ≤ Real.log (X.sqrt : ℝ) :=
        Real.log_nonneg (by exact_mod_cast
          (show 1 ≤ X.sqrt by omega))
      have hlogXnonneg : 0 ≤ Real.log (X : ℝ) :=
        Real.log_nonneg (by exact_mod_cast
          (show 1 ≤ X by omega))
      rw [div_eq_mul_inv]
      gcongr
    _ = 64 * (X : ℝ) *
        ((X : ℝ) / Real.sqrt (X : ℝ)) *
          Real.log (X : ℝ) := by ring
    _ = 64 * (X : ℝ) * Real.sqrt (X : ℝ) *
          Real.log (X : ℝ) := by
      rw [Real.div_sqrt]

/-- Scale with the one extra logarithm produced by absolute cutoff-coefficient
counting. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CenteredLowGCDCutoffCorrectionLogBarrier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CenteredLowGCDCutoffCorrectionLogBarrier.lean#L450).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ded7c30cf8a2ea3925ebc3902f0906a4cbcea94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
