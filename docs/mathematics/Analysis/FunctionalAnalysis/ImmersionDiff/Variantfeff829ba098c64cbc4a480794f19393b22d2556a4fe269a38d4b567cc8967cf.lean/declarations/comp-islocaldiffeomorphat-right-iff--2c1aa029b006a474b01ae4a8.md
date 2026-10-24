# comp_isLocalDiffeomorphAt_right_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0d395f7b-6a0c-40da-603e-95ef6bf85fb7",
  "kind": "lemma",
  "lexical_name": "comp_isLocalDiffeomorphAt_right_iff",
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
  "slug": "comp-islocaldiffeomorphat-right-iff--2c1aa029b006a474b01ae4a8",
  "source": {
    "blob": "a7ea07a146cefbc700d2c5398691fc2aa9c6a7d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 164,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/ImmersionDiff/Variantfeff829ba098c64cbc4a480794f19393b22d2556a4fe269a38d4b567cc8967cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c1aa029b006a474b01ae4a83e48fdd3a65372fb2739cdcd9097f0b9298b6c6d",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/ImmersionDiff/Variantfeff829ba098c64cbc4a480794f19393b22d2556a4fe269a38d4b567cc8967cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d395f7b-6a0c-40da-603e-95ef6bf85fb7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma comp_isLocalDiffeomorphAt_right_iff (hf : ContinuousAt f x)
    {g : M' → N} (hg : IsLocalDiffeomorphAt I' J n g (f x)) (hn : n ≠ 0) :
    IsDiffImmersionAt I I' f x ↔  IsDiffImmersionAt I J (g ∘ f) x := by
  refine ⟨fun hf ↦ hf.comp_isLocalDiffeomorphAt_right hg hn, fun h ↦ ?_⟩
  apply (h.comp_isLocalDiffeomorphAt_right hg.localInverse_isLocalDiffeomorphAt hn).congr
  symm
  exact Filter.eventuallyEq_of_mem (hf hg.localInverse_eventuallyEq_left) (by intro; simp)

/-- If `mfderiv I J f x` is injective and `N` is finite-dimensional, then `f` is an immersion
(in the sense of differentials) at `x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/ImmersionDiff/Variantfeff829ba098c64cbc4a480794f19393b22d2556a4fe269a38d4b567cc8967cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/ImmersionDiff/Variantfeff829ba098c64cbc4a480794f19393b22d2556a4fe269a38d4b567cc8967cf.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7ea07a146cefbc700d2c5398691fc2aa9c6a7d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
