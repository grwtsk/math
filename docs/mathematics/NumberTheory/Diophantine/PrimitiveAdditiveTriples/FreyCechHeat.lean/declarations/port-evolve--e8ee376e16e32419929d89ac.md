# port_evolve

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4eeadf68-c616-70ba-ffd9-1043e81d8f9e",
  "kind": "theorem",
  "lexical_name": "port_evolve",
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
  "slug": "port-evolve--e8ee376e16e32419929d89ac",
  "source": {
    "blob": "b0b0e6d2a303a28d5bcd69788c7b1141db5ce9b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 133,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechHeat.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8ee376e16e32419929d89acb21bb9687b73d16d576c4cdc56331cb0233505ed",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechHeat.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4eeadf68-c616-70ba-ffd9-1043e81d8f9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem port_evolve (a b l : ℝ) (hl : a * b * l = 1) (k : ℕ) (t : ℝ)
    (v : Data a b k) : port a b l hl k (evolve a b k t v) =
      evolve a b k t (port a b l hl k v) := by
  let F : stage a b k →+ stage a b k := (stageEquiv a b l hl k).toLinearMap.toAddMonoidHom
  apply Prod.ext
  · change (fun j => F ((tree v.2 + FreyCoefficientHeat.heat a b k t (common v.1 v.2)) j)) =
      tree (fun j => F (v.2 j)) + FreyCoefficientHeat.heat a b k t
        (common (fun j => F (v.1 j)) (fun j => F (v.2 j)))
    rw [map_tree, map_common]
    have hh := FreyCoefficientHeat.heat_lift a b l hl k t (common v.1 v.2)
    funext j
    have hj := congrFun hh j
    change F (tree v.2 j + _) = F (tree v.2 j) + _
    rw [map_add]
    exact congrArg (fun u => F (tree v.2 j) + u) hj
  · change (fun j => F (replaceClosure v.2 (FreyCoefficientHeat.closureHeat a b k t (delta1 v.2)) j)) =
      replaceClosure (fun j => F (v.2 j))
        (FreyCoefficientHeat.closureHeat a b k t (delta1 (fun j => F (v.2 j))))
    rw [map_closure, ← FreyCoefficientHeat.closureHeat_lift a b l hl k t (delta1 v.2)]
    exact (map_replaceClosure F _ _).symm

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCechHeat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechHeat.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechHeat.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0b0e6d2a303a28d5bcd69788c7b1141db5ce9b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
