# iteratedDerivWithin_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a7f73a17e5e4f46fe2195575119bd45300b53819",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 186,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5c/5cb19ca3047b8878e6ca8ab50473e65e6483b18cfc2b1ae21b3e56ee001286c6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:41908bc4-17d5-c018-cc97-c61f83e7d321",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:02392e2f-fa9c-776a-4318-21b03834a47f",
  "kind": "theorem",
  "lexical_name": "iteratedDerivWithin_succ",
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
  "slug": "iteratedderivwithin-succ--9a3620da47996ef2cf6e5fb0",
  "source": {
    "blob": "a7f73a17e5e4f46fe2195575119bd45300b53819",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 186,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/IteratedDeriv/Variant5cb19ca3047b8878e6ca8ab50473e65e6483b18cfc2b1ae21b3e56ee001286c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a3620da47996ef2cf6e5fb04af24579fd011516ceda8722c6b5c8c93b02b03b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/IteratedDeriv/Variant5cb19ca3047b8878e6ca8ab50473e65e6483b18cfc2b1ae21b3e56ee001286c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02392e2f-fa9c-776a-4318-21b03834a47f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iteratedDerivWithin_succ {x : 𝕜} (hxs : UniqueDiffWithinAt 𝕜 s x) :
    iteratedDerivWithin (n + 1) f s x = derivWithin (iteratedDerivWithin n f s) s x := by
  rw [iteratedDerivWithin_eq_iteratedFDerivWithin, iteratedFDerivWithin_succ_apply_left,
    iteratedFDerivWithin_eq_equiv_comp, LinearIsometryEquiv.comp_fderivWithin _ hxs, derivWithin]
  change ((ContinuousMultilinearMap.mkPiField 𝕜 (Fin n) ((fderivWithin 𝕜
    (iteratedDerivWithin n f s) s x : 𝕜 → F) 1) : (Fin n → 𝕜) → F) fun i : Fin n => 1) =
    (fderivWithin 𝕜 (iteratedDerivWithin n f s) s x : 𝕜 → F) 1
  simp
#align iterated_deriv_within_succ iteratedDerivWithin_succ

/-- The `n`-th iterated derivative within a set with unique derivatives can be obtained by
iterating `n` times the differentiation operation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/IteratedDeriv/Variant5cb19ca3047b8878e6ca8ab50473e65e6483b18cfc2b1ae21b3e56ee001286c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/IteratedDeriv/Variant5cb19ca3047b8878e6ca8ab50473e65e6483b18cfc2b1ae21b3e56ee001286c6.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7f73a17e5e4f46fe2195575119bd45300b53819` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
