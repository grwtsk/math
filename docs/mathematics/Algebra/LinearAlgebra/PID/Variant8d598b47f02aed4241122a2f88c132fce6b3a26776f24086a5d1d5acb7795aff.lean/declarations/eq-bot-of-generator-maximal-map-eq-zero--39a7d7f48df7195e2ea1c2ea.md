# eq_bot_of_generator_maximal_map_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fc285a3509f0c22967fcbadc00d031fefe15182e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 63,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8d/8d598b47f02aed4241122a2f88c132fce6b3a26776f24086a5d1d5acb7795aff.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:28f99d14-87ca-05ff-2ec3-108f397e3ee9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e03ba96e-fbfb-5a4d-5336-1f57e5a93d28",
  "kind": "theorem",
  "lexical_name": "eq_bot_of_generator_maximal_map_eq_zero",
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
  "slug": "eq-bot-of-generator-maximal-map-eq-zero--39a7d7f48df7195e2ea1c2ea",
  "source": {
    "blob": "fc285a3509f0c22967fcbadc00d031fefe15182e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 63,
    "path": "GRWTSK/Algebra/LinearAlgebra/PID/Variant8d598b47f02aed4241122a2f88c132fce6b3a26776f24086a5d1d5acb7795aff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39a7d7f48df7195e2ea1c2eadf4842b76c2380732f10ef38befdf5074f265db8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PID/Variant8d598b47f02aed4241122a2f88c132fce6b3a26776f24086a5d1d5acb7795aff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e03ba96e-fbfb-5a4d-5336-1f57e5a93d28`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_bot_of_generator_maximal_map_eq_zero (b : Basis ι R M) {N : Submodule R M}
    {ϕ : M →ₗ[R] R} (hϕ : ∀ ψ : M →ₗ[R] R, ¬N.map ϕ < N.map ψ) [(N.map ϕ).IsPrincipal]
    (hgen : generator (N.map ϕ) = (0 : R)) : N = ⊥ := by
  rw [Submodule.eq_bot_iff]
  intro x hx
  refine b.ext_elem fun i ↦ ?_
  rw [(eq_bot_iff_generator_eq_zero _).mpr hgen] at hϕ
  rw [map_zero, Finsupp.zero_apply]
  exact
    (Submodule.eq_bot_iff _).mp (not_bot_lt_iff.1 <| hϕ (Finsupp.lapply i ∘ₗ ↑b.repr)) _
      ⟨x, hx, rfl⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PID/Variant8d598b47f02aed4241122a2f88c132fce6b3a26776f24086a5d1d5acb7795aff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PID/Variant8d598b47f02aed4241122a2f88c132fce6b3a26776f24086a5d1d5acb7795aff.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc285a3509f0c22967fcbadc00d031fefe15182e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
