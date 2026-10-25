# eq_mk_iff_exists

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a1777df3-f1c9-721e-9ef6-2777cc940749",
  "kind": "theorem",
  "lexical_name": "eq_mk_iff_exists",
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
  "slug": "eq-mk-iff-exists--b3fddc4b998e3a969f2cbbb1",
  "source": {
    "blob": "15fbd156e1e9bdaa432240aca834e8b9fa948d66",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 220,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ConcreteSheafification/Variant7253c82cef94f544ace8f02eed3563da8791fb075d2fe5fa823adf6ff73d5fd7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3fddc4b998e3a969f2cbbb18ce592d7104e8bcef176076ac38674530a96b047",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ConcreteSheafification/Variant7253c82cef94f544ace8f02eed3563da8791fb075d2fe5fa823adf6ff73d5fd7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a1777df3-f1c9-721e-9ef6-2777cc940749`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_mk_iff_exists {X : C} {P : Cᵒᵖ ⥤ D} {S T : J.Cover X} (x : Meq P S) (y : Meq P T) :
    mk x = mk y ↔ ∃ (W : J.Cover X) (h1 : W ⟶ S) (h2 : W ⟶ T), x.refine h1 = y.refine h2 := by
  constructor
  · intro h
    obtain ⟨W, h1, h2, hh⟩ := Concrete.colimit_exists_of_rep_eq.{u} (C := D) _ _ _ h
    use W.unop, h1.unop, h2.unop
    ext I
    apply_fun Multiequalizer.ι (W.unop.index P) I at hh
    convert hh
    all_goals
      dsimp [diagram]
      rw [← ConcreteCategory.comp_apply, Multiequalizer.lift_ι]
      erw [Meq.equiv_symm_eq_apply]
      cases I; rfl
  · rintro ⟨S, h1, h2, e⟩
    apply Concrete.colimit_rep_eq_of_exists (C := D)
    use op S, h1.op, h2.op
    apply Concrete.multiequalizer_ext
    intro i
    apply_fun fun ee => ee i at e
    convert e using 1
    all_goals
      dsimp [diagram]
      rw [← ConcreteCategory.comp_apply, Multiequalizer.lift_ι]
      erw [Meq.equiv_symm_eq_apply]
      cases i; rfl

/-- `P⁺` is always separated. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ConcreteSheafification/Variant7253c82cef94f544ace8f02eed3563da8791fb075d2fe5fa823adf6ff73d5fd7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ConcreteSheafification/Variant7253c82cef94f544ace8f02eed3563da8791fb075d2fe5fa823adf6ff73d5fd7.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15fbd156e1e9bdaa432240aca834e8b9fa948d66` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
