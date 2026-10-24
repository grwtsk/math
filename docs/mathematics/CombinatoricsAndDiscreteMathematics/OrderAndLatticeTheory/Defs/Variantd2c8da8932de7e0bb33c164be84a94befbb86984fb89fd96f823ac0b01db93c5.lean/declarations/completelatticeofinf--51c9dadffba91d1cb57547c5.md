# completeLatticeOfInf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fa0b2d9b3db4dc0086b2439fd765e800ed30bd686d9f0bc8e897d53da6b1ca42",
  "kind": "def",
  "lexical_name": "completeLatticeOfInf",
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
  "slug": "completelatticeofinf--51c9dadffba91d1cb57547c5",
  "source": {
    "blob": "235775edd03a7d4969ebad86a1880be8b160769f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 194,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantd2c8da8932de7e0bb33c164be84a94befbb86984fb89fd96f823ac0b01db93c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:51c9dadffba91d1cb57547c5ec24b3b5c6b1c17aac5c54d29e683a886f63c0fa",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantd2c8da8932de7e0bb33c164be84a94befbb86984fb89fd96f823ac0b01db93c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fa0b2d9b3db4dc0086b2439fd765e800ed30bd686d9f0bc8e897d53da6b1ca42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def completeLatticeOfInf (α : Type*) [H1 : PartialOrder α] [H2 : InfSet α]
    (isGLB_sInf : ∀ s : Set α, IsGLB s (sInf s)) : CompleteLattice α where
  __ := H1; __ := H2
  bot := sInf univ
  bot_le _ := (isGLB_sInf univ).1 trivial
  top := sInf ∅
  le_top a := (isGLB_sInf ∅).2 <| by simp
  sup a b := sInf { x : α | a ≤ x ∧ b ≤ x }
  inf a b := sInf {a, b}
  le_inf a b c hab hac := by
    apply (isGLB_sInf _).2
    simp [*]
  inf_le_right _ _ := (isGLB_sInf _).1 <| mem_insert_of_mem _ <| mem_singleton _
  inf_le_left _ _ := (isGLB_sInf _).1 <| mem_insert _ _
  sup_le a b c hac hbc := (isGLB_sInf _).1 <| by simp [*]
  le_sup_left _ _ := (isGLB_sInf _).2 fun _ => And.left
  le_sup_right _ _ := (isGLB_sInf _).2 fun _ => And.right
  le_sInf s _ ha := (isGLB_sInf s).2 ha
  sInf_le s _ ha := (isGLB_sInf s).1 ha
  sSup s := sInf (upperBounds s)
  le_sSup s _ ha := (isGLB_sInf (upperBounds s)).2 fun _ hb => hb ha
  sSup_le s _ ha := (isGLB_sInf (upperBounds s)).1 ha

/-- Any `CompleteSemilatticeInf` is in fact a `CompleteLattice`.

Note that this construction has bad definitional properties:
see the doc-string on `completeLatticeOfInf`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantd2c8da8932de7e0bb33c164be84a94befbb86984fb89fd96f823ac0b01db93c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantd2c8da8932de7e0bb33c164be84a94befbb86984fb89fd96f823ac0b01db93c5.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `235775edd03a7d4969ebad86a1880be8b160769f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
