# represent_phase_ker_eq_jacobson

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:990163a1-6272-8938-ef5a-85071988e1c3",
  "kind": "theorem",
  "lexical_name": "represent_phase_ker_eq_jacobson",
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
  "slug": "represent-phase-ker-eq-jacobson--0eac3d295fbee4bd802340f8",
  "source": {
    "blob": "f9a1b9ab14a9b517709595fb1f00671920ad4b63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 525,
    "line": 488,
    "path": "GRWTSK/Algebra/CharacteristicPhaseFamily/Variante00c276c40e4f3a4e4325f5d5eaccaceb5cbf64f5ac751ed8b4c67c38de99f9c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0eac3d295fbee4bd802340f8d41c22a7318d885b9a35cb163d62b66c3ecfb07c",
  "verification": {
    "reference": "docs/verification/Algebra/CharacteristicPhaseFamily/Variante00c276c40e4f3a4e4325f5d5eaccaceb5cbf64f5ac751ed8b4c67c38de99f9c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:990163a1-6272-8938-ef5a-85071988e1c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 488–525.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem represent_phase_ker_eq_jacobson (χ : ℂ) (hχ : Complex.normSq χ = 1) :
    RingHom.ker (representPhase χ hχ).toRingHom =
      Ring.jacobson (CharacteristicFiber (χ.re : ℂ)) := by
  by_cases hi : χ.im = 0
  · have hc : (χ.re : ℂ) ^ 2 = 1 := by
      have hr : χ.re ^ 2 = 1 := by simpa [Complex.normSq_apply, hi, pow_two] using hχ
      exact_mod_cast hr
    rw [represent_phase_eq_scalar_observe_repeated χ hχ hi hc]
    change RingHom.ker ((algebraMap ℂ PhaseMatrix).comp
      (observeRepeated (χ.re : ℂ) hc).toRingHom) = _
    rw [RingHom.ker_comp_of_injective _ (FaithfulSMul.algebraMap_injective ℂ PhaseMatrix)]
    exact repeated_kernel_eq_jacobson _ hc
  · have hc : (χ.re : ℂ) ^ 2 ≠ 1 := by
      intro hc
      have hd := (characteristic_discriminant_eq_zero_iff (χ.re : ℂ)).mpr hc
      exact hi ((characteristic_discriminant_unit_phase_eq_zero_iff χ hχ).mp hd)
    rw [jacobson_eq_bot_of_parameter_sq_ne_one _ hc]
    apply bot_unique
    intro z hz
    obtain ⟨p, rfl⟩ := AdjoinRoot.mk_surjective z
    have hp : aeval (phaseRotation χ) p = 0 := by
      change representPhase χ hχ (AdjoinRoot.mk _ p) = 0 at hz
      rwa [represent_phase_apply_mk] at hz
    rw [aeval_phase_rotation_diagonal] at hp
    have hpa : p.eval χ = 0 := by
      simpa using congrArg (fun M : PhaseMatrix ↦ M 0 0) hp
    have hpb : p.eval (conj χ) = 0 := by
      simpa using congrArg (fun M : PhaseMatrix ↦ M 1 1) hp
    have hne : χ ≠ conj χ := by
      intro h
      have him := congrArg Complex.im h
      simp only [Complex.conj_im] at him
      exact hi (by linarith)
    rw [Ideal.mem_bot, AdjoinRoot.mk_eq_zero, ← phase_rotation_charpoly_eq_fiber χ hχ,
      phase_rotation_charpoly]
    exact (isCoprime_X_sub_C_of_isUnit_sub (sub_ne_zero.mpr hne).isUnit).mul_dvd
      (dvd_iff_isRoot.mpr hpa) (dvd_iff_isRoot.mpr hpb)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/CharacteristicPhaseFamily/Variante00c276c40e4f3a4e4325f5d5eaccaceb5cbf64f5ac751ed8b4c67c38de99f9c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CharacteristicPhaseFamily/Variante00c276c40e4f3a4e4325f5d5eaccaceb5cbf64f5ac751ed8b4c67c38de99f9c.lean#L488).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9a1b9ab14a9b517709595fb1f00671920ad4b63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
