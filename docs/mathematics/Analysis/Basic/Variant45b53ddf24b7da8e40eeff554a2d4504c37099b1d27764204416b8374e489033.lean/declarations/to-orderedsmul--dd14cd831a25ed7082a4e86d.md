# to_orderedSMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "711eb1d745e7a6a78efe8b8e24ddd59fe4e5894f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 319,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/45/45b53ddf24b7da8e40eeff554a2d4504c37099b1d27764204416b8374e489033.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:524360af-32bd-4df2-014a-e474111b57a8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:06988809-9ed0-2444-2996-209aafdcb743",
  "kind": "theorem",
  "lexical_name": "to_orderedSMul",
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
  "slug": "to-orderedsmul--dd14cd831a25ed7082a4e86d",
  "source": {
    "blob": "711eb1d745e7a6a78efe8b8e24ddd59fe4e5894f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 342,
    "line": 319,
    "path": "GRWTSK/Analysis/Basic/Variant45b53ddf24b7da8e40eeff554a2d4504c37099b1d27764204416b8374e489033.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd14cd831a25ed7082a4e86dccd5c6cd551be4a46488edf584d855ac2de25e5b",
  "verification": {
    "reference": "docs/verification/Analysis/Basic/Variant45b53ddf24b7da8e40eeff554a2d4504c37099b1d27764204416b8374e489033.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06988809-9ed0-2444-2996-209aafdcb743`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 319–342.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem to_orderedSMul (S : ConvexCone 𝕜 E) (h : ∀ x y : E, x ≤ y ↔ y - x ∈ S) : OrderedSMul 𝕜 E :=
  OrderedSMul.mk'
    (by
      intro x y z xy hz
      rw [h (z • x) (z • y), ← smul_sub z y x]
      exact smul_mem S hz ((h x y).mp xy.le))
#align convex_cone.to_ordered_smul ConvexCone.to_orderedSMul

end OrderedAddCommGroup

end LinearOrderedField

/-! ### Convex cones with extra properties -/


section OrderedSemiring

variable [OrderedSemiring 𝕜]

section AddCommMonoid

variable [AddCommMonoid E] [SMul 𝕜 E] (S : ConvexCone 𝕜 E)

/-- A convex cone is pointed if it includes `0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Basic/Variant45b53ddf24b7da8e40eeff554a2d4504c37099b1d27764204416b8374e489033.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Basic/Variant45b53ddf24b7da8e40eeff554a2d4504c37099b1d27764204416b8374e489033.lean#L319).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `711eb1d745e7a6a78efe8b8e24ddd59fe4e5894f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
