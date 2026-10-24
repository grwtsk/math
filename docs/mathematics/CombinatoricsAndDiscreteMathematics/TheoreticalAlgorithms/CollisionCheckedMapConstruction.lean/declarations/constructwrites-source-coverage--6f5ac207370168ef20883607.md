# constructWrites_source_coverage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "684e8c0936705c83918d1dc59e13dfb153b48034",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 862,
      "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CollisionCheckedMapConstruction.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:01b36d98-5509-dc29-a6b9-09694cc49104",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d6f9bb60-a213-ff91-9b02-54e7a09bfe4b",
  "kind": "theorem",
  "lexical_name": "constructWrites_source_coverage",
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
  "slug": "constructwrites-source-coverage--6f5ac207370168ef20883607",
  "source": {
    "blob": "684e8c0936705c83918d1dc59e13dfb153b48034",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 895,
    "line": 862,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CollisionCheckedMapConstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f5ac207370168ef2088360783309804c0d86c4c2ecbf5181d504811b8e651b6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CollisionCheckedMapConstruction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d6f9bb60-a213-ff91-9b02-54e7a09bfe4b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 862–895.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem constructWrites_source_coverage (roots : Roots) (archive : Files Record)
    (actions : List RoutedAction) (area : Area) (files : Files Record) (writes : Files WriteSource)
    (success : constructWrites roots archive actions area files = .ok writes) :
    ∀ row ∈ writes, selectedSource roots archive actions area row := by
  let property := selectedSource roots archive actions area
  have initial : ∀ row ∈ (if area = .archive then archiveWrites archive roots.archive else []),
      property row := by
    split
    · rename_i selected
      intro row member
      obtain ⟨file, member, same⟩ := List.mem_map.mp member
      exact Or.inl ⟨selected, file, member, same.symm⟩
    · simp
  have selected : ∀ item ∈ actions, item.action.area = area → property
      (item.action.path, writeSource (originRoot roots item.origin) item.source item.action.value false) := by
    intro item member same
    exact Or.inr (Or.inl ⟨item, member, same, rfl⟩)
  have actionProperty := actionWrites_preserves roots area actions _ property initial selected
  unfold constructWrites at success
  cases filled : emptyWrites files (actionWrites roots area actions
      (if area = .archive then archiveWrites archive roots.archive else [])) with
  | error error => simp [filled] at success
  | ok result =>
      have resultProperty := emptyWrites_preserves files _ result property actionProperty
        (fun file _ kind zero => Or.inr (Or.inr ⟨file.2, kind, zero, rfl⟩)) filled
      simp only [filled] at success
      split at success
      · simp only [Except.ok.injEq] at success
        exact success ▸ resultProperty
      · cases success

/-- The lexical parent adapter is explicit. Its finite result is source-verified
separately; this closure theorem does not substitute operating-system Path rules.
Directory values are zero sentinels, not retained filesystem metadata. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CollisionCheckedMapConstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CollisionCheckedMapConstruction.lean#L862).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `684e8c0936705c83918d1dc59e13dfb153b48034` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
