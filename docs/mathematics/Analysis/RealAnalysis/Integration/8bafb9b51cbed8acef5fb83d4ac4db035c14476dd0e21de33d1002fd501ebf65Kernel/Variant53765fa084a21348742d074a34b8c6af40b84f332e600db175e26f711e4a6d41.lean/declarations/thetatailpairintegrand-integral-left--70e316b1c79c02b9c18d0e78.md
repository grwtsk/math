# thetaTailPairIntegrand_integral_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4145f7a4-5f9d-055e-886b-20ea5ebc9969",
  "kind": "theorem",
  "lexical_name": "thetaTailPairIntegrand_integral_left",
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
  "slug": "thetatailpairintegrand-integral-left--70e316b1c79c02b9c18d0e78",
  "source": {
    "blob": "1a3b89bffa30445e9d3b88650c85c0104bf00e99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 99,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65Kernel/Variant53765fa084a21348742d074a34b8c6af40b84f332e600db175e26f711e4a6d41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70e316b1c79c02b9c18d0e788d482b63832f942e76d708121097e37796288420",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65Kernel/Variant53765fa084a21348742d074a34b8c6af40b84f332e600db175e26f711e4a6d41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4145f7a4-5f9d-055e-886b-20ea5ebc9969`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaTailPairIntegrand_integral_left (m q : ℕ) (u : ℝ) :
    (∫ t, thetaTailPairIntegrand m q (t, u)) =
      (Ici (0 : ℝ)).indicator (fun u => thetaPhi u *
        ∫ t in Icc (0 : ℝ) u,
          ((u - t) ^ (2 * q + 1) / ((2 * q + 1).factorial : ℝ)) *
            evenBasis m t) u := by
  rw [thetaTailPairIntegrand_left, integral_indicator measurableSet_Icc]
  by_cases hu : 0 ≤ u
  · rw [indicator_of_mem (show u ∈ Ici (0 : ℝ) from hu), ← integral_const_mul]
    apply integral_congr_ae
    filter_upwards [] with t
    unfold thetaTailPairKernel
    ring
  · rw [indicator_of_notMem (show u ∉ Ici (0 : ℝ) from hu), Icc_eq_empty_of_lt (lt_of_not_ge hu)]
    simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65Kernel/Variant53765fa084a21348742d074a34b8c6af40b84f332e600db175e26f711e4a6d41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65Kernel/Variant53765fa084a21348742d074a34b8c6af40b84f332e600db175e26f711e4a6d41.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a3b89bffa30445e9d3b88650c85c0104bf00e99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
