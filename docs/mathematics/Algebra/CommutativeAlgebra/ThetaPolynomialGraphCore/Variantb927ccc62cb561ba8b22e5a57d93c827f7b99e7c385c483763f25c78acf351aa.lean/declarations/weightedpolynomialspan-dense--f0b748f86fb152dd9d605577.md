# weightedPolynomialSpan_dense

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "898d80d2625d5b359c3f6ed64461c2b04f4fdd4b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 211,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b927ccc62cb561ba8b22e5a57d93c827f7b99e7c385c483763f25c78acf351aa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a23caef5-7867-ba32-0fb6-02a7f53c8088",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:530ee850-b32a-8180-e0e5-c96aaf466cb1",
  "kind": "theorem",
  "lexical_name": "weightedPolynomialSpan_dense",
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
  "slug": "weightedpolynomialspan-dense--f0b748f86fb152dd9d605577",
  "source": {
    "blob": "898d80d2625d5b359c3f6ed64461c2b04f4fdd4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 211,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ThetaPolynomialGraphCore/Variantb927ccc62cb561ba8b22e5a57d93c827f7b99e7c385c483763f25c78acf351aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0b748f86fb152dd9d605577e7dd10a795b789450f064a6a94da63c9f0020ced",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ThetaPolynomialGraphCore/Variantb927ccc62cb561ba8b22e5a57d93c827f7b99e7c385c483763f25c78acf351aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:530ee850-b32a-8180-e0e5-c96aaf466cb1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedPolynomialSpan_dense {t : ℝ} (ht : 0 ≤ t) :
    Dense (weightedPolynomialSpan t ht : Set (Lp ℂ 2 (thetaGraphMeasure t))) := by
  have : IsFiniteMeasure (thetaGraphMeasure t) := thetaGraphMeasure_finite ht
  rw [Submodule.dense_iff_topologicalClosure_eq_top, Submodule.topologicalClosure_eq_top_iff]
  apply (Submodule.eq_bot_iff _).mpr
  intro f hf
  apply complex_annihilator_eq_zero (thetaGraphMeasure t)
    (thetaGraphMeasure_exp_abs_integrable ht) (fun n => thetaGraphMeasure_power_memLp n ht) f
  intro n
  have hinner : ⟪weightedPowerVector t ht n, f⟫_ℂ = 0 :=
    (Submodule.mem_orthogonal _ _).mp hf _ (Submodule.subset_span ⟨n, rfl⟩)
  rw [L2.inner_def] at hinner
  calc
    _ = ∫ x, ⟪weightedPowerVector t ht n x, f x⟫_ℂ ∂thetaGraphMeasure t := by
      apply integral_congr_ae
      filter_upwards [weightedPowerVector_ae n ht] with x hx
      rw [hx]
      simp [RCLike.inner_apply, mul_comm]
    _ = 0 := hinner


/-- The same maximal-domain vector, viewed in its exact graph-weighted L² space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ThetaPolynomialGraphCore/Variantb927ccc62cb561ba8b22e5a57d93c827f7b99e7c385c483763f25c78acf351aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ThetaPolynomialGraphCore/Variantb927ccc62cb561ba8b22e5a57d93c827f7b99e7c385c483763f25c78acf351aa.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `898d80d2625d5b359c3f6ed64461c2b04f4fdd4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
