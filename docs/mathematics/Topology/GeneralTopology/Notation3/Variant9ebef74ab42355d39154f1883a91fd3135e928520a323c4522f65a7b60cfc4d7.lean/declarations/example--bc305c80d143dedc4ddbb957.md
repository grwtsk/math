# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fd5139916081b7c05df970b7e45bfd10162debee10acff3950c34ebd6cd619de",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--bc305c80d143dedc4ddbb957",
  "source": {
    "blob": "53e59c536f28feebfe4f6be70af83f5896b278dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 270,
    "line": 203,
    "path": "GRWTSK/Topology/GeneralTopology/Notation3/Variant9ebef74ab42355d39154f1883a91fd3135e928520a323c4522f65a7b60cfc4d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bc305c80d143dedc4ddbb95783335b69854c9ebe074044e5768cfc18dc3dea94",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Notation3/Variant9ebef74ab42355d39154f1883a91fd3135e928520a323c4522f65a7b60cfc4d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fd5139916081b7c05df970b7e45bfd10162debee10acff3950c34ebd6cd619de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example : Fin 5 := #1

/--
error: tactic 'decide' proved that the proposition
  6 < 5
is false
-/
#guard_msgs in example : Fin 5 := #6

end

section test_scoped

scoped[MyNotation] notation3 "π" => (3 : Nat)

/-- error: unknown identifier 'π' -/
#guard_msgs in #check π

open scoped MyNotation

/-- info: π : ℕ -/
#guard_msgs in #check π

end test_scoped

/-!
Verifying that delaborator does not match the exact `Inhabited` instance.
Instead, it matches that it's an application of `Inhabited.default` whose first argument is `Nat`.
-/
/--
info: [notation3] syntax declaration has name Test.termδNat
---
info: [notation3] Generating matcher for pattern default
[notation3] Matcher creation succeeded; assembling delaborator
[notation3] matcher:
      matchApp✝ (matchApp✝ (matchExpr✝ (Expr.isConstOf✝ · `Inhabited.default)) (matchExpr✝ (Expr.isConstOf✝ · `Nat)))
          pure✝ >=>
        pure✝
[notation3] Creating delaborator for key Mathlib.Notation3.DelabKey.app (some `Inhabited.default) 2
---
info: [notation3] Defined delaborator Test.termδNat.«delab_app.Inhabited.default»
-/
#guard_msgs in
set_option trace.notation3 true in
notation3 "δNat" => (default : Nat)

/-- info: δNat : ℕ -/
#guard_msgs in #check (default : Nat)
/-- info: δNat : ℕ -/
#guard_msgs in #check @default Nat (Inhabited.mk 5)


notation3 "(" "ignorez " "SVP" ")" => Sort _
notation3 "Objet " "mathématique " "supérieur" => Type _
notation3 "Énoncé" => Prop
notation3 "Objet " "mathématique" => Type
/-- info: 1 = 1 : Énoncé -/
#guard_msgs in #check 1 = 1
/-- info: Énoncé : Objet mathématique -/
#guard_msgs in #check Prop
/-- info: Nat : Objet mathématique -/
#guard_msgs in #check Nat
/-- info: Objet mathématique : Objet mathématique supérieur -/
#guard_msgs in #check Type
/-- info: PSum.{u, v} (α : (ignorez SVP)) (β : (ignorez SVP)) : (ignorez SVP) -/
#guard_msgs in #check PSum

end Test
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Notation3/Variant9ebef74ab42355d39154f1883a91fd3135e928520a323c4522f65a7b60cfc4d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Notation3/Variant9ebef74ab42355d39154f1883a91fd3135e928520a323c4522f65a7b60cfc4d7.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53e59c536f28feebfe4f6be70af83f5896b278dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
