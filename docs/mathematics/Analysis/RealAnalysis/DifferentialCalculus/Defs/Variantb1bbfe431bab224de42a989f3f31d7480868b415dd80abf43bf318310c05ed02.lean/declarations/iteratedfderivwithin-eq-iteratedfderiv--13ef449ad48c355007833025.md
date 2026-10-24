# iteratedFDerivWithin_eq_iteratedFDeriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4ab507f7d08758f6092f4529f1eb045208584f61",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1040,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b1/b1bbfe431bab224de42a989f3f31d7480868b415dd80abf43bf318310c05ed02.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:28bfb086-3340-e0a4-dbe8-688bcd44c42c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:54c33c67-b5a8-0691-a219-329bc1a564af",
  "kind": "theorem",
  "lexical_name": "iteratedFDerivWithin_eq_iteratedFDeriv",
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
  "slug": "iteratedfderivwithin-eq-iteratedfderiv--13ef449ad48c355007833025",
  "source": {
    "blob": "4ab507f7d08758f6092f4529f1eb045208584f61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1067,
    "line": 1040,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantb1bbfe431bab224de42a989f3f31d7480868b415dd80abf43bf318310c05ed02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13ef449ad48c3550078330255a1cfd484d5a764fd75491178b5f33b50d1429fc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantb1bbfe431bab224de42a989f3f31d7480868b415dd80abf43bf318310c05ed02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54c33c67-b5a8-0691-a219-329bc1a564af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1040–1067.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iteratedFDerivWithin_eq_iteratedFDeriv {n : ℕ}
    (hs : UniqueDiffOn 𝕜 s) (h : ContDiffAt 𝕜 n f x) (hx : x ∈ s) :
    iteratedFDerivWithin 𝕜 n f s x = iteratedFDeriv 𝕜 n f x := by
  rw [← iteratedFDerivWithin_univ]
  rcases h.contDiffOn' le_rfl (by simp) with ⟨u, u_open, xu, hu⟩
  rw [← iteratedFDerivWithin_inter_open u_open xu,
    ← iteratedFDerivWithin_inter_open u_open xu (s := univ)]
  apply iteratedFDerivWithin_subset
  · exact inter_subset_inter_left _ (subset_univ _)
  · exact hs.inter u_open
  · apply uniqueDiffOn_univ.inter u_open
  · simpa using hu
  · exact ⟨hx, xu⟩

/-! ### Smooth functions -/

variable (𝕜) in
/-- A function is continuously differentiable up to `n` if it admits derivatives up to
order `n`, which are continuous. Contrary to the case of definitions in domains (where derivatives
might not be unique) we do not need to localize the definition in space or time.
The parameter `n` belongs to `ℕ∞ω` (accessible in the `ContDiff` scope), i.e. it can be a natural
number, `∞`, or `ω`.

For `n = ω`, we require the function to be analytic. The precise
definition we give (all the derivatives should be analytic) is more involved to work around issues
when the space is not complete, but it is equivalent when the space is complete.
-/
@[fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantb1bbfe431bab224de42a989f3f31d7480868b415dd80abf43bf318310c05ed02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantb1bbfe431bab224de42a989f3f31d7480868b415dd80abf43bf318310c05ed02.lean#L1040).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ab507f7d08758f6092f4529f1eb045208584f61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
