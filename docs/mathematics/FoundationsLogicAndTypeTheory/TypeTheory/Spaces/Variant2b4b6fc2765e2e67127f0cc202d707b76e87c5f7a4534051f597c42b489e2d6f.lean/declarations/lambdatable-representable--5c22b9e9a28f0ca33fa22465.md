# lambdaTable_representable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:20ae7278-6a28-4eef-df86-c09e1e0dab55",
  "kind": "theorem",
  "lexical_name": "lambdaTable_representable",
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
  "slug": "lambdatable-representable--5c22b9e9a28f0ca33fa22465",
  "source": {
    "blob": "dd2b4960b3db8919e41c8de9e4561ca77bc3ef1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 688,
    "line": 646,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Spaces/Variant2b4b6fc2765e2e67127f0cc202d707b76e87c5f7a4534051f597c42b489e2d6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c22b9e9a28f0ca33fa22465ca4f7bdaa0f9cacf68340958771fe9b376486a50",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/Spaces/Variant2b4b6fc2765e2e67127f0cc202d707b76e87c5f7a4534051f597c42b489e2d6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20ae7278-6a28-4eef-df86-c09e1e0dab55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 646–688.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lambdaTable_representable (b : B) (o : O) (n : ℕ) (base : B)
    (body : Frame Q V (Plus Q V B O) → Minus Q V B O)
    (exit : Frame Q V (Plus Q V B O) → O)
    (hb : ∀ a, InStage (n + 1) (body a))
    (hc : ∀ a a', mapFrame (restrict Q V B O n) a = mapFrame (restrict Q V B O n) a' →
      body a = body a')
    (he : ∀ a a', mapFrame (restrict Q V B O n) a = mapFrame (restrict Q V B O n) a' →
      exit a = exit a') :
    ∃ x, InStage (n + 1) x ∧ behavior Q V B O x = lambdaTable base body exit := by
  apply exists_inStage_behavior b o n
  · intro as as' ha
    cases as with
    | nil =>
        cases as' with
        | nil => rfl
        | cons a as' => cases ha
    | cons a as =>
        cases as' with
        | nil => cases ha
        | cons a' as' =>
            have hh := List.cons.inj ha
            change (behavior Q V B O (body a)).continuing as =
              (behavior Q V B O (body a')).continuing as'
            rw [← hc a a' hh.1]
            exact ((inStage_succ_iff b o n (body a)).mp (hb a)).1 as as' hh.2
  · rintro ⟨as,e⟩ ⟨as',e'⟩ ha
    have hh := Prod.mk.inj ha
    cases as with
    | nil =>
        cases as' with
        | nil => exact he e e' hh.2
        | cons a as' => cases hh.1
    | cons a as =>
        cases as' with
        | nil => cases hh.1
        | cons a' as' =>
            have hs := List.cons.inj hh.1
            change (behavior Q V B O (body a)).exiting (as,e) =
              (behavior Q V B O (body a')).exiting (as',e')
            rw [← hc a a' hs.1]
            apply ((inStage_succ_iff b o n (body a)).mp (hb a)).2
            exact Prod.ext hs.2 hh.2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/Spaces/Variant2b4b6fc2765e2e67127f0cc202d707b76e87c5f7a4534051f597c42b489e2d6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Spaces/Variant2b4b6fc2765e2e67127f0cc202d707b76e87c5f7a4534051f597c42b489e2d6f.lean#L646).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd2b4960b3db8919e41c8de9e4561ca77bc3ef1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
