# prefix_sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d7d06620-361c-2b29-fb5f-b2be1f1aec8e",
  "kind": "theorem",
  "lexical_name": "prefix_sound",
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
  "slug": "prefix-sound--d5c59ddac34dcfe3e7212590",
  "source": {
    "blob": "b2f5f44f38e29ac1f1dd6d1e7bdd55cfa161b5ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 116,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/RationalEndpointJet.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d5c59ddac34dcfe3e72125904f8208abdcadea816e3323774fba206615f93112",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/RationalEndpointJet.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d7d06620-361c-2b29-fb5f-b2be1f1aec8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prefix_sound (bits : ℕ) {s : ℂ} (logs powers : ℕ → Ball) (N : ℕ)
    (hl : ∀ k ∈ Finset.Icc 1 N, Holds (logs k) (Real.log (k : ℝ) : ℂ))
    (hp : ∀ k ∈ Finset.Icc 1 N, Holds (powers k) ((k : ℂ) ^ (-s))) :
    Holds (prefix bits logs powers N).1 (finiteDirichletPowerSum N s) ∧
    Holds (prefix bits logs powers N).2 (EndpointCorrectedJet.dirichletSlope N s) := by
  revert hl hp
  induction N with
  | zero =>
    intro _ _
    simp [prefix, point, Holds, finiteDirichletPowerSum, EndpointCorrectedJet.dirichletSlope]
  | succ N ih =>
    intro hl hp
    have hlast : N + 1 ∈ Finset.Icc 1 (N + 1) := by simp
    have hsub : Finset.Icc 1 N ⊆ Finset.Icc 1 (N + 1) := by
      intro k hk
      exact Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hk).1, (Finset.mem_Icc.mp hk).2.trans (by omega)⟩
    have hprev := ih (fun k hk => hl k (hsub hk)) (fun k hk => hp k (hsub hk))
    constructor
    · have h := ballAdd_sound bits hprev.1 (hp (N + 1) hlast)
      simpa only [prefix, finiteDirichletPowerSum, EndpointCorrectedJet.positive_sum_succ] using h
    · have hterm := ballScale_sound bits (sub zero one)
        (ballMul_sound bits (hl (N + 1) hlast) (hp (N + 1) hlast))
      have hterm' : Holds (ballScale bits (sub zero one)
          (ballMul bits (logs (N + 1)) (powers (N + 1))))
          (-(Real.log ((N + 1 : ℕ) : ℝ) : ℂ) * ((N + 1 : ℕ) : ℂ) ^ (-s)) := by
        simpa only [toComplex_sub, toComplex_zero, toComplex_one, zero_sub,
          neg_one_mul, neg_mul] using hterm
      have h := ballAdd_sound bits hprev.2 hterm'
      simpa only [prefix, EndpointCorrectedJet.dirichletSlope,
        EndpointCorrectedJet.positive_sum_succ] using h

/-- Match the prototype's operation order; signed cancellation does not erase radii. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/RationalEndpointJet.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/RationalEndpointJet.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2f5f44f38e29ac1f1dd6d1e7bdd55cfa161b5ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
