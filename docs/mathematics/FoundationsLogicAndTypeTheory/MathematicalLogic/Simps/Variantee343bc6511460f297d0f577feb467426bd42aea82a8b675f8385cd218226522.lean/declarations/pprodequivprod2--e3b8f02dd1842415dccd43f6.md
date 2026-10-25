# pprodEquivProd2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:065437253b1007df33d4df66ef5b6a833c1b5dcb27d8ac7ff3d1e502f70f5c3e",
  "kind": "def",
  "lexical_name": "pprodEquivProd2",
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
  "slug": "pprodequivprod2--e3b8f02dd1842415dccd43f6",
  "source": {
    "blob": "19ee183529cd557dab37ecf821dd56e4cbb33f9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 433,
    "line": 404,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Simps/Variantee343bc6511460f297d0f577feb467426bd42aea82a8b675f8385cd218226522.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e3b8f02dd1842415dccd43f668ba7aa27fe658d929b605300266f6248b07ac43",
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

Occurrence: `declaration:065437253b1007df33d4df66ef5b6a833c1b5dcb27d8ac7ff3d1e502f70f5c3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 404–433.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simps] def pprodEquivProd2 : PProd ℕ ℕ ≃ ℕ × ℕ :=
  { toFun := λ x => ⟨x.1, x.2⟩
    invFun := λ x => ⟨x.1, x.2⟩
    left_inv := λ ⟨_, _⟩ => rfl
    right_inv := λ ⟨_, _⟩ => rfl }

run_cmd liftTermElabM <| do
  let env ← getEnv
  guard <| env.find? `pprodEquivProd2_toFun |>.isSome
  guard <| env.find? `pprodEquivProd2_invFun |>.isSome

attribute [simps toFun_fst invFun_snd] pprodEquivProd2

run_cmd liftTermElabM <| do
  let env ← getEnv
  guard <| env.find? `pprodEquivProd2_toFun_fst |>.isSome
  guard <| env.find? `pprodEquivProd2_invFun_snd |>.isSome

-- we can disable this behavior with the option `notRecursive`.
@[simps! (config := {notRecursive := []})] def pprodEquivProd22 : PProd ℕ ℕ ≃ ℕ × ℕ :=
  pprodEquivProd2

run_cmd liftTermElabM <| do
  let env ← getEnv
  guard <| env.find? `pprodEquivProd22_toFun_fst |>.isSome
  guard <| env.find? `pprodEquivProd22_toFun_snd |>.isSome
  guard <| env.find? `pprodEquivProd22_invFun_fst |>.isSome
  guard <| env.find? `pprodEquivProd22_invFun_snd |>.isSome

/- Tests with universe levels -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Simps/Variantee343bc6511460f297d0f577feb467426bd42aea82a8b675f8385cd218226522.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Simps/Variantee343bc6511460f297d0f577feb467426bd42aea82a8b675f8385cd218226522.lean#L404).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19ee183529cd557dab37ecf821dd56e4cbb33f9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
