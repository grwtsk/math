# AccPt.nhds_inter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:072a2751-9897-592a-8aed-cce18b8ffc2e",
  "kind": "theorem",
  "lexical_name": "AccPt.nhds_inter",
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
  "slug": "accpt-nhds-inter--dac59b70d9d755881f9f7cdd",
  "source": {
    "blob": "5dffd4e8b0c50f5ea2bfb16c0718a1bc49fbeb52",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 70,
    "path": "GRWTSK/Topology/GeneralTopology/Perfect/Variant6458927de77b0a15d8d9f3738cfed532a36856472b25b6862739286ff02ae6e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dac59b70d9d755881f9f7cddc08f154a9f3851ebc2f3189c66a7086299956e77",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Perfect/Variant6458927de77b0a15d8d9f3738cfed532a36856472b25b6862739286ff02ae6e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:072a2751-9897-592a-8aed-cce18b8ffc2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AccPt.nhds_inter {x : α} {U : Set α} (h_acc : AccPt x (𝓟 C)) (hU : U ∈ 𝓝 x) :
    AccPt x (𝓟 (U ∩ C)) := by
  have : 𝓝[≠] x ≤ 𝓟 U := by
    rw [le_principal_iff]
    exact mem_nhdsWithin_of_mem_nhds hU
  rw [AccPt, ← inf_principal, ← inf_assoc, inf_of_le_left this]
  exact h_acc

/-- A set `C` is preperfect if all of its points are accumulation points of itself.
If `C` is nonempty and `α` is a T1 space, this is equivalent to the closure of `C` being perfect.
See `preperfect_iff_perfect_closure`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Perfect/Variant6458927de77b0a15d8d9f3738cfed532a36856472b25b6862739286ff02ae6e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Perfect/Variant6458927de77b0a15d8d9f3738cfed532a36856472b25b6862739286ff02ae6e5.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5dffd4e8b0c50f5ea2bfb16c0718a1bc49fbeb52` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
