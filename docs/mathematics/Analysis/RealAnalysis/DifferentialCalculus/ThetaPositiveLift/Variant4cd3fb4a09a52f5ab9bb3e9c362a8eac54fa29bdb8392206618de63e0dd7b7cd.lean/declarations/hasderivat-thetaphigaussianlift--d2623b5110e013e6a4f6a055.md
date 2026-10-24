# hasDerivAt_thetaPhiGaussianLift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "132ce0b3123de93ed630dc9621c1d3f415812aaf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 136,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4c/4cd3fb4a09a52f5ab9bb3e9c362a8eac54fa29bdb8392206618de63e0dd7b7cd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c26d3f06-bc5f-45d1-5ac7-aa8f5969096f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:91aba3db-18a3-836e-ddd3-052bf4153ddd",
  "kind": "theorem",
  "lexical_name": "hasDerivAt_thetaPhiGaussianLift",
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
  "slug": "hasderivat-thetaphigaussianlift--d2623b5110e013e6a4f6a055",
  "source": {
    "blob": "132ce0b3123de93ed630dc9621c1d3f415812aaf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 136,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant4cd3fb4a09a52f5ab9bb3e9c362a8eac54fa29bdb8392206618de63e0dd7b7cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2623b5110e013e6a4f6a055a27c91d410afaa6be17b4fdc16e58b1d7cb8a8e2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant4cd3fb4a09a52f5ab9bb3e9c362a8eac54fa29bdb8392206618de63e0dd7b7cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91aba3db-18a3-836e-ddd3-052bf4153ddd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasDerivAt_thetaPhiGaussianLift
    (p : ℝ[X]) (t : ℝ) :
    HasDerivAt (thetaPhiGaussianLift p)
      (thetaPhiGaussianLift (thetaPhiDerivativeStep p) t) t := by
  induction p using Polynomial.induction_on' with
  | add p q hp hq =>
      rw [thetaPhiGaussianLift_add, thetaPhiDerivativeStep_add,
        thetaPhiGaussianLift_add]
      exact hp.add hq
  | monomial n a =>
      rw [thetaPhiGaussianLift_monomial]
      have h :=
        (hasDerivAt_thetaGaussianSum
          (2 * n + 2) (4 * n + 5) t).const_mul
          (a * Real.pi ^ (n + 1))
      have hvalue :
          thetaPhiGaussianLift
              (thetaPhiDerivativeStep
                (Polynomial.monomial n a)) t =
            a * Real.pi ^ (n + 1) *
              (((4 * n + 5 : ℕ) : ℝ) *
                  thetaGaussianSum (2 * n + 2) (4 * n + 5) t -
                4 * Real.pi *
                  thetaGaussianSum
                    (2 * n + 2 + 2) (4 * n + 5 + 4) t) := by
        rw [thetaPhiDerivativeStep_monomial,
          thetaPhiGaussianLift_add,
          thetaPhiGaussianLift_monomial,
          thetaPhiGaussianLift_monomial]
        simp only [Pi.add_apply, Nat.cast_add, Nat.cast_mul,
          Nat.cast_ofNat]
        rw [show n + 1 + 1 = n + 2 by omega,
          show 2 * (n + 1) + 2 = 2 * n + 2 + 2 by omega,
          show 4 * (n + 1) + 5 = 4 * n + 5 + 4 by omega,
          pow_succ]
        ring
      rw [hvalue]
      exact h

/-- The literal all-order source derivative candidate obtained by lifting the
all-order mode-polynomial recurrence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant4cd3fb4a09a52f5ab9bb3e9c362a8eac54fa29bdb8392206618de63e0dd7b7cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant4cd3fb4a09a52f5ab9bb3e9c362a8eac54fa29bdb8392206618de63e0dd7b7cd.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `132ce0b3123de93ed630dc9621c1d3f415812aaf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
