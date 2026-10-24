# all_levels_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eca5fc47-4c90-6656-fbef-79b7ebba3e68",
  "kind": "theorem",
  "lexical_name": "all_levels_eq",
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
  "slug": "all-levels-eq--b911862194a5fbde96b3e6dd",
  "source": {
    "blob": "5e0d083ec1beb708a9e8efdc39363be16152f8d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 6932,
    "line": 6904,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantae0ff5f70d14d4ff6c8238c8e96e9149279270c9fd827fb9f23991dc14eb61b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b911862194a5fbde96b3e6dd43acc66bc7acde331f67c4239e87ede4c5495805",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantae0ff5f70d14d4ff6c8238c8e96e9149279270c9fd827fb9f23991dc14eb61b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eca5fc47-4c90-6656-fbef-79b7ebba3e68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 6904–6932.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem all_levels_eq (h : ∀ n, Agree n p q) : p = q := by
  have bound_frame (a : Frame Q V (Minus Q V B O)) : ∃ n, FrameBound n a := by
    rcases a with ⟨key,payload⟩
    cases payload with
    | none => exact ⟨0, fun _ hh => by cases hh⟩
    | plain v => exact ⟨0, fun _ hh => by cases hh⟩
    | opposite x =>
        obtain ⟨n,hn⟩ := InStage.exists_stage x
        exact ⟨n,fun y hy => Payload.opposite.inj hy ▸ hn⟩
  have bound_stack (as : ContinueStack Q V (Minus Q V B O)) : ∃ n, ContinueBound n as := by
    induction as with
    | nil => exact ⟨0, fun _ hh => by cases hh⟩
    | cons a as ih =>
        obtain ⟨n,hn⟩ := bound_frame a
        obtain ⟨m,hm⟩ := ih
        exact ⟨max n m,ContinueBound.cons a (hn.mono (le_max_left _ _)) (hm.mono (le_max_right _ _))⟩
  apply Table.ext
  · funext as
    obtain ⟨n,hn⟩ := bound_stack as
    exact (h n).continuing hn
  · funext as
    obtain ⟨n,hn⟩ := bound_stack as.1
    obtain ⟨m,hm⟩ := bound_frame as.2
    exact (h (max n m)).exiting ⟨hn.mono (le_max_left _ _),hm.mono (le_max_right _ _)⟩
end Agree

variable (b : B) (o : O)
include b o

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantae0ff5f70d14d4ff6c8238c8e96e9149279270c9fd827fb9f23991dc14eb61b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantae0ff5f70d14d4ff6c8238c8e96e9149279270c9fd827fb9f23991dc14eb61b9.lean#L6904).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e0d083ec1beb708a9e8efdc39363be16152f8d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
