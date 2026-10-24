# restrictScalars_of_isIntegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4b662ae5-7ea4-b9b4-7a41-2a6c70c16a0c",
  "kind": "theorem",
  "lexical_name": "restrictScalars_of_isIntegral",
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
  "slug": "restrictscalars-of-isintegral--ac97bfe9fe61543eb0e4af36",
  "source": {
    "blob": "cca6655112d4a938c47e8076287e10b113b1edb9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 238,
    "path": "GRWTSK/Algebra/Integral/Variant571d3ab7b029944c0f1311703e11939b7481d61dd04b48ed6a6528cee41aab9a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac97bfe9fe61543eb0e4af362a2f64728b01b71afad624677b504990715f4340",
  "verification": {
    "reference": "docs/verification/Algebra/Integral/Variant571d3ab7b029944c0f1311703e11939b7481d61dd04b48ed6a6528cee41aab9a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b662ae5-7ea4-b9b4-7a41-2a6c70c16a0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem restrictScalars_of_isIntegral [int : Algebra.IsIntegral R S]
    {a : A} (h : IsAlgebraic S a) : IsAlgebraic R a := by
  by_cases hRS : Function.Injective (algebraMap R S)
  on_goal 2 => exact (Algebra.isAlgebraic_of_not_injective
    fun h ↦ hRS <| .of_comp (IsScalarTower.algebraMap_eq R S A ▸ h)).1 _
  have := hRS.noZeroDivisors _ (map_zero _) (map_mul _)
  have ⟨s, hs, int_s⟩ := h.exists_integral_multiple
  cases subsingleton_or_nontrivial R
  · have := Module.subsingleton R S
    exact (is_transcendental_of_subsingleton _ _ h).elim
  have ⟨r, hr, _, e⟩ := (int.1 s).isAlgebraic.exists_nonzero_dvd (mem_nonZeroDivisors_of_ne_zero hs)
  refine .of_smul_isIntegral (y := r) (by rwa [isNilpotent_iff_eq_zero]) ?_
  rw [Algebra.smul_def, IsScalarTower.algebraMap_apply R S,
    e, ← Algebra.smul_def, mul_comm, mul_smul]
  exact isIntegral_trans _ (int_s.smul _)

set_option backward.isDefEq.respectTransparency.types false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Integral/Variant571d3ab7b029944c0f1311703e11939b7481d61dd04b48ed6a6528cee41aab9a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Integral/Variant571d3ab7b029944c0f1311703e11939b7481d61dd04b48ed6a6528cee41aab9a.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cca6655112d4a938c47e8076287e10b113b1edb9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
