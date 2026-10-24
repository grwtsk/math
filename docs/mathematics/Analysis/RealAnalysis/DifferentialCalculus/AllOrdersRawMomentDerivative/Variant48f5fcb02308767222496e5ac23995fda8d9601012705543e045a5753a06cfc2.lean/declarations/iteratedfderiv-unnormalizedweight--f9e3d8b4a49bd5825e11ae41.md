# iteratedFDeriv_unnormalizedWeight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "504cce8b7d846b60694419d908ae30d5d8d4639f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 54,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/48/48f5fcb02308767222496e5ac23995fda8d9601012705543e045a5753a06cfc2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:46f1a74f-bfba-54b4-a735-13199355b4d3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:97d3daba-8083-6a61-c03a-97bbff8a9fea",
  "kind": "theorem",
  "lexical_name": "iteratedFDeriv_unnormalizedWeight",
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
  "slug": "iteratedfderiv-unnormalizedweight--f9e3d8b4a49bd5825e11ae41",
  "source": {
    "blob": "504cce8b7d846b60694419d908ae30d5d8d4639f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 54,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AllOrdersRawMomentDerivative/Variant48f5fcb02308767222496e5ac23995fda8d9601012705543e045a5753a06cfc2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9e3d8b4a49bd5825e11ae41cb79ad7796cab7b2c9167b12af696708d55d2383",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/AllOrdersRawMomentDerivative/Variant48f5fcb02308767222496e5ac23995fda8d9601012705543e045a5753a06cfc2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97d3daba-8083-6a61-c03a-97bbff8a9fea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iteratedFDeriv_unnormalizedWeight
    (i : I) :
    ∀ (n : ℕ) (theta : E) (directions : Fin n → E),
      iteratedFDeriv ℝ n
          (fun x : E => F.unnormalizedWeight x i)
          theta directions =
        F.unnormalizedWeight theta i *
          ∏ j : Fin n, F.statistic i (directions j) := by
  intro n
  induction n with
  | zero =>
      intro theta directions
      simp [iteratedFDeriv_zero_apply]
  | succ n ih =>
      intro theta directions
      have hd :
          DifferentiableAt ℝ
            (iteratedFDeriv ℝ n
              (fun x : E => F.unnormalizedWeight x i))
            theta := by
        exact
          ((F.contDiff_unnormalizedWeight i).differentiable_iteratedFDeriv
            (by simp)).differentiableAt
      rw [hd.iteratedFDeriv_succ_apply_left']
      have heq :
          (fun y : E =>
            iteratedFDeriv ℝ n
              (fun x : E => F.unnormalizedWeight x i)
              y (Fin.tail directions)) =
          (fun y : E =>
            F.unnormalizedWeight y i *
              ∏ j : Fin n, F.statistic i ((Fin.tail directions) j)) := by
        funext y
        exact ih y (Fin.tail directions)
      rw [heq]
      have hderiv :=
        (F.hasFDerivAt_unnormalizedWeight theta i).mul_const
          (∏ j : Fin n, F.statistic i ((Fin.tail directions) j))
      rw [hderiv.fderiv]
      rw [Fin.prod_univ_succ]
      simp [F.weightDerivative_apply, Fin.tail_def]
      ring

/-- The n-th derivative of the partition function is the finite sum of the
n-th derivatives of its weights. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/AllOrdersRawMomentDerivative/Variant48f5fcb02308767222496e5ac23995fda8d9601012705543e045a5753a06cfc2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AllOrdersRawMomentDerivative/Variant48f5fcb02308767222496e5ac23995fda8d9601012705543e045a5753a06cfc2.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `504cce8b7d846b60694419d908ae30d5d8d4639f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
