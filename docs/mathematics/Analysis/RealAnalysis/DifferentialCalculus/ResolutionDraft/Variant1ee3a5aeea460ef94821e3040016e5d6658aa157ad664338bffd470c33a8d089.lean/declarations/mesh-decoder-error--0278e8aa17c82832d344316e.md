# mesh_decoder_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2bf22d08-f13a-133b-aeae-bcc54fbb9185",
  "kind": "theorem",
  "lexical_name": "mesh_decoder_error",
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
  "slug": "mesh-decoder-error--0278e8aa17c82832d344316e",
  "source": {
    "blob": "17789f14474833e7df21efebf0ed3377f7029189",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 173,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ResolutionDraft/Variant1ee3a5aeea460ef94821e3040016e5d6658aa157ad664338bffd470c33a8d089.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0278e8aa17c82832d344316e47ac9f4de94d00f294cb12021fdc19b309f0523e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ResolutionDraft/Variant1ee3a5aeea460ef94821e3040016e5d6658aa157ad664338bffd470c33a8d089.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2bf22d08-f13a-133b-aeae-bcc54fbb9185`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mesh_decoder_error (C : ℝ) (hC : 0 ≤ C)
    (hM : ∀ u : ℝ, 0 ≤ u → |primeLogError u| ≤ C)
    {A h η : ℝ} (hA : 1 ≤ A) (hh : 0 ≤ h) (T : ℝ → ℝ)
    (hTmem : ∀ u ∈ Icc 0 (2*A), T u ∈ Icc 0 (2*A))
    (hTdist : ∀ u ∈ Icc 0 (2*A), |T u-u| ≤ h)
    (hi : IntervalIntegrable (fun u => pairedTailTest A (T u)) volume 0 (2*A))
    (hpath : Real.exp A*((1/2 : ℝ)+5/A)*h*(4*A+C+squarePrefixBaseline) ≤ η) :
    |decodedReadout A (fun u => pairedTailTest A (T u))-squareRemovedPairedWork A| ≤ η := by
  have hA0 : 0 < A := by linarith
  have hL : 0 ≤ Real.exp A*((1/2 : ℝ)+5/A) := by positivity
  have he : 0 ≤ Real.exp A*((1/2 : ℝ)+5/A)*h := mul_nonneg hL hh
  have herr : ∀ u ∈ Icc 0 (2*A),
      |pairedTailTest A (T u)-pairedTailTest A u| ≤
        Real.exp A*((1/2 : ℝ)+5/A)*h := by
    intro u hu
    exact (paired_lipschitz hA hu (hTmem u hu)).trans
      (mul_le_mul_of_nonneg_left (hTdist u hu) hL)
  exact (decodedReadout_uniform_error C hC hM hA he
    (fun u => pairedTailTest A (T u)) hi herr).trans hpath

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ResolutionDraft/Variant1ee3a5aeea460ef94821e3040016e5d6658aa157ad664338bffd470c33a8d089.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ResolutionDraft/Variant1ee3a5aeea460ef94821e3040016e5d6658aa157ad664338bffd470c33a8d089.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17789f14474833e7df21efebf0ed3377f7029189` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
