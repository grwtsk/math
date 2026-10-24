# hasDerivAt_thetaA

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0fb828d7-4ef3-9e6f-0ba3-d5c48457a53c",
  "kind": "theorem",
  "lexical_name": "hasDerivAt_thetaA",
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
  "slug": "hasderivat-thetaa--4acd3e87cf798d91b8b776a8",
  "source": {
    "blob": "17b699fc87d4882f0ad18076248869f9ba50eedc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 306,
    "line": 291,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8d699468e8881bab5303282ac3753b7d133661875f15d9ff28e19bde17e24622.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4acd3e87cf798d91b8b776a868b94d0fce23e572045baf04946d32f942202b93",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8d699468e8881bab5303282ac3753b7d133661875f15d9ff28e19bde17e24622.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0fb828d7-4ef3-9e6f-0ba3-d5c48457a53c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 291–306.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasDerivAt_thetaA (t : ℝ) : HasDerivAt thetaA (thetaADerivSeries t) t := by
  let a := t - 1
  let b := t + 1
  have ht : t ∈ Ioo a b := by
    constructor <;> dsimp [a, b] <;> linarith
  have hseries := hasDerivAt_tsum_of_isPreconnected
    (thetaADerivCompactBound_summable a b) isOpen_Ioo ordConnected_Ioo.isPreconnected
    (fun m y _ => thetaAMode_hasDerivAt m y)
    (fun m y hy => thetaAModeDeriv_norm_le_compactBound ⟨hy.1.le, hy.2.le⟩ m)
    ht (thetaAMode_summable t) ht
  have hf : (fun z => ∑' m : ℕ, thetaAMode m z) = thetaA := by
    funext z
    exact (thetaA_eq_tsum_modes z).symm
  rw [hf] at hseries
  exact hseries

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8d699468e8881bab5303282ac3753b7d133661875f15d9ff28e19bde17e24622.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant8d699468e8881bab5303282ac3753b7d133661875f15d9ff28e19bde17e24622.lean#L291).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17b699fc87d4882f0ad18076248869f9ba50eedc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
