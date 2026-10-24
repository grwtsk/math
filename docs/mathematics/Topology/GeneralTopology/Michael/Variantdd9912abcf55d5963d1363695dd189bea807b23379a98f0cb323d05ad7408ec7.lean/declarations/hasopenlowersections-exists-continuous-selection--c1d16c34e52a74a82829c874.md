# HasOpenLowerSections.exists_continuous_selection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1262ec43952982b016327ced9e147e076026848e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 66,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dd/dd9912abcf55d5963d1363695dd189bea807b23379a98f0cb323d05ad7408ec7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4ebb65b0-3111-10a1-115d-088d62f1d0fd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cdfafa40-7ea4-b73c-dcb3-1d954df80390",
  "kind": "lemma",
  "lexical_name": "HasOpenLowerSections.exists_continuous_selection",
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
  "slug": "hasopenlowersections-exists-continuous-selection--c1d16c34e52a74a82829c874",
  "source": {
    "blob": "1262ec43952982b016327ced9e147e076026848e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 66,
    "path": "GRWTSK/Topology/GeneralTopology/Michael/Variantdd9912abcf55d5963d1363695dd189bea807b23379a98f0cb323d05ad7408ec7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1d16c34e52a74a82829c87417d8523ba65c9c7fdbc018c1a22a12cfff3b77b3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Michael/Variantdd9912abcf55d5963d1363695dd189bea807b23379a98f0cb323d05ad7408ec7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cdfafa40-7ea4-b73c-dcb3-1d954df80390`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma HasOpenLowerSections.exists_continuous_selection [ContinuousAdd β]
    (hf : HasOpenLowerSections f) (hf_nonempty : ∀ x, (f x).Nonempty)
    (hf_convex : ∀ x, Convex ℝ (f x)) : ∃ h : α → β, Continuous h ∧ ∀ x, h x ∈ f x := by
  choose F hF using hf_nonempty
  obtain ⟨φ, hφ⟩ := PartitionOfUnity.exists_isSubordinate isClosed_univ
    _ (fun x' ↦ hf.isOpen (F x')) (fun x _ ↦ Set.mem_iUnion.mpr ⟨x, hF x⟩)
  exact ⟨fun y ↦ ∑ᶠ x', (φ x' y) • F x', by fun_prop, fun y ↦
    (hf_convex y).finsum_mem (fun i ↦ φ.nonneg i y) (φ.sum_eq_one (mem_univ y)) fun x' hx' ↦
      hφ x' (subset_tsupport _ hx')⟩

/-- **Michael's selection theorem (iteration):** An approximate continuous selection `g` to a
correspondence `f` with open lower sections and convex values can be refined to an approximate
continuous selection `h` whose values `h x` are both closer to `f x` and are close to `g x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Michael/Variantdd9912abcf55d5963d1363695dd189bea807b23379a98f0cb323d05ad7408ec7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Michael/Variantdd9912abcf55d5963d1363695dd189bea807b23379a98f0cb323d05ad7408ec7.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1262ec43952982b016327ced9e147e076026848e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
