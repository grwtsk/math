# coe_lowerCentralSeries_eq_int_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0637255f-3cf5-9ec5-535b-59b6e58b7d48",
  "kind": "theorem",
  "lexical_name": "coe_lowerCentralSeries_eq_int_aux",
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
  "slug": "coe-lowercentralseries-eq-int-aux--bdbbbd4423f97f68db1d3e0b",
  "source": {
    "blob": "322053d863463876cfa532f5378d6fb49b1d6fc0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 103,
    "path": "GRWTSK/Algebra/Nilpotent/Variantaea32382b4488d4272bf1dbe239db29d3b1921eaecb6b40b81d9d704245129a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bdbbbd4423f97f68db1d3e0be6a4b5e4afe42f269af25b17d566116c46ba9d20",
  "verification": {
    "reference": "docs/verification/Algebra/Nilpotent/Variantaea32382b4488d4272bf1dbe239db29d3b1921eaecb6b40b81d9d704245129a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0637255f-3cf5-9ec5-535b-59b6e58b7d48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem coe_lowerCentralSeries_eq_int_aux (R₁ R₂ L M : Type*)
    [CommRing R₁] [CommRing R₂] [AddCommGroup M]
    [LieRing L] [LieAlgebra R₁ L] [LieAlgebra R₂ L] [Module R₁ M] [Module R₂ M] [LieRingModule L M]
    [LieModule R₁ L M] (k : ℕ) :
    let I := lowerCentralSeries R₂ L M k; let S : Set M := {⁅a, b⁆ | (a : L) (b ∈ I)}
    (Submodule.span R₁ S : Set M) ≤ (Submodule.span R₂ S : Set M) := by
  intro I S x hx
  simp only [SetLike.mem_coe] at hx ⊢
  induction hx using Submodule.closure_induction with
  | zero => exact Submodule.zero_mem _
  | add y z hy₁ hz₁ hy₂ hz₂ => exact Submodule.add_mem _ hy₂ hz₂
  | smul_mem c y hy =>
      obtain ⟨a, b, hb, rfl⟩ := hy
      rw [← smul_lie]
      exact Submodule.subset_span ⟨c • a, b, hb, rfl⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Nilpotent/Variantaea32382b4488d4272bf1dbe239db29d3b1921eaecb6b40b81d9d704245129a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Nilpotent/Variantaea32382b4488d4272bf1dbe239db29d3b1921eaecb6b40b81d9d704245129a9.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `322053d863463876cfa532f5378d6fb49b1d6fc0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
