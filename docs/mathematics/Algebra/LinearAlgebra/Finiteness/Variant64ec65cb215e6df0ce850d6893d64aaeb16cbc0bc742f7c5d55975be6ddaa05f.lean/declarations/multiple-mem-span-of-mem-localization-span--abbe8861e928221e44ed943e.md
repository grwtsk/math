# multiple_mem_span_of_mem_localization_span

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7c875754-c95e-12ac-d311-a77b9ab272d9",
  "kind": "theorem",
  "lexical_name": "multiple_mem_span_of_mem_localization_span",
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
  "slug": "multiple-mem-span-of-mem-localization-span--abbe8861e928221e44ed943e",
  "source": {
    "blob": "7018b40eabf49ec528bd09b9d9924a3fd31165bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 104,
    "path": "GRWTSK/Algebra/LinearAlgebra/Finiteness/Variant64ec65cb215e6df0ce850d6893d64aaeb16cbc0bc742f7c5d55975be6ddaa05f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:abbe8861e928221e44ed943e4bc40eeaae862109e888e2641b85b35674a7eb67",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Finiteness/Variant64ec65cb215e6df0ce850d6893d64aaeb16cbc0bc742f7c5d55975be6ddaa05f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c875754-c95e-12ac-d311-a77b9ab272d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem multiple_mem_span_of_mem_localization_span
    {N : Type*} [AddCommMonoid N] [Module R N] [Module R' N]
    [IsScalarTower R R' N] [IsLocalization M R'] (s : Set N) (x : N)
    (hx : x ∈ Submodule.span R' s) : ∃ (t : M), t • x ∈ Submodule.span R s := by
  classical
  obtain ⟨s', hss', hs'⟩ := Submodule.mem_span_finite_of_mem_span hx
  rsuffices ⟨t, ht⟩ : ∃ t : M, t • x ∈ Submodule.span R (s' : Set N)
  · exact ⟨t, Submodule.span_mono hss' ht⟩
  clear hx hss' s
  induction s' using Finset.induction_on generalizing x with
  | empty => use 1; simpa using hs'
  | insert a s _ hs =>
  simp only [Finset.coe_insert,
    Submodule.mem_span_insert] at hs' ⊢
  rcases hs' with ⟨y, z, hz, rfl⟩
  rcases IsLocalization.surj M y with ⟨⟨y', s'⟩, e⟩
  apply congrArg (fun x ↦ x • a) at e
  simp only [algebraMap_smul] at e
  rcases hs _ hz with ⟨t, ht⟩
  refine ⟨t * s', t * y', _, (Submodule.span R (s : Set N)).smul_mem s' ht, ?_⟩
  rw [smul_add, ← smul_smul, mul_comm, ← smul_smul, ← smul_smul, ← e, mul_comm, ← Algebra.smul_def]
  simp [Submonoid.smul_def]

/-- If `S` is an `R' = M⁻¹R` algebra, and `x ∈ adjoin R' s`,
then `t • x ∈ adjoin R s` for some `t : M`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Finiteness/Variant64ec65cb215e6df0ce850d6893d64aaeb16cbc0bc742f7c5d55975be6ddaa05f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Finiteness/Variant64ec65cb215e6df0ce850d6893d64aaeb16cbc0bc742f7c5d55975be6ddaa05f.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7018b40eabf49ec528bd09b9d9924a3fd31165bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
