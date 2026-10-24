# Spanning.isBase_restrict_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:790af003-24f5-012b-6a5e-dc933f664970",
  "kind": "lemma",
  "lexical_name": "Spanning.isBase_restrict_iff",
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
  "slug": "spanning-isbase-restrict-iff--ac04126b51284a85da2ad84e",
  "source": {
    "blob": "47c1114aae9848672188b2156ac53232436a03d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 890,
    "line": 884,
    "path": "GRWTSK/Topology/GeneralTopology/Closure/Variant2f1aea834be845e7d006dde57a4682ad123c3a67a78d296e86a90c7cf754c601.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac04126b51284a85da2ad84e535fec24d9ac4629e431c8f73a30ea9e099e8274",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Closure/Variant2f1aea834be845e7d006dde57a4682ad123c3a67a78d296e86a90c7cf754c601.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:790af003-24f5-012b-6a5e-dc933f664970`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 884–890.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Spanning.isBase_restrict_iff (hS : M.Spanning S) : (M ↾ S).IsBase B ↔ M.IsBase B ∧ B ⊆ S := by
  rw [isBase_restrict_iff', isBasis'_iff_isBasis]
  refine ⟨fun h ↦ ⟨?_, h.subset⟩, fun h ↦ h.1.indep.isBasis_of_subset_of_subset_closure h.2 ?_⟩
  · exact h.indep.isBase_of_spanning <| by rwa [h.spanning_iff_spanning]
  rw [h.1.closure_eq]
  exact hS.subset_ground

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Closure/Variant2f1aea834be845e7d006dde57a4682ad123c3a67a78d296e86a90c7cf754c601.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Closure/Variant2f1aea834be845e7d006dde57a4682ad123c3a67a78d296e86a90c7cf754c601.lean#L884).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47c1114aae9848672188b2156ac53232436a03d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
