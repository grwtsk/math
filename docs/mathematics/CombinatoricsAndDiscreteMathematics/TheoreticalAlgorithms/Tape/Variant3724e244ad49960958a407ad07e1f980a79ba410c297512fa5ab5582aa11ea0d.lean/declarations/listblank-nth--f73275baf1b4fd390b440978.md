# ListBlank.nth

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:19b552f434497aa0e1471485e23e5d3330582802fe4b1fe17251f32cf8de2b48",
  "kind": "def",
  "lexical_name": "ListBlank.nth",
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
  "slug": "listblank-nth--f73275baf1b4fd390b440978",
  "source": {
    "blob": "45e3442467904774e87e37e0c4a3b14c7a84bbaa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 214,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tape/Variant3724e244ad49960958a407ad07e1f980a79ba410c297512fa5ab5582aa11ea0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f73275baf1b4fd390b440978b80217111e8962dd0f6c1a3a733715c1e17c2863",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tape/Variant3724e244ad49960958a407ad07e1f980a79ba410c297512fa5ab5582aa11ea0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:19b552f434497aa0e1471485e23e5d3330582802fe4b1fe17251f32cf8de2b48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ListBlank.nth {Γ} [Inhabited Γ] (l : ListBlank Γ) (n : ℕ) : Γ := by
  apply l.liftOn (fun l ↦ List.getI l n)
  rintro l _ ⟨i, rfl⟩
  rcases lt_or_le n _ with h | h
  · rw [List.getI_append _ _ _ h]
  rw [List.getI_eq_default _ h]
  rcases le_or_lt _ n with h₂ | h₂
  · rw [List.getI_eq_default _ h₂]
  rw [List.getI_eq_getElem _ h₂, List.getElem_append_right h, List.getElem_replicate]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tape/Variant3724e244ad49960958a407ad07e1f980a79ba410c297512fa5ab5582aa11ea0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tape/Variant3724e244ad49960958a407ad07e1f980a79ba410c297512fa5ab5582aa11ea0d.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45e3442467904774e87e37e0c4a3b14c7a84bbaa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
