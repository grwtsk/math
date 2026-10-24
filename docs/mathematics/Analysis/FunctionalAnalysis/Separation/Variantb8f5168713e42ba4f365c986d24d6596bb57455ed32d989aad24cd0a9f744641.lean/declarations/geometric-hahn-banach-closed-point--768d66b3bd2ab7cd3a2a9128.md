# geometric_hahn_banach_closed_point

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b4108e7a-b7d4-8e7c-b478-c0e1c078fc93",
  "kind": "theorem",
  "lexical_name": "geometric_hahn_banach_closed_point",
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
  "slug": "geometric-hahn-banach-closed-point--768d66b3bd2ab7cd3a2a9128",
  "source": {
    "blob": "0136bcf496b74e08b8c4a42365a50f4772b47934",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 195,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Separation/Variantb8f5168713e42ba4f365c986d24d6596bb57455ed32d989aad24cd0a9f744641.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:768d66b3bd2ab7cd3a2a9128a7c38498fb8888f1a59a246d2f34917a642dfe80",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Separation/Variantb8f5168713e42ba4f365c986d24d6596bb57455ed32d989aad24cd0a9f744641.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b4108e7a-b7d4-8e7c-b478-c0e1c078fc93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem geometric_hahn_banach_closed_point (hs₁ : Convex ℝ s) (hs₂ : IsClosed s) (disj : x ∉ s) :
    ∃ (f : E →L[ℝ] ℝ) (u : ℝ), (∀ a ∈ s, f a < u) ∧ u < f x :=
  let ⟨f, s, _t, ha, hst, hb⟩ :=
    geometric_hahn_banach_closed_compact hs₁ hs₂ (convex_singleton x) isCompact_singleton
      (disjoint_singleton_right.2 disj)
  ⟨f, s, ha, hst.trans <| hb x <| mem_singleton _⟩
#align geometric_hahn_banach_closed_point geometric_hahn_banach_closed_point

/-- See also `NormedSpace.eq_iff_forall_dual_eq`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Separation/Variantb8f5168713e42ba4f365c986d24d6596bb57455ed32d989aad24cd0a9f744641.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Separation/Variantb8f5168713e42ba4f365c986d24d6596bb57455ed32d989aad24cd0a9f744641.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0136bcf496b74e08b8c4a42365a50f4772b47934` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
