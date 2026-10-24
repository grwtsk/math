# mdifferentiableOn_of_coeff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8faf46c7aa6cf751428e604e21bad1cbbe246750",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 288,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a9/a99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1b60a95d-ad87-d3b8-3088-739e61ed75d7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8eeb63eb-2542-b968-87e1-2c29b8464fc4",
  "kind": "lemma",
  "lexical_name": "mdifferentiableOn_of_coeff",
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
  "slug": "mdifferentiableon-of-coeff--1dfafeb4a6a900e73e522f7a",
  "source": {
    "blob": "8faf46c7aa6cf751428e604e21bad1cbbe246750",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 288,
    "path": "GRWTSK/Geometry/LocalFrame/Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1dfafeb4a6a900e73e522f7aba560f6f298978448b36c8e7ee0a7a4a32458a5e",
  "verification": {
    "reference": "docs/verification/Geometry/LocalFrame/Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8eeb63eb-2542-b968-87e1-2c29b8464fc4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 288–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mdifferentiableOn_of_coeff [FiniteDimensional 𝕜 F]
    (h : ∀ i, MDiff[u] ((LinearMap.piApply (hs.coeff i)) t)) :
    MDiff[u] (T% t) := by
  rcases u.eq_empty_or_nonempty with rfl | ⟨x, hx⟩; · simp
  have := fintypeOfFiniteDimensional hs hx
  have this (i) : MDiff[u] (T% ((LinearMap.piApply (hs.coeff i)) t • s i)) :=
    (h i).smul_section ((hs.contMDiffOn i).mdifferentiableOn one_ne_zero)
  have almost : MDiff[u] (T% (fun x ↦ ∑ i, hs.coeff i x (t x) • s i x)) :=
    .sum_section (fun i _ _ hx ↦ this i _ hx)
  apply almost.congr
  intro y hy
  simpa using congrArg (TotalSpace.mk' F y) (hs.coeff_sum_eq t hy)

/-- Given a local frame `s i` on a neighbourhood `u` of `x`, if a section `t` has differentiable
coefficients at `x` w.r.t. `s i`, then `t` is differentiable at `x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Geometry/LocalFrame/Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/LocalFrame/Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean#L288).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8faf46c7aa6cf751428e604e21bad1cbbe246750` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
