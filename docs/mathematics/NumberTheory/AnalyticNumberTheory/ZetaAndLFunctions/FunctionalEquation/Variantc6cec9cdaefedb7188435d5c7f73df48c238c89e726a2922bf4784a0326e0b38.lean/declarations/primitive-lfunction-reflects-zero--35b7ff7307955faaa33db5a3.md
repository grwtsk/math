# primitive_LFunction_reflects_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "feef12b128697985fc70940b867fa510d02562ae",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 102,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c6/c6cec9cdaefedb7188435d5c7f73df48c238c89e726a2922bf4784a0326e0b38.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ffbcdcd7-3de0-cb53-ec5f-1d8aef525eb1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b0359f4f-f379-01c7-2981-c0140938f8fa",
  "kind": "theorem",
  "lexical_name": "primitive_LFunction_reflects_zero",
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
  "slug": "primitive-lfunction-reflects-zero--35b7ff7307955faaa33db5a3",
  "source": {
    "blob": "feef12b128697985fc70940b867fa510d02562ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 102,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/FunctionalEquation/Variantc6cec9cdaefedb7188435d5c7f73df48c238c89e726a2922bf4784a0326e0b38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35b7ff7307955faaa33db5a3e99fd1e410184ab7a1a3788671d518733494bfa3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/FunctionalEquation/Variantc6cec9cdaefedb7188435d5c7f73df48c238c89e726a2922bf4784a0326e0b38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0359f4f-f379-01c7-2981-c0140938f8fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primitive_LFunction_reflects_zero
    {q : ℕ} [NeZero q] {χ : DirichletCharacter ℂ q}
    (hPrimitive : DirichletCharacter.IsPrimitive χ)
    {s : ℂ} (hs0 : 0 < s.re) (hsHalf : s.re < (1 / 2 : ℝ))
    (hsZero : DirichletCharacter.LFunction χ s = 0) :
    DirichletCharacter.LFunction χ (criticalReflection s) = 0 := by
  have hInverseL :
      DirichletCharacter.LFunction χ⁻¹ (1 - s) = 0 :=
    LFunction_zero_reflect χ hPrimitive hs0 (by linarith) hsZero
  have hOneSubNe : (1 - s : ℂ) ≠ 1 := by
    intro h
    have : s = 0 := sub_eq_self.mp h
    subst s
    norm_num at hs0
  rw [LFunction_inverse_eq_star χ hOneSubNe] at hInverseL
  have hUnstar := congrArg (starRingEnd ℂ) hInverseL
  simpa [criticalReflection, map_sub] using hUnstar

/-- Explicit functional-equation data for one primitive-character channel.

`functionalEquation` is the same-character form obtained after the required
conjugation compatibility has been proved.  Its factor is a function of `s`:
mathlib's normalization contains the nonconstant conductor power
`q ^ (1 / 2 - s)` as well as the root number.  For a non-real character the
conjugation compatibility is also substantive because mathlib's primitive
functional equation first relates `χ` to `χ⁻¹`.
-/
@[surface_interface]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/FunctionalEquation/Variantc6cec9cdaefedb7188435d5c7f73df48c238c89e726a2922bf4784a0326e0b38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/FunctionalEquation/Variantc6cec9cdaefedb7188435d5c7f73df48c238c89e726a2922bf4784a0326e0b38.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `feef12b128697985fc70940b867fa510d02562ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
