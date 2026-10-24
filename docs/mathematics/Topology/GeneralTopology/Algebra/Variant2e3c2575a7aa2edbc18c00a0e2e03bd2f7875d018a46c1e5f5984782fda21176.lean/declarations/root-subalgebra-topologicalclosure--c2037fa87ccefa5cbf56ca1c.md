# _root_.Subalgebra.topologicalClosure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1c5fe46d71c4d0f4dcb39e0ec2f1a39dc1d97da40c3ace10a5830937fc7c583e",
  "kind": "def",
  "lexical_name": "_root_.Subalgebra.topologicalClosure",
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
  "slug": "root-subalgebra-topologicalclosure--c2037fa87ccefa5cbf56ca1c",
  "source": {
    "blob": "9d3745b7bbdd394222d1b9191d553d646007858d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 263,
    "path": "GRWTSK/Topology/GeneralTopology/Algebra/Variant2e3c2575a7aa2edbc18c00a0e2e03bd2f7875d018a46c1e5f5984782fda21176.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c2037fa87ccefa5cbf56ca1c3bdc3a2436e36fa46ad11efdd12dd62ad1a559e5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Algebra/Variant2e3c2575a7aa2edbc18c00a0e2e03bd2f7875d018a46c1e5f5984782fda21176.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1c5fe46d71c4d0f4dcb39e0ec2f1a39dc1d97da40c3ace10a5830937fc7c583e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.Subalgebra.topologicalClosure (s : Subalgebra R A) : Subalgebra R A where
  toSubsemiring := s.toSubsemiring.topologicalClosure
  algebraMap_mem' r := by
    simp only [Subsemiring.coe_carrier_toSubmonoid, Subsemiring.topologicalClosure_coe,
      Subalgebra.coe_toSubsemiring]
    apply subset_closure
    exact algebraMap_mem s r

/-- Under a continuous algebra map, the image of the `TopologicalClosure` of a subalgebra is
contained in the `TopologicalClosure` of its image. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Algebra/Variant2e3c2575a7aa2edbc18c00a0e2e03bd2f7875d018a46c1e5f5984782fda21176.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Algebra/Variant2e3c2575a7aa2edbc18c00a0e2e03bd2f7875d018a46c1e5f5984782fda21176.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d3745b7bbdd394222d1b9191d553d646007858d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
