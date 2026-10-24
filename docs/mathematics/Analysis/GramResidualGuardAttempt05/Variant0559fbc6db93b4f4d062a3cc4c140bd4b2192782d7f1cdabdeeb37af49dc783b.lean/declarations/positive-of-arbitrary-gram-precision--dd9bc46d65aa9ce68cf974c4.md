# positive_of_arbitrary_gram_precision

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:286cde9a-b722-1cb8-ad72-0c6c7a14a20e",
  "kind": "theorem",
  "lexical_name": "positive_of_arbitrary_gram_precision",
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
  "slug": "positive-of-arbitrary-gram-precision--dd9bc46d65aa9ce68cf974c4",
  "source": {
    "blob": "674c912a7c0160b83d9743d1959e5b307993f470",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 86,
    "path": "GRWTSK/Analysis/GramResidualGuardAttempt05/Variant0559fbc6db93b4f4d062a3cc4c140bd4b2192782d7f1cdabdeeb37af49dc783b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd9bc46d65aa9ce68cf974c460fe32fde08b607c9810ffe17d5517ebec55fefa",
  "verification": {
    "reference": "docs/verification/Analysis/GramResidualGuardAttempt05/Variant0559fbc6db93b4f4d062a3cc4c140bd4b2192782d7f1cdabdeeb37af49dc783b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:286cde9a-b722-1cb8-ad72-0c6c7a14a20e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positive_of_arbitrary_gram_precision (H : E →L[𝕜] E) (hH : H.IsSymmetric)
    (happrox : ∀ ε : ℝ, 0 < ε → ∃ V : E →L[𝕜] F, ‖H-V.adjoint.comp V‖ ≤ ε) :
    H.IsPositive := by
  apply positive_of_arbitrary_precision H hH
  intro ε hε
  obtain ⟨V,hV⟩ := happrox ε hε
  exact ⟨V.adjoint.comp V,ContinuousLinearMap.isPositive_adjoint_comp_self V,hV⟩
end Gram

/-- Actual operator-norm distance to the positive cone. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/GramResidualGuardAttempt05/Variant0559fbc6db93b4f4d062a3cc4c140bd4b2192782d7f1cdabdeeb37af49dc783b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/GramResidualGuardAttempt05/Variant0559fbc6db93b4f4d062a3cc4c140bd4b2192782d7f1cdabdeeb37af49dc783b.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `674c912a7c0160b83d9743d1959e5b307993f470` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
