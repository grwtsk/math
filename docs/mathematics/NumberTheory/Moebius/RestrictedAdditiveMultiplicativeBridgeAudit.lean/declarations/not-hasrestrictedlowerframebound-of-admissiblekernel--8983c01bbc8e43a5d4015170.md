# not_hasRestrictedLowerFrameBound_of_admissibleKernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b52bb72d-b957-a789-e029-ac09e929486f",
  "kind": "theorem",
  "lexical_name": "not_hasRestrictedLowerFrameBound_of_admissibleKernel",
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
  "slug": "not-hasrestrictedlowerframebound-of-admissiblekernel--8983c01bbc8e43a5d4015170",
  "source": {
    "blob": "b7acd5563474eb968475d20184aeb88fefb6b1b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 35,
    "path": "GRWTSK/NumberTheory/Moebius/RestrictedAdditiveMultiplicativeBridgeAudit.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8983c01bbc8e43a5d4015170aa049cf467ce0ebf30aab9ab8c74a8add9a1ef1c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/RestrictedAdditiveMultiplicativeBridgeAudit.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b52bb72d-b957-a789-e029-ac09e929486f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_hasRestrictedLowerFrameBound_of_admissibleKernel
    {ι κ : Type} [Fintype ι] [Fintype κ]
    (T : FiniteArithmeticBridge ι κ)
    (D : RestrictedDifferenceSpace (ι := ι))
    (f : FiniteCenteredPacket ι)
    (hfD : f ∈ D)
    (hf : f ≠ 0)
    (hker : T.linearPart f = 0) :
    ∀ A : ℝ, 0 < A → ¬ HasRestrictedLowerFrameBound T D A := by
  intro A hA hframe
  have h := hframe.2 f hfD
  have hzero : finitePacketEnergy (0 : FiniteArithmeticTargetPacket κ) = 0 := by
    simp [finitePacketEnergy]
  rw [hker, hzero] at h
  have henergy : 0 < finitePacketEnergy f := by
    classical
    have hex : ∃ i, f i ≠ 0 := by
      by_contra! hz
      exact hf (funext hz)
    obtain ⟨i, hi⟩ := hex
    have hle : ‖f i‖ ^ 2 ≤ finitePacketEnergy f := by
      exact Finset.single_le_sum
        (fun j _ => sq_nonneg ‖f j‖) (Finset.mem_univ i)
    exact lt_of_lt_of_le (pow_pos (norm_pos_iff.mpr hi) 2) hle
  nlinarith

/-- Full-space noninjectivity alone says nothing about a restricted arithmetic
difference space if no nonzero kernel vector is known to lie in that space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RestrictedAdditiveMultiplicativeBridgeAudit.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RestrictedAdditiveMultiplicativeBridgeAudit.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7acd5563474eb968475d20184aeb88fefb6b1b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
