# eq_mul_of_ne_all

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:212c8102-ee81-201a-a305-8d0a380e5a60",
  "kind": "lemma",
  "lexical_name": "eq_mul_of_ne_all",
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
  "slug": "eq-mul-of-ne-all--42ca4f95cb7d0d9f9afe163b",
  "source": {
    "blob": "a270a253f9da3102453fda2f640151d7b3424afc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 127,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/KleinFour/Variant948dcd2c48f343823eb468edf7728c951d09a933a3bdb53e0d85b7ed6955d184.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42ca4f95cb7d0d9f9afe163bf9accb120f6501b61b626eac6ff32a19b99eff05",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/KleinFour/Variant948dcd2c48f343823eb468edf7728c951d09a933a3bdb53e0d85b7ed6955d184.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:212c8102-ee81-201a-a305-8d0a380e5a60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eq_mul_of_ne_all {x y z : G} (hx : x ≠ 1)
    (hy : y ≠ 1) (hxy : x ≠ y) (hz : z ≠ 1) (hzx : z ≠ x) (hzy : z ≠ y) : z = x * y := by
  classical
  let _ := Fintype.ofFinite G
  apply eq_of_mem_insert_of_notMem <| (eq_finset_univ hx hy hxy).symm ▸ mem_univ _
  simpa only [mem_singleton, mem_insert, not_or] using ⟨hzx, hzy, hz⟩

variable {G₁ G₂ : Type*} [Group G₁] [Group G₂] [IsKleinFour G₁]

/-- An equivalence between an `IsKleinFour` group `G₁` and a group `G₂` of exponent two which sends
`1 : G₁` to `1 : G₂` is in fact an isomorphism. -/
@[to_additive "An equivalence between an `IsAddKleinFour` group `G₁` and a group `G₂` of exponent
two which sends `0 : G₁` to `0 : G₂` is in fact an isomorphism."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/KleinFour/Variant948dcd2c48f343823eb468edf7728c951d09a933a3bdb53e0d85b7ed6955d184.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/KleinFour/Variant948dcd2c48f343823eb468edf7728c951d09a933a3bdb53e0d85b7ed6955d184.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a270a253f9da3102453fda2f640151d7b3424afc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
