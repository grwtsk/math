# function_sections_unique_gluing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dd5614c7-0c77-5a7f-6d54-91b22c85f681",
  "kind": "theorem",
  "lexical_name": "function_sections_unique_gluing",
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
  "slug": "function-sections-unique-gluing--c77ae70d7c5d8478333da202",
  "source": {
    "blob": "b17be9c50ad983254387730cd6e5ef95daf7f263",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 106,
    "path": "GRWTSK/DynamicalSystems/TransitionSystems/FinitePhraseProcess.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c77ae70d7c5d8478333da2020ae691dff9cbd3c27fa7a2f35a9cd2f3631728fb",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/FinitePhraseProcess.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd5614c7-0c77-5a7f-6d54-91b22c85f681`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem function_sections_unique_gluing {X I A : Type*}
    {whole : Set X} {pieces : I → Set X}
    (cover : Cover whole pieces) (sections : ∀ i, Section A (pieces i))
    (compatible : Compatible sections) :
    ∃! glued : Section A whole,
      ∀ i x (member : x ∈ pieces i),
        glued x (cover.included i member) = sections i x member := by
  classical
  let selected : ∀ x, x ∈ whole → I :=
    fun x member => Classical.choose (cover.complete x member)
  have selected_mem : ∀ x (member : x ∈ whole),
      x ∈ pieces (selected x member) :=
    fun x member => Classical.choose_spec (cover.complete x member)
  let glued : Section A whole :=
    fun x member => sections (selected x member) x (selected_mem x member)
  refine ⟨glued, ?_, ?_⟩
  · intro i x member
    exact compatible (selected x (cover.included i member)) i x
      (selected_mem x (cover.included i member)) member
  · intro other agrees
    funext x member
    obtain ⟨i, inPiece⟩ := cover.complete x member
    exact (agrees i x inPiece).trans
      (compatible i (selected x member) x inPiece (selected_mem x member))

/-! ## Frames and a concrete compatible cover -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/FinitePhraseProcess.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DynamicalSystems/TransitionSystems/FinitePhraseProcess.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b17be9c50ad983254387730cd6e5ef95daf7f263` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
