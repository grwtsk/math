# thetaTailPairIntegrand_integral_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:73e5e84a-df6c-58ab-9231-772e4bfa86fd",
  "kind": "theorem",
  "lexical_name": "thetaTailPairIntegrand_integral_right",
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
  "slug": "thetatailpairintegrand-integral-right--b3c7baa0c218356743d36d1c",
  "source": {
    "blob": "1a3b89bffa30445e9d3b88650c85c0104bf00e99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 83,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65Kernel/Variant53765fa084a21348742d074a34b8c6af40b84f332e600db175e26f711e4a6d41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3c7baa0c218356743d36d1c3f981d729dc7aa045cb64f5b9099c8c679775560",
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

Occurrence: `result:73e5e84a-df6c-58ab-9231-772e4bfa86fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaTailPairIntegrand_integral_right (m q : ℕ) (t : ℝ) :
    (∫ u, thetaTailPairIntegrand m q (t, u)) =
      (Ici (0 : ℝ)).indicator
        (fun t => thetaTail (2 * (q + 1)) t * evenBasis m t) t := by
  by_cases ht : 0 ≤ t
  · rw [thetaTailPairIntegrand_right m q ht, integral_indicator measurableSet_Ici,
      indicator_of_mem (show t ∈ Ici (0 : ℝ) from ht)]
    rw [show 2 * (q + 1) = (2 * q + 1) + 1 by omega, thetaTail]
    rw [← integral_mul_const]
    apply integral_congr_ae
    filter_upwards [] with u
    unfold thetaTailPairKernel
    ring
  · rw [thetaTailPairIntegrand_right_of_neg m q (lt_of_not_ge ht)]
    simp [indicator_of_notMem (show t ∉ Ici (0 : ℝ) from ht)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65Kernel/Variant53765fa084a21348742d074a34b8c6af40b84f332e600db175e26f711e4a6d41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65Kernel/Variant53765fa084a21348742d074a34b8c6af40b84f332e600db175e26f711e4a6d41.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a3b89bffa30445e9d3b88650c85c0104bf00e99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
