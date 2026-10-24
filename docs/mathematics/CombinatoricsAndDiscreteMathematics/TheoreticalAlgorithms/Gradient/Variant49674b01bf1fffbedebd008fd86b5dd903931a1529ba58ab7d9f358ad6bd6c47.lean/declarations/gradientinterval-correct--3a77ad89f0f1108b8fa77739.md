# gradientInterval_correct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "522802911ff0d2feac536666bffbcb40dbd25969",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 139,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/49/49674b01bf1fffbedebd008fd86b5dd903931a1529ba58ab7d9f358ad6bd6c47.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:de0e0b20-462c-941d-065b-4e5a296d78a6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:65196d14-bcbd-e46a-71cd-45454bae8207",
  "kind": "theorem",
  "lexical_name": "gradientInterval_correct",
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
  "slug": "gradientinterval-correct--3a77ad89f0f1108b8fa77739",
  "source": {
    "blob": "522802911ff0d2feac536666bffbcb40dbd25969",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 139,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gradient/Variant49674b01bf1fffbedebd008fd86b5dd903931a1529ba58ab7d9f358ad6bd6c47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a77ad89f0f1108b8fa77739c265f7fa687a7eebf623aa0c90380fadefb40bc4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gradient/Variant49674b01bf1fffbedebd008fd86b5dd903931a1529ba58ab7d9f358ad6bd6c47.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65196d14-bcbd-e46a-71cd-45454bae8207`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gradientInterval_correct (e : Expr) (hsupp : ExprSupported e)
    (B : Box) (ρ : Nat → ℝ) (hρ : Box.envMem ρ B)
    (hzero : ∀ i, i ≥ B.length → ρ i = 0)
    (i : Fin B.length) :
    deriv (Expr.evalAlong e ρ i.val) (ρ i.val) ∈
      ((gradientIntervalN e B B.length)[i.val]?).getD default := by
  -- The i-th element of gradientIntervalN is derivInterval e (toEnv B) i
  have hget : (gradientIntervalN e B B.length)[i.val]? =
      some (derivInterval e (Box.toEnv B) i.val) := by
    simp only [gradientIntervalN]
    rw [List.getElem?_map]
    simp only [List.getElem?_range i.isLt, Option.map_some]
  simp only [hget, Option.getD]
  -- Apply the AD correctness theorem
  have henv : ∀ j, ρ j ∈ Box.toEnv B j := Box.envMem_toEnv ρ B hρ hzero
  exact derivInterval_correct_idx e hsupp ρ (Box.toEnv B) i.val henv (ρ i.val) (henv i.val)

/-- If we prune a coordinate to lo because ∂f/∂xᵢ > 0, the minimum is preserved.
    Informal: if f is increasing in xᵢ on B, then min{f(x) : x ∈ B} = min{f(x) : xᵢ = B[i].lo}.
    NOTE: Requires ρ j = 0 for j ≥ B.length (standard assumption for box membership). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gradient/Variant49674b01bf1fffbedebd008fd86b5dd903931a1529ba58ab7d9f358ad6bd6c47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gradient/Variant49674b01bf1fffbedebd008fd86b5dd903931a1529ba58ab7d9f358ad6bd6c47.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `522802911ff0d2feac536666bffbcb40dbd25969` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
