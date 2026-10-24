# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:549ee9846d954a3defd77875965b22865d4ce11e63ba38f93e9be1ff7e2aaf27",
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
  "slug": "example--63faf9fe56713f3c20b396a1",
  "source": {
    "blob": "286ded17c69f3c490d9049c99d1eb9e59a8397dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 173,
    "path": "GRWTSK/Analysis/MeasureTheory/FunProp/Variant34c01bd206c30a16fdeb4f29a8e690837ab78f42d84be1a0df11c3093573173b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:63faf9fe56713f3c20b396a1e027cc38df1e858f1fc37ab9b27ad36e95f43076",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/FunProp/Variant34c01bd206c30a16fdeb4f29a8e690837ab78f42d84be1a0df11c3093573173b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:549ee9846d954a3defd77875965b22865d4ce11e63ba38f93e9be1ff7e2aaf27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (f : ℝ → ℝ → ℝ) (hf : Continuous fun (x, y) ↦ f x y) (a : ℝ) :
    Measurable (fun x => (f x a, f (f x x) (f (f x x) x))) := by fun_prop


/-!
To keep `fun_prop` performant it is important to keep these "transition theorems" in the form
`P f → Q f` i.e. the conclusion has to talk about a single free variable `f`. Furthermore,
the "transition theorems" should **not** form a cycle.
-/


/-!
Lastly there are "morphism theorems". These are really just theorems about the properties of
`DFunLike.coe` and are treated somewhat specially.

Let's make continuous linear maps work with measurability. The function `DFunLike.coe` is
a function of two arguments `f : E →L[K] F` and `x : E`. Mathlib currently states
measurability of `DFunLike.coe` in `f` and `x` separately.

The theorem `ContinuousLinearMap.measurable` states measurability in `x` in uncurried form.
The theorem `ContinuousLinearMap.measurable_comp` states measurability in `x` in compositional form.
The theorem `ContinuousLinearMap.measurable_apply` states measurability in `f` in uncurried form.
The theorem `Measurable.apply_continuousLinearMap` states measurability in `f` in compositional
form.
-/

set_option linter.style.longLine false in
attribute [fun_prop]
  ContinuousLinearMap.measurable       -- Measurable fun (x : E) => DFunLike.coe L x
  ContinuousLinearMap.measurable_comp  -- Measurable φ → Measurable fun (x : E) => DFunLike.coe L (φ x)
  ContinuousLinearMap.measurable_apply -- Measurable fun (f : E →L[K] F) => DFunLike.coe f x
  Measurable.apply_continuousLinearMap -- Measurable L → Measurable fun (x : α) => DFunLike.coe (L x) v


/-!
A silly example that everything together works as expected
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/FunProp/Variant34c01bd206c30a16fdeb4f29a8e690837ab78f42d84be1a0df11c3093573173b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/FunProp/Variant34c01bd206c30a16fdeb4f29a8e690837ab78f42d84be1a0df11c3093573173b.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `286ded17c69f3c490d9049c99d1eb9e59a8397dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
