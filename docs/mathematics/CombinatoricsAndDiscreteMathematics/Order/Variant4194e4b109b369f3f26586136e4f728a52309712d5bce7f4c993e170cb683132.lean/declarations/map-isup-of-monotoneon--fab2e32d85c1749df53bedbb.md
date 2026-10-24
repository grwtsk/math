# map_iSup_of_monotoneOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:02d1a866-e962-ea0b-2f44-7f7454f7ba7e",
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
  "slug": "map-isup-of-monotoneon--fab2e32d85c1749df53bedbb",
  "source": {
    "blob": "baabbf945f4db2b45b76702012e958b1a5eec417",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 331,
    "line": 324,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variant4194e4b109b369f3f26586136e4f728a52309712d5bce7f4c993e170cb683132.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fab2e32d85c1749df53bedbb328806f66e439d8ba39f1da54d1778359a81f55b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Order/Variant4194e4b109b369f3f26586136e4f728a52309712d5bce7f4c993e170cb683132.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02d1a866-e962-ea0b-2f44-7f7454f7ba7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 324–331.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Order/Variant4194e4b109b369f3f26586136e4f728a52309712d5bce7f4c993e170cb683132.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variant4194e4b109b369f3f26586136e4f728a52309712d5bce7f4c993e170cb683132.lean#L324).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `baabbf945f4db2b45b76702012e958b1a5eec417` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
