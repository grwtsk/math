# specify5

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:da749a622cf22483085ffa2168354758fa8b7963cc2b467f6c0bf90d43427768",
  "kind": "def",
  "lexical_name": "specify5",
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
  "slug": "specify5--ce00e1110251e9cf946aedb7",
  "source": {
    "blob": "19ee183529cd557dab37ecf821dd56e4cbb33f9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 374,
    "line": 332,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Simps/Variantee343bc6511460f297d0f577feb467426bd42aea82a8b675f8385cd218226522.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ce00e1110251e9cf946aedb75c7696dbb32d3203de53d05c22bebe1e74a9673d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Simps/Variantee343bc6511460f297d0f577feb467426bd42aea82a8b675f8385cd218226522.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:da749a622cf22483085ffa2168354758fa8b7963cc2b467f6c0bf90d43427768`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 332–374.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simps] noncomputable def specify5 : ℕ × ℕ × ℕ := (1, Classical.choice ⟨(2, 3)⟩)
end specify

run_cmd liftTermElabM <| do
  let env ← getEnv
  guard <| env.find? `specify.specify1_fst |>.isSome
  guard <| env.find? `specify.specify2_snd |>.isSome
  guard <| env.find? `specify.specify3_snd_fst |>.isSome
  guard <| env.find? `specify.specify4_snd_snd |>.isSome
  guard <| env.find? `specify.specify4_snd |>.isSome
  guard <| env.find? `specify.specify5_fst |>.isSome
  guard <| env.find? `specify.specify5_snd |>.isSome
  guard <| simpsAttr.getParam? env `specify.specify1 == #[`specify.specify1_fst]
  guard <| simpsAttr.getParam? env `specify.specify4 ==
    #[`specify.specify4_snd_snd, `specify.specify4_snd]
  guard <| simpsAttr.getParam? env `specify.specify5 ==
    #[`specify.specify5_fst, `specify.specify5_snd]
  _ ← successIfFail <| simpsTac .missing `specify.specify1 {} [("fst_fst", .missing)]
--     "Invalid simp lemma specify.specify1_fst_fst.
-- Projection fst doesn't exist, because target is not a structure."
  _ ← successIfFail <| simpsTac .missing `specify.specify1 {} [("foo_fst", .missing)]
--     "Invalid simp lemma specify.specify1_foo_fst. Structure prod does not have projection foo.
-- The known projections are:
--   [fst, snd]
-- You can also see this information by running
--   `initialize_simps_projections? prod`.
-- Note: these projection names might not correspond to the projection names of the structure."
  _ ← successIfFail <| simpsTac .missing `specify.specify1 {} [("snd_bar", .missing)]
--     "Invalid simp lemma specify.specify1_snd_bar. Structure prod does not have projection bar.
-- The known projections are:
--   [fst, snd]
-- You can also see this information by running
--   `initialize_simps_projections? prod`.
-- Note: these projection names might not correspond to the projection names of the structure."
  _ ← successIfFail <| simpsTac .missing `specify.specify5 { rhsMd := .default, simpRhs := true }
    [("snd_snd", .missing)]
--     "Invalid simp lemma specify.specify5_snd_snd.
-- The given definition is not a constructor application:
--   Classical.choice specify.specify5._proof_1"


/- We also eta-reduce if we explicitly specify the projection. -/
attribute [simps extra] test
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Simps/Variantee343bc6511460f297d0f577feb467426bd42aea82a8b675f8385cd218226522.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Simps/Variantee343bc6511460f297d0f577feb467426bd42aea82a8b675f8385cd218226522.lean#L332).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19ee183529cd557dab37ecf821dd56e4cbb33f9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
