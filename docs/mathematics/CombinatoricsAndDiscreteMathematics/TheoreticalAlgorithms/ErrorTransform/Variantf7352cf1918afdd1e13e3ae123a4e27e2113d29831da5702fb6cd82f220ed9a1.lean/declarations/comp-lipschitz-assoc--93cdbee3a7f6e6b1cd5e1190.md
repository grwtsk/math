# comp_lipschitz_assoc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:42020581-01b8-89f2-4afa-0fa666cd2518",
  "kind": "theorem",
  "lexical_name": "comp_lipschitz_assoc",
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
  "slug": "comp-lipschitz-assoc--93cdbee3a7f6e6b1cd5e1190",
  "source": {
    "blob": "b4f03457fc634d747ab0c19df315ad47aba748fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 357,
    "line": 346,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ErrorTransform/Variantf7352cf1918afdd1e13e3ae123a4e27e2113d29831da5702fb6cd82f220ed9a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93cdbee3a7f6e6b1cd5e1190a538a159e379a33f76f2ac717337b5166ce09ed9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ErrorTransform/Variantf7352cf1918afdd1e13e3ae123a4e27e2113d29831da5702fb6cd82f220ed9a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42020581-01b8-89f2-4afa-0fa666cd2518`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 346–357.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comp_lipschitz_assoc
    {W : Type*}
    [PseudoMetricSpace W]
    (third : ControlledApproximation Z W)
    (second : ControlledApproximation Y Z)
    (first : ControlledApproximation X Y) :
    (comp (comp third second) first).lipschitz =
      (comp third (comp second first)).lipschitz := by
  simp [comp]
  ac_rfl

/-- Parenthesization does not change reference behavior. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ErrorTransform/Variantf7352cf1918afdd1e13e3ae123a4e27e2113d29831da5702fb6cd82f220ed9a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ErrorTransform/Variantf7352cf1918afdd1e13e3ae123a4e27e2113d29831da5702fb6cd82f220ed9a1.lean#L346).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4f03457fc634d747ab0c19df315ad47aba748fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
