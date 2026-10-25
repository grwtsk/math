# liftRel_flatten

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:47d3ddf5-937c-c4d6-dbfb-16960e34f20f",
  "kind": "theorem",
  "lexical_name": "liftRel_flatten",
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
  "slug": "liftrel-flatten--a9258532fde6ff7214a42c22",
  "source": {
    "blob": "bb8a7cd095b3d89e1ee7aa62d16379af289e85f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1175,
    "line": 1161,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WSeq/Variant2092fc6796d19b2c0af6173be2b4708848d9f0d797df12a903c9136633d61a87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9258532fde6ff7214a42c227fac618afb6110e0621ccb36e47030ef8c997503",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/WSeq/Variant2092fc6796d19b2c0af6173be2b4708848d9f0d797df12a903c9136633d61a87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47d3ddf5-937c-c4d6-dbfb-16960e34f20f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1161–1175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem liftRel_flatten {R : α → β → Prop} {c1 : Computation (WSeq α)} {c2 : Computation (WSeq β)}
    (h : c1.LiftRel (LiftRel R) c2) : LiftRel R (flatten c1) (flatten c2) :=
  let S s t := ∃ c1 c2, s = flatten c1 ∧ t = flatten c2 ∧ Computation.LiftRel (LiftRel R) c1 c2
  ⟨S, ⟨c1, c2, rfl, rfl, h⟩, fun {s t} h =>
    match s, t, h with
    | _, _, ⟨c1, c2, rfl, rfl, h⟩ => by
      -- Porting note: `exists_and_left` should be excluded.
      simp [-exists_and_left]; apply liftRel_bind _ _ h
      intro a b ab; apply Computation.LiftRel.imp _ _ _ (liftRel_destruct ab)
      intro a b; apply LiftRelO.imp_right
      intro s t h; refine' ⟨Computation.pure s, Computation.pure t, _, _, _⟩ <;>
        -- Porting note: These 2 theorems should be excluded.
        simp [h, -liftRel_pure_left, -liftRel_pure_right]⟩
#align stream.wseq.lift_rel_flatten Stream'.WSeq.liftRel_flatten

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/WSeq/Variant2092fc6796d19b2c0af6173be2b4708848d9f0d797df12a903c9136633d61a87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WSeq/Variant2092fc6796d19b2c0af6173be2b4708848d9f0d797df12a903c9136633d61a87.lean#L1161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb8a7cd095b3d89e1ee7aa62d16379af289e85f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
