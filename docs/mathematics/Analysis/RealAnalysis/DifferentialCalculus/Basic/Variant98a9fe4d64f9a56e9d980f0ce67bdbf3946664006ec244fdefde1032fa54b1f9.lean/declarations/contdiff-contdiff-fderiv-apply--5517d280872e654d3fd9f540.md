# ContDiff.contDiff_fderiv_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b18329b4a2146f6fafc6cf7f9f3da76c9d12c82f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1326,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/98/98a9fe4d64f9a56e9d980f0ce67bdbf3946664006ec244fdefde1032fa54b1f9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7aa97389-2a2e-055f-4aad-2c4ed830900e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:04963372-2d76-1d2f-6068-77e68a6920ed",
  "kind": "theorem",
  "lexical_name": "ContDiff.contDiff_fderiv_apply",
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
  "slug": "contdiff-contdiff-fderiv-apply--5517d280872e654d3fd9f540",
  "source": {
    "blob": "b18329b4a2146f6fafc6cf7f9f3da76c9d12c82f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1350,
    "line": 1326,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant98a9fe4d64f9a56e9d980f0ce67bdbf3946664006ec244fdefde1032fa54b1f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5517d280872e654d3fd9f540810cc0f5cd84f2fb4a7e428a311d2a639f253841",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant98a9fe4d64f9a56e9d980f0ce67bdbf3946664006ec244fdefde1032fa54b1f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04963372-2d76-1d2f-6068-77e68a6920ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1326–1350.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContDiff.contDiff_fderiv_apply {f : E → F} (hf : ContDiff 𝕜 n f) (hmn : m + 1 ≤ n) :
    ContDiff 𝕜 m fun p : E × E => (fderiv 𝕜 f p.1 : E →L[𝕜] F) p.2 := by
  rw [← contDiffOn_univ] at hf ⊢
  rw [← fderivWithin_univ, ← univ_prod_univ]
  exact contDiffOn_fderivWithin_apply hf uniqueDiffOn_univ hmn

end bundled

section deriv

/-!
### One dimension

All results up to now have been expressed in terms of the general Fréchet derivative `fderiv`. For
maps defined on the field, the one-dimensional derivative `deriv` is often easier to use. In this
paragraph, we reformulate some higher smoothness results in terms of `deriv`.
-/


variable {f₂ : 𝕜 → F} {s₂ : Set 𝕜}

open ContinuousLinearMap (smulRight)

/-- A function is `C^(n + 1)` on a domain with unique derivatives if and only if it is
differentiable there, and its derivative (formulated with `derivWithin`) is `C^n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant98a9fe4d64f9a56e9d980f0ce67bdbf3946664006ec244fdefde1032fa54b1f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant98a9fe4d64f9a56e9d980f0ce67bdbf3946664006ec244fdefde1032fa54b1f9.lean#L1326).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b18329b4a2146f6fafc6cf7f9f3da76c9d12c82f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
