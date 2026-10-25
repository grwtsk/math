# eqToFun_comp_iso_hom_eq_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:87e07bed-13e6-0c54-171c-a9c635ee1621",
  "kind": "theorem",
  "lexical_name": "eqToFun_comp_iso_hom_eq_self",
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
  "slug": "eqtofun-comp-iso-hom-eq-self--3c9f86ced8dcf931ff3f00c3",
  "source": {
    "blob": "c24254797c52d5831b59c57f145bdbfbb82ad042",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 73,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant6d4c4aec94c4f53b44f2f502836dc76860e9573297f7ac77a51c1cab4bac0dd0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3c9f86ced8dcf931ff3f00c3253615aee08173f2cb7b8be8bdbc2f417dfe9394",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant6d4c4aec94c4f53b44f2f502836dc76860e9573297f7ac77a51c1cab4bac0dd0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87e07bed-13e6-0c54-171c-a9c635ee1621`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eqToFun_comp_iso_hom_eq_self {β} {X : Type} {f : β → Type}
    (z : ∀ b, X ≃ f b) {j j' : β} (w : j = j') :
    eqToFun (by simp [w]) ∘ (z j').toFun = (z j).toFun := by
  cases w; rfl

/-! Test that the simpNF linter does not report false positives when `dsimp` changes
implicit arguments (e.g. unfolding carrier types in bundled structures).
See https://github.com/leanprover/lean4/pull/12179. -/
section BackwardDefEqRespectTransparency

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant6d4c4aec94c4f53b44f2f502836dc76860e9573297f7ac77a51c1cab4bac0dd0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant6d4c4aec94c4f53b44f2f502836dc76860e9573297f7ac77a51c1cab4bac0dd0.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c24254797c52d5831b59c57f145bdbfbb82ad042` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
