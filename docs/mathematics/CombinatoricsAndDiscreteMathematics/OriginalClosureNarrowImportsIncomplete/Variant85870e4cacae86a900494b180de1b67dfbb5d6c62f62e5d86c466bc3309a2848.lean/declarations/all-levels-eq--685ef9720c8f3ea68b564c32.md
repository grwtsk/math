# all_levels_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f0d4299e-b95b-c936-64b9-4145282b19e3",
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
  "slug": "all-levels-eq--685ef9720c8f3ea68b564c32",
  "source": {
    "blob": "5514d29223fb16c1232d1bbca664d511f492ba3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 6943,
    "line": 6915,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:685ef9720c8f3ea68b564c32649281d1ee0be6cc809ef964d58b152efa24e7ed",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0d4299e-b95b-c936-64b9-4145282b19e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 6915–6943.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean#L6915).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5514d29223fb16c1232d1bbca664d511f492ba3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
