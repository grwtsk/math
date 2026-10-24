# rootSet_derivative_subset_convexHull_rootSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9bdf7d351b4e162241c38e073c62cdbc6a7d12db",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 97,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8a/8a2b8c2cab16d348781ff6233434a9b362ad3c03d4051c7407b7aeedb337dc5e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ada83492-b3f0-f664-2bdd-aa0e0c3a432c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:749c4259-a30c-6e84-fcf5-6812833451cd",
  "kind": "theorem",
  "lexical_name": "rootSet_derivative_subset_convexHull_rootSet",
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
  "slug": "rootset-derivative-subset-convexhull-rootset--4f039e2fa2875147f46d729f",
  "source": {
    "blob": "9bdf7d351b4e162241c38e073c62cdbc6a7d12db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 97,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GaussLucas/Variant8a2b8c2cab16d348781ff6233434a9b362ad3c03d4051c7407b7aeedb337dc5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f039e2fa2875147f46d729fc8e9f7c585cc150b33c8fbe916bb74185de1e9d3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GaussLucas/Variant8a2b8c2cab16d348781ff6233434a9b362ad3c03d4051c7407b7aeedb337dc5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:749c4259-a30c-6e84-fcf5-6812833451cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rootSet_derivative_subset_convexHull_rootSet (h₀ : 0 < P.degree) :
    P.derivative.rootSet ℂ ⊆ convexHull ℝ (P.rootSet ℂ) := by
  intro z hz
  rw [mem_rootSet, coe_aeval_eq_eval] at hz
  rw [eq_centerMass_of_eval_derivative_eq_zero h₀ hz.2]
  apply Finset.centerMass_mem_convexHull
  · simp [derivRootWeight_nonneg]
  · apply sum_derivRootWeight_pos h₀
  · simp [mem_rootSet]

end Polynomial
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/GaussLucas/Variant8a2b8c2cab16d348781ff6233434a9b362ad3c03d4051c7407b7aeedb337dc5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GaussLucas/Variant8a2b8c2cab16d348781ff6233434a9b362ad3c03d4051c7407b7aeedb337dc5e.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bdf7d351b4e162241c38e073c62cdbc6a7d12db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
