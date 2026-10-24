# instBiheytingAlgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2343d53f3c8321c655e7818f10959f0a22a22d09fa44e4e8385b240f371cdb28",
  "kind": "instance",
  "lexical_name": "instBiheytingAlgebra",
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
  "slug": "instbiheytingalgebra--c78f19f2fbd8c5cf67232747",
  "source": {
    "blob": "e9310e68c204f77024fbe312b2b87dd13eab3f62",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 957,
    "line": 934,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant1e51685a7b722d99cfef7e3997004c31aa2b5ef95ac402258ae8d5d9bc65b28f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c78f19f2fbd8c5cf672327471c6c6394cc1f311f4c3ab1a42d410e440da182d5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant1e51685a7b722d99cfef7e3997004c31aa2b5ef95ac402258ae8d5d9bc65b28f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2343d53f3c8321c655e7818f10959f0a22a22d09fa44e4e8385b240f371cdb28`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 934–957.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instBiheytingAlgebra : BiheytingAlgebra PUnit.{u + 1} :=
  { PUnit.instLinearOrder.{u} with
    top := unit,
    bot := unit,
    sup := fun _ _ => unit,
    inf := fun _ _ => unit,
    compl := fun _ => unit,
    sdiff := fun _ _ => unit,
    hnot := fun _ => unit,
    himp := fun _ _ => unit,
    le_top := fun _ => trivial,
    le_sup_left := fun _ _ => trivial,
    le_sup_right := fun _ _ => trivial,
    sup_le := fun _ _ _ _ _ => trivial,
    inf_le_left := fun _ _ => trivial,
    inf_le_right := fun _ _ => trivial,
    le_inf := fun _ _ _ _ _ => trivial,
    bot_le := fun _ => trivial,
    le_himp_iff := fun _ _ _ => Iff.rfl,
    himp_bot := fun _ => rfl,
    top_sdiff := fun _ => rfl,
    sdiff_le_iff := fun _ _ _ => Iff.rfl }

@[to_dual (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant1e51685a7b722d99cfef7e3997004c31aa2b5ef95ac402258ae8d5d9bc65b28f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant1e51685a7b722d99cfef7e3997004c31aa2b5ef95ac402258ae8d5d9bc65b28f.lean#L934).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9310e68c204f77024fbe312b2b87dd13eab3f62` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
