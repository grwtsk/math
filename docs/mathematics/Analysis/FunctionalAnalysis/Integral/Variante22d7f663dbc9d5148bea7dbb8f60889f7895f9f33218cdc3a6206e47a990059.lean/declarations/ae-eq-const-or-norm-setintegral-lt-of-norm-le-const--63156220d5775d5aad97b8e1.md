# ae_eq_const_or_norm_setIntegral_lt_of_norm_le_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "af6686e8f86c65db07d1f835d740d75ed8a26924",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 336,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e22d7f663dbc9d5148bea7dbb8f60889f7895f9f33218cdc3a6206e47a990059.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cf66e440-454f-2fe3-1b1b-9cc05543827e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0cc5e53d-a94e-f408-14ce-aefa5d8cce8d",
  "kind": "theorem",
  "lexical_name": "ae_eq_const_or_norm_setIntegral_lt_of_norm_le_const",
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
  "slug": "ae-eq-const-or-norm-setintegral-lt-of-norm-le-const--63156220d5775d5aad97b8e1",
  "source": {
    "blob": "af6686e8f86c65db07d1f835d740d75ed8a26924",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 341,
    "line": 336,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Integral/Variante22d7f663dbc9d5148bea7dbb8f60889f7895f9f33218cdc3a6206e47a990059.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63156220d5775d5aad97b8e1a15686af2e07e8843abe46d09812e43af00d053c",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Integral/Variante22d7f663dbc9d5148bea7dbb8f60889f7895f9f33218cdc3a6206e47a990059.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0cc5e53d-a94e-f408-14ce-aefa5d8cce8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 336–341.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ae_eq_const_or_norm_setIntegral_lt_of_norm_le_const [StrictConvexSpace ℝ E] (ht : μ t ≠ ∞)
    (h_le : ∀ᵐ x ∂μ.restrict t, ‖f x‖ ≤ C) :
    f =ᵐ[μ.restrict t] const α (⨍ x in t, f x ∂μ) ∨ ‖∫ x in t, f x ∂μ‖ < μ.real t * C := by
  have := Fact.mk ht.lt_top
  rw [← measureReal_restrict_apply_univ]
  exact ae_eq_const_or_norm_integral_lt_of_norm_le_const h_le
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Integral/Variante22d7f663dbc9d5148bea7dbb8f60889f7895f9f33218cdc3a6206e47a990059.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Integral/Variante22d7f663dbc9d5148bea7dbb8f60889f7895f9f33218cdc3a6206e47a990059.lean#L336).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af6686e8f86c65db07d1f835d740d75ed8a26924` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
