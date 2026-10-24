# isClosed_iff_forall_filter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c6a0a1b9257ca3c09b14bb197d747c15ac82c4a7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 306,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/56/5639c5a30f549a5585105dac3988570e0788dcef60fd2594b69095fa27e57948.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9342b545-a70f-6277-bdb6-d4e45c123a0b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d6142489-ba1c-419b-7ccb-778486c8be0e",
  "kind": "lemma",
  "lexical_name": "isClosed_iff_forall_filter",
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
  "slug": "isclosed-iff-forall-filter--9d88fef64d92effb12e2b156",
  "source": {
    "blob": "c6a0a1b9257ca3c09b14bb197d747c15ac82c4a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 311,
    "line": 306,
    "path": "GRWTSK/Topology/GeneralTopology/ClusterPt/Variant5639c5a30f549a5585105dac3988570e0788dcef60fd2594b69095fa27e57948.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d88fef64d92effb12e2b15659a97319fb1e876f1d0f89a1e2c9dfaecd4ffc38",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ClusterPt/Variant5639c5a30f549a5585105dac3988570e0788dcef60fd2594b69095fa27e57948.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d6142489-ba1c-419b-7ccb-778486c8be0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 306–311.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isClosed_iff_forall_filter :
    IsClosed s ↔ ∀ x, ∀ F : Filter X, F.NeBot → F ≤ 𝓟 s → F ≤ 𝓝 x → x ∈ s := by
  simp_rw [isClosed_iff_clusterPt]
  exact ⟨fun hs x F F_ne FS Fx ↦ hs _ <| NeBot.mono F_ne (le_inf Fx FS),
         fun hs x hx ↦ hs x (𝓝 x ⊓ 𝓟 s) hx inf_le_right inf_le_left⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ClusterPt/Variant5639c5a30f549a5585105dac3988570e0788dcef60fd2594b69095fa27e57948.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ClusterPt/Variant5639c5a30f549a5585105dac3988570e0788dcef60fd2594b69095fa27e57948.lean#L306).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6a0a1b9257ca3c09b14bb197d747c15ac82c4a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
