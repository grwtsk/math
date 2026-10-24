# integral_exp_div_neg_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "de357c34051029ec1e785dacf601e32497997d99",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 32,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b9a930e632b6efd1fdab0ee247c24dfc1abcacd1c5a5fb43a1a743232d981f11.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:229c918c-f4ff-56a1-32ff-e5609148f6dc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c8cb19b0-70cb-59d2-a334-d8de2d6d06ce",
  "kind": "lemma",
  "lexical_name": "integral_exp_div_neg_eq",
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
  "slug": "integral-exp-div-neg-eq--743e075c5a8242907d492651",
  "source": {
    "blob": "de357c34051029ec1e785dacf601e32497997d99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 32,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PVIdentity/Variantb9a930e632b6efd1fdab0ee247c24dfc1abcacd1c5a5fb43a1a743232d981f11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:743e075c5a8242907d492651a2b8220eee24fe6c9d456cf49ea1aace8155676e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PVIdentity/Variantb9a930e632b6efd1fdab0ee247c24dfc1abcacd1c5a5fb43a1a743232d981f11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8cb19b0-70cb-59d2-a334-d8de2d6d06ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integral_exp_div_neg_eq {ε : ℝ} (hε : 0 < ε) :
    ∫ u in (-1/ε)..(-ε), exp u / u = -(∫ t in ε..(1/ε), exp (-t) / t) := by
  -- Apply the substitution $u = -t$ and adjust the limits of integration accordingly.
  have h_subst : ∫ u in (-1 / ε)..(-ε), Real.exp u / u = ∫ t in (ε : ℝ)..1 / ε, Real.exp (-t) / (-t) := by
    have h_sub : ∀ a b : ℝ, ∫ u in a..b, Real.exp u / u = ∫ t in (-b)..(-a), Real.exp (-t) / (-t) := by
      norm_num [ ← intervalIntegral.integral_comp_neg ]
    grind;
  simpa [ div_neg ] using h_subst
/-
PROBLEM
Splitting exp(u)/u = (exp(u)-1)/u + 1/u in the interval integral
PROVIDED SOLUTION
Split exp(u)/u = (exp(u)-1)/u + 1/u. Since both functions are integrable on [a,b] (as a > 0, the functions are continuous on [a,b]), we can split the integral. The integral of 1/u from a to b is log(b) - log(a). Use intervalIntegral.integral_add and the integral of 1/u.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PVIdentity/Variantb9a930e632b6efd1fdab0ee247c24dfc1abcacd1c5a5fb43a1a743232d981f11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PVIdentity/Variantb9a930e632b6efd1fdab0ee247c24dfc1abcacd1c5a5fb43a1a743232d981f11.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de357c34051029ec1e785dacf601e32497997d99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
