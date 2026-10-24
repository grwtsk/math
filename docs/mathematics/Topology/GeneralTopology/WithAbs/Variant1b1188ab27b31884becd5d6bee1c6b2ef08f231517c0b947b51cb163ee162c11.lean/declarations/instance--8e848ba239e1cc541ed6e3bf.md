# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d39e2101851b845290257cd88ff22e42fe775aa7d10d2d52e2a1a9e9c433b43f",
  "kind": "instance",
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
  "slug": "instance--8e848ba239e1cc541ed6e3bf",
  "source": {
    "blob": "d5e530b217da329d254b101e6cb40d1e3f83c776",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 119,
    "path": "GRWTSK/Topology/GeneralTopology/WithAbs/Variant1b1188ab27b31884becd5d6bee1c6b2ef08f231517c0b947b51cb163ee162c11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8e848ba239e1cc541ed6e3bf754f26a39e4055ad1ce42304307a66da04181c83",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/WithAbs/Variant1b1188ab27b31884becd5d6bee1c6b2ef08f231517c0b947b51cb163ee162c11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d39e2101851b845290257cd88ff22e42fe775aa7d10d2d52e2a1a9e9c433b43f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance : Coe K v.Completion where
  coe k : v.Completion := ↑(toAbs v k)

section Algebra

variable {L : Type*} [Field L] [Algebra K L] (w : AbsoluteValue L ℝ) [w.LiesOver v]

/-- If `w` lies over `v` with completions `K_v` and `L_w`, then there is a unique `K_v`-algebra
structure on `L_w` satisfying both `IsScalarTower K K_v L_w` and `ContinuousSMul K_v L_w`,
see `AbsoluteValue.Completion.algebraMap_eq` and `AbsoluteValue.Completion.algebra_eq`. -/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/WithAbs/Variant1b1188ab27b31884becd5d6bee1c6b2ef08f231517c0b947b51cb163ee162c11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/WithAbs/Variant1b1188ab27b31884becd5d6bee1c6b2ef08f231517c0b947b51cb163ee162c11.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5e530b217da329d254b101e6cb40d1e3f83c776` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
