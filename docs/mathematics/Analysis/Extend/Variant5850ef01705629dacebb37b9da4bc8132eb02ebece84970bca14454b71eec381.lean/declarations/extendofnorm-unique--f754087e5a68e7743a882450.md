# extendOfNorm_unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:885cf15b-445b-4826-dc36-13e50c1a9e03",
  "kind": "theorem",
  "lexical_name": "extendOfNorm_unique",
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
  "slug": "extendofnorm-unique--f754087e5a68e7743a882450",
  "source": {
    "blob": "c8dafc87a52fc650a21d7d3f63eca65e8db26730",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 162,
    "path": "GRWTSK/Analysis/Extend/Variant5850ef01705629dacebb37b9da4bc8132eb02ebece84970bca14454b71eec381.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f754087e5a68e7743a882450f7c1094f596180e4ab4930c8fb0f76c3046eb2d5",
  "verification": {
    "reference": "docs/verification/Analysis/Extend/Variant5850ef01705629dacebb37b9da4bc8132eb02ebece84970bca14454b71eec381.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:885cf15b-445b-4826-dc36-13e50c1a9e03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem extendOfNorm_unique (h_dense : DenseRange e) (C : ℝ) (h_norm : ∀ (x : E), ‖f x‖ ≤ C * ‖e x‖)
    (g : Eₗ →SL[σ₁₂] F) (H : g.toLinearMap.comp e = f) : extendOfNorm f e = g := by
  apply ContinuousLinearMap.extend_unique
  · simpa using! h_dense
  · exact isUniformEmbedding_subtype_val.isUniformInducing
  ext ⟨y, x, hxy⟩
  rw [compLeftInverse_apply_of_bdd _ _ ⟨C, h_norm⟩ x y hxy]
  simp [← hxy, ← H]

end NormedDivisionRing

section NormedField

variable [NontriviallyNormedField 𝕜] [NontriviallyNormedField 𝕜₂] {σ₁₂ : 𝕜 →+* 𝕜₂}
  [NormedAddCommGroup F] [SeminormedAddCommGroup Eₗ]
  [NormedSpace 𝕜₂ F] [NormedSpace 𝕜 Eₗ]
  [AddCommGroup E] [Module 𝕜 E] [CompleteSpace F]

variable {f : E →ₛₗ[σ₁₂] F} {e : E →ₗ[𝕜] Eₗ}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Extend/Variant5850ef01705629dacebb37b9da4bc8132eb02ebece84970bca14454b71eec381.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Extend/Variant5850ef01705629dacebb37b9da4bc8132eb02ebece84970bca14454b71eec381.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8dafc87a52fc650a21d7d3f63eca65e8db26730` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
