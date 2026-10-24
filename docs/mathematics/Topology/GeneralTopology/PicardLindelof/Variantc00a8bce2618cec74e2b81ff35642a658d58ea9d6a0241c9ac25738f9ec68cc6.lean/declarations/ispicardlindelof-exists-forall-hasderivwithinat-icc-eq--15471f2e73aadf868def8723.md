# IsPicardLindelof.exists_forall_hasDerivWithinAt_Icc_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2b39c3387fa33a660bf7b54c9db2cbbc032069a6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 350,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c0/c00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d047a96b-222b-fc71-fdf2-ac2103a72b34",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:051ccd3c-6f4c-8e67-1abf-b7b76fd1a208",
  "kind": "theorem",
  "lexical_name": "IsPicardLindelof.exists_forall_hasDerivWithinAt_Icc_eq",
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
  "slug": "ispicardlindelof-exists-forall-hasderivwithinat-icc-eq--15471f2e73aadf868def8723",
  "source": {
    "blob": "2b39c3387fa33a660bf7b54c9db2cbbc032069a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 363,
    "line": 350,
    "path": "GRWTSK/Topology/GeneralTopology/PicardLindelof/Variantc00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15471f2e73aadf868def87230eb463571017f1e7a6a5aac86cb69988b1a534ad",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PicardLindelof/Variantc00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:051ccd3c-6f4c-8e67-1abf-b7b76fd1a208`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 350–363.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsPicardLindelof.exists_forall_hasDerivWithinAt_Icc_eq [CompleteSpace E] {v : ℝ → E → E}
    {tMin t₀ tMax : ℝ} (x₀ : E) {C R : ℝ} {L : ℝ≥0}
    (hpl : IsPicardLindelof v tMin t₀ tMax x₀ L R C) :
    ∃ f : ℝ → E, f t₀ = x₀ ∧
      ∀ t ∈ Icc tMin tMax, HasDerivWithinAt f (v t (f t)) (Icc tMin tMax) t := by
  lift C to ℝ≥0 using (norm_nonneg _).trans hpl.norm_le₀
  lift t₀ to Icc tMin tMax using hpl.ht₀
  exact PicardLindelof.exists_solution
    ⟨v, tMin, tMax, t₀, x₀, C, ⟨R, hpl.hR⟩, L, { hpl with ht₀ := t₀.property }⟩

variable {v : E → E} (t₀ : ℝ) {x₀ : E}

/-- A time-independent, continuously differentiable ODE satisfies the hypotheses of the
  Picard-Lindelöf theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PicardLindelof/Variantc00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PicardLindelof/Variantc00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6.lean#L350).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b39c3387fa33a660bf7b54c9db2cbbc032069a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
