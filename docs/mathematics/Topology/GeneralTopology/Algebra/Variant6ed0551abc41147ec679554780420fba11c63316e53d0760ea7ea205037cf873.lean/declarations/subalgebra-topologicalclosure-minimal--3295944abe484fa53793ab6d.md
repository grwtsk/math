# Subalgebra.topologicalClosure_minimal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c7aa4288-a0d6-30e7-ed82-de963a5f6355",
  "kind": "theorem",
  "lexical_name": "Subalgebra.topologicalClosure_minimal",
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
  "slug": "subalgebra-topologicalclosure-minimal--3295944abe484fa53793ab6d",
  "source": {
    "blob": "116580977266b3ff2c49d9696370293ccdbc9e60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 575,
    "line": 569,
    "path": "GRWTSK/Topology/GeneralTopology/Algebra/Variant6ed0551abc41147ec679554780420fba11c63316e53d0760ea7ea205037cf873.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3295944abe484fa53793ab6dd10540352b3bab9f1cb1a3bf68cf72d1e0b7417e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Algebra/Variant6ed0551abc41147ec679554780420fba11c63316e53d0760ea7ea205037cf873.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7aa4288-a0d6-30e7-ed82-de963a5f6355`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 569–575.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Subalgebra.topologicalClosure_minimal (s : Subalgebra R A) {t : Subalgebra R A} (h : s ≤ t)
    (ht : IsClosed (t : Set A)) : s.topologicalClosure ≤ t :=
  closure_minimal h ht

/-- If a subalgebra of a topological algebra is commutative, then so is its topological closure.

See note [reducible non-instances]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Algebra/Variant6ed0551abc41147ec679554780420fba11c63316e53d0760ea7ea205037cf873.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Algebra/Variant6ed0551abc41147ec679554780420fba11c63316e53d0760ea7ea205037cf873.lean#L569).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `116580977266b3ff2c49d9696370293ccdbc9e60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
