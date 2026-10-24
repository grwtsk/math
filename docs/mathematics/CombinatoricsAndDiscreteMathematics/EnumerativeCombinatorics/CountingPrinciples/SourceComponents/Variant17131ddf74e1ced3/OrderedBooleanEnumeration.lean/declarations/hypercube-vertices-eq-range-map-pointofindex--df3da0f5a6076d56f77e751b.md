# Hypercube.vertices_eq_range_map_pointOfIndex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:221648cc-750d-5208-f945-3a40dbaa13e2",
  "kind": "theorem",
  "lexical_name": "Hypercube.vertices_eq_range_map_pointOfIndex",
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
  "slug": "hypercube-vertices-eq-range-map-pointofindex--df3da0f5a6076d56f77e751b",
  "source": {
    "blob": "893624f09af250619535748fd5dbba0477c4c71d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 119,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/SourceComponents/Variant17131ddf74e1ced3/OrderedBooleanEnumeration.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df3da0f5a6076d56f77e751b5c2ba5562bd805badd2e602c5a809df4a6c085a0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/SourceComponents/Variant17131ddf74e1ced3/OrderedBooleanEnumeration.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:221648cc-750d-5208-f945-3a40dbaa13e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Hypercube.vertices_eq_range_map_pointOfIndex (n : Nat) :
    Hypercube.vertices n =
      (List.range (2 ^ n)).map (Hypercube.pointOfIndex n) := by
  induction n with
  | zero =>
      simp only [Hypercube.vertices, Nat.pow_zero, List.range_one, List.map_cons,
        List.map_nil, List.cons.injEq, and_true]
      funext i
      exact Fin.elim0 i
  | succ n ih =>
      rw [Hypercube.vertices, ih, Nat.pow_succ]
      rw [show 2 ^ n * 2 = 2 * 2 ^ n by omega, Hypercube.range_two_mul]
      simp only [List.flatMap_map, List.map_flatMap, List.map_cons, List.map_nil]
      apply congrArg (fun f : Nat → List (Hypercube.Point (n + 1)) =>
        List.flatMap f (List.range (2 ^ n)))
      funext k
      rw [Hypercube.pointOfIndex_two_mul, Hypercube.pointOfIndex_two_mul_add_one]

end Boolean.Cube
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/SourceComponents/Variant17131ddf74e1ced3/OrderedBooleanEnumeration.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/SourceComponents/Variant17131ddf74e1ced3/OrderedBooleanEnumeration.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `893624f09af250619535748fd5dbba0477c4c71d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
