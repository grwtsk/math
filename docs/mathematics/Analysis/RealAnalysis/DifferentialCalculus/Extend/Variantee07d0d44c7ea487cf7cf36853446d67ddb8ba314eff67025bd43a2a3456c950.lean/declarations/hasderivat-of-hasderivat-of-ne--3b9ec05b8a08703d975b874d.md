# hasDerivAt_of_hasDerivAt_of_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "30680e258ef5460b622b5929cd1e6ea9c3d99c2f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 174,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ee/ee07d0d44c7ea487cf7cf36853446d67ddb8ba314eff67025bd43a2a3456c950.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8c44c654-3d46-5195-8e04-db7aa1b73195",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:18ade9b9-3349-2f49-c787-486963992c07",
  "kind": "theorem",
  "lexical_name": "hasDerivAt_of_hasDerivAt_of_ne",
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
  "slug": "hasderivat-of-hasderivat-of-ne--3b9ec05b8a08703d975b874d",
  "source": {
    "blob": "30680e258ef5460b622b5929cd1e6ea9c3d99c2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 174,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Extend/Variantee07d0d44c7ea487cf7cf36853446d67ddb8ba314eff67025bd43a2a3456c950.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b9ec05b8a08703d975b874d662a963d59d304f6b59c3b4aa4dd74869a5c0f5b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Extend/Variantee07d0d44c7ea487cf7cf36853446d67ddb8ba314eff67025bd43a2a3456c950.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18ade9b9-3349-2f49-c787-486963992c07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasDerivAt_of_hasDerivAt_of_ne {f g : ℝ → E} {x : ℝ}
    (f_diff : ∀ y ≠ x, HasDerivAt f (g y) y) (hf : ContinuousAt f x)
    (hg : ContinuousAt g x) : HasDerivAt f (g x) x := by
  have A : HasDerivWithinAt f (g x) (Ici x) x := by
    have diff : DifferentiableOn ℝ f (Ioi x) := fun y hy =>
      (f_diff y (ne_of_gt hy)).differentiableAt.differentiableWithinAt
    -- next line is the nontrivial bit of this proof, appealing to differentiability
    -- extension results.
    apply
      hasDerivWithinAt_Ici_of_tendsto_deriv diff hf.continuousWithinAt
        self_mem_nhdsWithin
    have : Tendsto g (𝓝[>] x) (𝓝 (g x)) := tendsto_inf_left hg
    apply this.congr' _
    apply mem_of_superset self_mem_nhdsWithin fun y hy => _
    intros y hy
    exact (f_diff y (ne_of_gt hy)).deriv.symm
  have B : HasDerivWithinAt f (g x) (Iic x) x := by
    have diff : DifferentiableOn ℝ f (Iio x) := fun y hy =>
      (f_diff y (ne_of_lt hy)).differentiableAt.differentiableWithinAt
    -- next line is the nontrivial bit of this proof, appealing to differentiability
    -- extension results.
    apply
      hasDerivWithinAt_Iic_of_tendsto_deriv diff hf.continuousWithinAt
        self_mem_nhdsWithin
    have : Tendsto g (𝓝[<] x) (𝓝 (g x)) := tendsto_inf_left hg
    apply this.congr' _
    apply mem_of_superset self_mem_nhdsWithin fun y hy => _
    intros y hy
    exact (f_diff y (ne_of_lt hy)).deriv.symm
  simpa using B.union A

/-- If a real function `f` has a derivative `g` everywhere but at a point, and `f` and `g` are
continuous at this point, then `g` is the derivative of `f` everywhere. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Extend/Variantee07d0d44c7ea487cf7cf36853446d67ddb8ba314eff67025bd43a2a3456c950.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Extend/Variantee07d0d44c7ea487cf7cf36853446d67ddb8ba314eff67025bd43a2a3456c950.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30680e258ef5460b622b5929cd1e6ea9c3d99c2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
