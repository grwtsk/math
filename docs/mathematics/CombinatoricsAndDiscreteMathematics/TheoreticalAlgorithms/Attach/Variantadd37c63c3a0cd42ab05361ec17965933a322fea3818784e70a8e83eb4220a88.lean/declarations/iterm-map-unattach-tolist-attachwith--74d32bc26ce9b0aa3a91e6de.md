# IterM.map_unattach_toList_attachWith

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:51a5e25d-1298-afc3-33b8-3471806e067a",
  "kind": "theorem",
  "lexical_name": "IterM.map_unattach_toList_attachWith",
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
  "slug": "iterm-map-unattach-tolist-attachwith--74d32bc26ce9b0aa3a91e6de",
  "source": {
    "blob": "1c1425e35e36a8d246a5ee30830e69bbea09f77b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 39,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variantadd37c63c3a0cd42ab05361ec17965933a322fea3818784e70a8e83eb4220a88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74d32bc26ce9b0aa3a91e6de32d351e98bb7bae390fdd8df0839545dd9616107",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variantadd37c63c3a0cd42ab05361ec17965933a322fea3818784e70a8e83eb4220a88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51a5e25d-1298-afc3-33b8-3471806e067a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IterM.map_unattach_toList_attachWith [Iterator α m β] [Monad m]
    {it : IterM (α := α) m β} {hP}
    [Finite α m] [LawfulMonad m] :
    List.unattach <$> (it.attachWith P hP).toList = it.toList := by
  induction it using IterM.inductSteps with | step it ihy ihs
  rw [IterM.toList_eq_match_step, IterM.toList_eq_match_step, step_attachWith]
  simp only [bind_pure_comp, bind_map_left, map_bind]
  apply bind_congr
  intro step
  cases step.inflate using PlausibleIterStep.casesOn
  · rename_i it' out hp
    simp only [IterM.attachWith] at ihy
    simp [Types.Attach.Monadic.modifyStep,
      ← ihy ‹_› (hP := fun out h => hP out (.indirect ⟨_, rfl, hp⟩ h))]
  · simp only [IterM.attachWith] at ihs
    simp [Types.Attach.Monadic.modifyStep, ihs ‹_›]
  · simp [Types.Attach.Monadic.modifyStep]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variantadd37c63c3a0cd42ab05361ec17965933a322fea3818784e70a8e83eb4220a88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variantadd37c63c3a0cd42ab05361ec17965933a322fea3818784e70a8e83eb4220a88.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c1425e35e36a8d246a5ee30830e69bbea09f77b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
