# map_iSup_of_monotoneOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e2b5cfaecfa29bcdf8c00dfdc1a4788858e4be26",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 316,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/20/20e98d28ce4326db31236a4b79740d1e4de833403d02e4ad9bac437b3600f58b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c07d344e-b060-46bd-9eea-75d08d77baa5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c1e489bb-1b75-0dcd-abc5-8a435a4d6c0f",
  "kind": "lemma",
  "lexical_name": "map_iSup_of_monotoneOn",
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
  "slug": "map-isup-of-monotoneon--9c422cd2981ece17472daf07",
  "source": {
    "blob": "e2b5cfaecfa29bcdf8c00dfdc1a4788858e4be26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 323,
    "line": 316,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variant20e98d28ce4326db31236a4b79740d1e4de833403d02e4ad9bac437b3600f58b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c422cd2981ece17472daf076834b40b5a9b4b3022565b5e23d899e77100f6f2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Order/Variant20e98d28ce4326db31236a4b79740d1e4de833403d02e4ad9bac437b3600f58b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1e489bb-1b75-0dcd-abc5-8a435a4d6c0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 316–323.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map_iSup_of_monotoneOn {s : Set α} {f : ι → α} {g : α → β} (hg : MonotoneOn g s)
    (hs : ∀ i, f i ∈ s) :
    g (⨆ i, f i) = ⨆ i, g (f i) := by
  obtain ⟨j, hj⟩ : ∃ j, f j = ⨆ i, f i := exists_eq_ciSup_of_finite
  rw [← hj]
  exact le_antisymm (le_ciSup_of_le j le_rfl) <|
    ciSup_le fun i ↦ hg (hs i) (hs j) (hj ▸ le_ciSup f i)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Order/Variant20e98d28ce4326db31236a4b79740d1e4de833403d02e4ad9bac437b3600f58b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variant20e98d28ce4326db31236a4b79740d1e4de833403d02e4ad9bac437b3600f58b.lean#L316).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2b5cfaecfa29bcdf8c00dfdc1a4788858e4be26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
