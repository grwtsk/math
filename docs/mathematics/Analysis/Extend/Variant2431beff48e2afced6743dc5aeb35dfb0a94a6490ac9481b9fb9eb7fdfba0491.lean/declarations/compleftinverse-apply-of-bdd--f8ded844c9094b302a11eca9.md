# compLeftInverse_apply_of_bdd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b8140733071406b0be915248b2f96d7b74acca1a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 116,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/2431beff48e2afced6743dc5aeb35dfb0a94a6490ac9481b9fb9eb7fdfba0491.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:60cf6b04-54dc-2c49-2961-92a4f72e1f63",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e5182a6d-ec40-8f14-1534-d399afebfa9c",
  "kind": "theorem",
  "lexical_name": "compLeftInverse_apply_of_bdd",
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
  "slug": "compleftinverse-apply-of-bdd--f8ded844c9094b302a11eca9",
  "source": {
    "blob": "b8140733071406b0be915248b2f96d7b74acca1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 116,
    "path": "GRWTSK/Analysis/Extend/Variant2431beff48e2afced6743dc5aeb35dfb0a94a6490ac9481b9fb9eb7fdfba0491.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8ded844c9094b302a11eca94b3142cf3614647da51caf91762e2335ade25ab0",
  "verification": {
    "reference": "docs/verification/Analysis/Extend/Variant2431beff48e2afced6743dc5aeb35dfb0a94a6490ac9481b9fb9eb7fdfba0491.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5182a6d-ec40-8f14-1534-d399afebfa9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compLeftInverse_apply_of_bdd (h_norm : ∃ (C : ℝ), ∀ (x : E), ‖f x‖ ≤ C * ‖g x‖)
    (x : E) (y : Eₗ) (hx : g x = y) :
    f.compLeftInverse g ⟨y, ⟨x, hx⟩⟩ = f x := by
  simp [compLeftInverse, h_norm, ← hx]

end compInv

section NormedDivisionRing

variable [NormedDivisionRing 𝕜] [NormedDivisionRing 𝕜₂] {σ₁₂ : 𝕜 →+* 𝕜₂}
  [AddCommGroup E] [SeminormedAddCommGroup Eₗ] [NormedAddCommGroup F]
  [Module 𝕜 E] [Module 𝕜₂ F] [IsBoundedSMul 𝕜₂ F] [Module 𝕜 Eₗ] [IsBoundedSMul 𝕜 Eₗ]
  [CompleteSpace F]

variable (f : E →ₛₗ[σ₁₂] F) (e : E →ₗ[𝕜] Eₗ)

/-- Extension of a linear map `f : E →ₛₗ[σ₁₂] F` to a continuous linear map `Eₗ →SL[σ₁₂] F`,
where `E` is a normed space and `F` a complete normed space, using a dense map `e : E →ₗ[𝕜] Eₗ`
together with a bound `‖f x‖ ≤ C * ‖e x‖` for all `x : E`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Extend/Variant2431beff48e2afced6743dc5aeb35dfb0a94a6490ac9481b9fb9eb7fdfba0491.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Extend/Variant2431beff48e2afced6743dc5aeb35dfb0a94a6490ac9481b9fb9eb7fdfba0491.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8140733071406b0be915248b2f96d7b74acca1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
