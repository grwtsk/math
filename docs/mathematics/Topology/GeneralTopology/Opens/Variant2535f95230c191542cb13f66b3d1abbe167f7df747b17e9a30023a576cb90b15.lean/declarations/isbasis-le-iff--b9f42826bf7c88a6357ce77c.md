# IsBasis.le_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b8aa7831-f11e-d461-c3e2-509fbfd215bc",
  "kind": "lemma",
  "lexical_name": "IsBasis.le_iff",
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
  "slug": "isbasis-le-iff--b9f42826bf7c88a6357ce77c",
  "source": {
    "blob": "aa030aaf9885f08e8d4b297f3cf4b3a8b5325507",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 329,
    "line": 324,
    "path": "GRWTSK/Topology/GeneralTopology/Opens/Variant2535f95230c191542cb13f66b3d1abbe167f7df747b17e9a30023a576cb90b15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9f42826bf7c88a6357ce77ce0fe14025492c63481ef063df0a5320bd0bbe8e4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Opens/Variant2535f95230c191542cb13f66b3d1abbe167f7df747b17e9a30023a576cb90b15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8aa7831-f11e-d461-c3e2-509fbfd215bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 324–329.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsBasis.le_iff {α} {t₁ t₂ : TopologicalSpace α}
    {Us : Set (Opens α)} (hUs : @IsBasis α t₂ Us) :
    t₁ ≤ t₂ ↔ ∀ U ∈ Us, IsOpen[t₁] U := by
  conv_lhs => rw [hUs.eq_generateFrom]
  simp [Set.subset_def, le_generateFrom_iff_subset_isOpen]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Opens/Variant2535f95230c191542cb13f66b3d1abbe167f7df747b17e9a30023a576cb90b15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Opens/Variant2535f95230c191542cb13f66b3d1abbe167f7df747b17e9a30023a576cb90b15.lean#L324).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa030aaf9885f08e8d4b297f3cf4b3a8b5325507` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
