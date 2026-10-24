# eventually_NII_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f16a23db0fa1f46fe9574b8968d63c6913836676",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 677,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/67/674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a755d182-1e9f-30c8-7608-7b4aa651e7ab",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c48aac2b-ac22-62e0-0ee8-e4bf52445726",
  "kind": "theorem",
  "lexical_name": "eventually_NII_le",
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
  "slug": "eventually-nii-le--09b6f9b7b5c09093b9e353e5",
  "source": {
    "blob": "f16a23db0fa1f46fe9574b8968d63c6913836676",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 691,
    "line": 677,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Tail/Variant674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09b6f9b7b5c09093b9e353e52a439b16b7100154cf88fa08acdc3602afae7967",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Tail/Variant674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c48aac2b-ac22-62e0-0ee8-e4bf52445726`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 677–691.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eventually_NII_le (Z : ZeroConfig) {A₀ : ℝ} (hA₀ : 1 ≤ A₀)
    (hloc : ∀ t : ℝ, (Z.N t (t + 1) : ℝ) ≤ A₀ * Real.log (|t| + 3)) :
    ∃ C : ℝ, ∀ᶠ T in atTop, (Assembly.NII Z T : ℝ) ≤ C * Real.sqrt T * l T := by
  refine ⟨6 * A₀, ?_⟩
  filter_upwards [eventually_ge_atTop T₀] with T hT
  have h1 := NII_le Z hA₀ hloc hT
  have h2 := log_four_mul_le_two_mul_l hT
  have : 0 ≤ 3 * A₀ * Real.sqrt T := by
    have := Real.sqrt_nonneg T; nlinarith
  nlinarith

end Export

end Tail
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Tail/Variant674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Tail/Variant674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean#L677).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f16a23db0fa1f46fe9574b8968d63c6913836676` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
