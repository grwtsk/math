# graphAlgebra_preserves

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f739807c-6e94-3abc-2c6a-c1086f51ce78",
  "kind": "theorem",
  "lexical_name": "graphAlgebra_preserves",
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
  "slug": "graphalgebra-preserves--6d58462db637f1038bb2bdfe",
  "source": {
    "blob": "3743ea3001b3af818c1310f457f7471f5dba809c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 213,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant33e766fb75c10dc81188e7e63db46e053b9c11e88c65ccde29425827cf1668b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d58462db637f1038bb2bdfeb4d74938270fd6b2421be3a42a8432601e06e709",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant33e766fb75c10dc81188e7e63db46e053b9c11e88c65ccde29425827cf1668b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f739807c-6e94-3abc-2c6a-c1086f51ce78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem graphAlgebra_preserves (color : Carrier → Carrier → Lat)
    (rel : Congruence (graphAlgebra color)) {placement : Carrier → Carrier}
    (admissible : Admissible color placement) {left right : Carrier} (related : rel left right) :
    rel (placement left) (placement right) := by
  classical
  let Maps := {placement : Carrier → Carrier // Admissible color placement}
  have preserved := rel.compatible ((Fintype.equivFin Maps) ⟨placement, admissible⟩)
    (fun _ => left) (fun _ => right) (fun _ => related)
  simpa only [graphAlgebra, Maps, Equiv.symm_apply_apply] using preserved

/-- Each lattice element defines the equivalence relation of edges below its color. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant33e766fb75c10dc81188e7e63db46e053b9c11e88c65ccde29425827cf1668b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant33e766fb75c10dc81188e7e63db46e053b9c11e88c65ccde29425827cf1668b2.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3743ea3001b3af818c1310f457f7471f5dba809c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
