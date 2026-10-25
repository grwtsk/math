# WP.Frames.of_wp_conjunctive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ffa57bc89ab4bed7603a8bb3ef29eee576023d96",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 73,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/12/12a2b9d134c9f2d78fb920ee1dbca7eb8caeac3db62ea02ca530429338720167.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:79f0468d-4d39-7884-693e-d2173b18f8cd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c842b8e2-443c-a9aa-e6e9-af9a95f446b4",
  "kind": "theorem",
  "lexical_name": "WP.Frames.of_wp_conjunctive",
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
  "slug": "wp-frames-of-wp-conjunctive--678b18e823eed0a46c6d012d",
  "source": {
    "blob": "ffa57bc89ab4bed7603a8bb3ef29eee576023d96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 73,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frame/Variant12a2b9d134c9f2d78fb920ee1dbca7eb8caeac3db62ea02ca530429338720167.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:678b18e823eed0a46c6d012d2c9830178b319f78d136e0397406a54e8648d5c2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frame/Variant12a2b9d134c9f2d78fb920ee1dbca7eb8caeac3db62ea02ca530429338720167.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c842b8e2-443c-a9aa-e6e9-af9a95f446b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem WP.Frames.of_wp_conjunctive {Prog : Type u} {Value : Type v} {Pred : Type w} {EPred : Type z}
    [Assertion Pred] [Assertion EPred] [WP Prog Value Pred EPred]
    [WPConjunctive Prog Value Pred EPred] {x : Prog} {F : Pred} (h : ∀ E, F ⊑ wp x (fun _ => F) E) :
    WP.Frames (· ⊓ ·) x F := by
  constructor
  intro Q E
  refine PartialOrder.rel_trans (y := wp x (fun _ => F) E ⊓ wp x Q E) ?_ ?_
  · exact le_meet _ _ _ (PartialOrder.rel_trans (meet_le_left _ _) (h E)) (meet_le_right _ _)
  · refine PartialOrder.rel_trans (WPConjunctive.wp_meet_wp_le x (fun _ => F) Q E)
      (WP.wp_consequence _ _ _ _ ?_)
    intro a
    simp only [meet_apply]
    exact PartialOrder.rel_refl

/-- Reinterpret a `WPMonad m` so its weakest precondition is the `PreservesSup.frameClosure` of the
base wp over a family of `Sup`-preserving resource operators `op r` that act by `comp` with unit `e`.
The resource frame rule then holds by construction (`WP.Frames.of_frameClosure`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frame/Variant12a2b9d134c9f2d78fb920ee1dbca7eb8caeac3db62ea02ca530429338720167.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frame/Variant12a2b9d134c9f2d78fb920ee1dbca7eb8caeac3db62ea02ca530429338720167.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffa57bc89ab4bed7603a8bb3ef29eee576023d96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
