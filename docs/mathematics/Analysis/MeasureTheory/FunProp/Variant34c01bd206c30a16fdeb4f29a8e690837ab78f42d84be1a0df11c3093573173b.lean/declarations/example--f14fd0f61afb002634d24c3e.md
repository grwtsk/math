# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:80888b4b770f93d1d5336bee25332ded672c588e7d8c133790b3ad9089bb78e6",
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
  "slug": "example--f14fd0f61afb002634d24c3e",
  "source": {
    "blob": "286ded17c69f3c490d9049c99d1eb9e59a8397dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 211,
    "path": "GRWTSK/Analysis/MeasureTheory/FunProp/Variant34c01bd206c30a16fdeb4f29a8e690837ab78f42d84be1a0df11c3093573173b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f14fd0f61afb002634d24c3e01a2c0970b4f7d44ddcc7959804bba0c297b9cdb",
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

Occurrence: `declaration:80888b4b770f93d1d5336bee25332ded672c588e7d8c133790b3ad9089bb78e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (f : ℝ → ℝ → (ℝ →L[ℝ] ℝ)) (hf : Continuous (fun (x, y) ↦ f x y)) :
    Measurable fun x => (f (x / x) (x * x) 1 + x) := by fun_prop

set_option linter.style.longLine false in
/-!
In the current state of `fun_prop`, morphism theorems **have to** be stated in compositional form.
Sometimes they might work in uncurried form but `fun_prop` is not designed that way right now.


In other cases the function property of `DFunLike.coe` can be stated jointly in `f` and `x`.
This is the case of `ContDiff n` and continuous linear maps. The theorem is `ContDiff.clm_apply`.


#check ContDiff.clm_apply -- {f : E → F →L[K] G} → {g : E → F} →  ContDiff K n f → ContDiff K n g → ContDiff K n fun x => DFunLike.coe (f x) (g x)

If possible, `fun_prop` theorem about `DFunLike.coe` should be state in this way.


That should be all about `fun_prop`, I hope you will enjoy using it :)
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/FunProp/Variant34c01bd206c30a16fdeb4f29a8e690837ab78f42d84be1a0df11c3093573173b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/FunProp/Variant34c01bd206c30a16fdeb4f29a8e690837ab78f42d84be1a0df11c3093573173b.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `286ded17c69f3c490d9049c99d1eb9e59a8397dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
