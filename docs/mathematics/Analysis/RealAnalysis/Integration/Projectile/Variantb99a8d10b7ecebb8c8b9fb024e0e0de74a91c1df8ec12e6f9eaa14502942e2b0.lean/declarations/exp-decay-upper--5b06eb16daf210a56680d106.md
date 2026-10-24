# exp_decay_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e7ba74d129f8f962d9cb4cd22b51eb642e7ea2fc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 96,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b99a8d10b7ecebb8c8b9fb024e0e0de74a91c1df8ec12e6f9eaa14502942e2b0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9b5632cb-eb0d-3929-2562-9d29475c9f53",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ddfa646d-0f87-64fb-6e5d-a84dbdafb30e",
  "kind": "theorem",
  "lexical_name": "exp_decay_upper",
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
  "slug": "exp-decay-upper--5b06eb16daf210a56680d106",
  "source": {
    "blob": "e7ba74d129f8f962d9cb4cd22b51eb642e7ea2fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 96,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Projectile/Variantb99a8d10b7ecebb8c8b9fb024e0e0de74a91c1df8ec12e6f9eaa14502942e2b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b06eb16daf210a56680d1062a4d83c04e4a625a94f6141813a7d71a218b318d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Projectile/Variantb99a8d10b7ecebb8c8b9fb024e0e0de74a91c1df8ec12e6f9eaa14502942e2b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ddfa646d-0f87-64fb-6e5d-a84dbdafb30e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exp_decay_upper :
    ∀ t ∈ Set.Icc (-1:ℝ) 0, Real.exp t ≤ (1 : ℚ) := by
  certify_bound

/-! ## Part E: Discovery Commands -/

#bounds (fun v => v * v) on [0, 50]
#bounds (fun v => 49/5 - 1/300 * v * v) on [0, 50]
#bounds (fun t => Real.exp t) on [-1, 0]

/-! ## Summary: Projectile Motion Bounds ✓

Successfully proved:
1. Drag force bounds: F_drag/m ∈ [0, 8.33] m/s² for v ≤ 50 m/s
2. Net acceleration bounds: a ∈ [1.4, 9.8] m/s²
3. Kinetic energy upper bound: KE ≤ 1250 J/kg
4. Exponential velocity decay bounds: e^t ∈ [0.36, 1] for t ∈ [-1, 0]

Note: sin/cos bounds have precision issues with Taylor series on wide intervals.

These bounds are useful for:
- Trajectory prediction with uncertainty
- Safety envelope computation
- Numerical integration validation
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Projectile/Variantb99a8d10b7ecebb8c8b9fb024e0e0de74a91c1df8ec12e6f9eaa14502942e2b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Projectile/Variantb99a8d10b7ecebb8c8b9fb024e0e0de74a91c1df8ec12e6f9eaa14502942e2b0.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7ba74d129f8f962d9cb4cd22b51eb642e7ea2fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
