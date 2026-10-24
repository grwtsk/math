# StrictConvexSpace.of_norm_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2c85b502c6a46387ab12bd17029c343d942d3f84",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 146,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d4019eff54d990dc998227882451bc275ff0324e241f9f8f0bd9b8433366bb9e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f1dd1c70-2df0-16e4-6327-a46c42e47dfc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fa80ee7a-fafa-3caf-732b-3e1e6b2c8c0b",
  "kind": "theorem",
  "lexical_name": "StrictConvexSpace.of_norm_add",
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
  "slug": "strictconvexspace-of-norm-add--88d68c35e7f8f4a492f171b9",
  "source": {
    "blob": "2c85b502c6a46387ab12bd17029c343d942d3f84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 146,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantd4019eff54d990dc998227882451bc275ff0324e241f9f8f0bd9b8433366bb9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88d68c35e7f8f4a492f171b9cc66f94da112adf3e936b0ea73bf0330313cf111",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantd4019eff54d990dc998227882451bc275ff0324e241f9f8f0bd9b8433366bb9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa80ee7a-fafa-3caf-732b-3e1e6b2c8c0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem StrictConvexSpace.of_norm_add
    (h : ∀ x y : E, ‖x‖ = 1 → ‖y‖ = 1 → ‖x + y‖ = 2 → SameRay ℝ x y) : StrictConvexSpace ℝ E := by
  refine' StrictConvexSpace.of_pairwise_sphere_norm_ne_two fun x hx y hy => mt fun h₂ => _
  rw [mem_sphere_zero_iff_norm] at hx hy
  exact (sameRay_iff_of_norm_eq (hx.trans hy.symm)).1 (h x y hx hy h₂)
#align strict_convex_space.of_norm_add StrictConvexSpace.of_norm_add

variable [StrictConvexSpace ℝ E] {x y z : E} {a b r : ℝ}

/-- If `x ≠ y` belong to the same closed ball, then a convex combination of `x` and `y` with
positive coefficients belongs to the corresponding open ball. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantd4019eff54d990dc998227882451bc275ff0324e241f9f8f0bd9b8433366bb9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantd4019eff54d990dc998227882451bc275ff0324e241f9f8f0bd9b8433366bb9e.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c85b502c6a46387ab12bd17029c343d942d3f84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
