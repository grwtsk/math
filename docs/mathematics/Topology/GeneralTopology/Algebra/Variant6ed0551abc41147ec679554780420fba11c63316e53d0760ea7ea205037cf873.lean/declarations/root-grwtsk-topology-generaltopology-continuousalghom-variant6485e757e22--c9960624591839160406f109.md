# _root_.GRWTSK.Topology.GeneralTopology.ContinuousAlgHom.Variant6485e757e2254beded1fa65927f051a2c61ac5f2f70960a0d09f357e4b66f8f4.DenseRange.topologicalClosure_map_subalgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:491541c8-2634-2e73-5134-8ed651e20594",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.ContinuousAlgHom.Variant6485e757e2254beded1fa65927f051a2c61ac5f2f70960a0d09f357e4b66f8f4.DenseRange.topologicalClosure_map_subalgebra",
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
  "slug": "root-grwtsk-topology-generaltopology-continuousalghom-variant6485e757e22--c9960624591839160406f109",
  "source": {
    "blob": "116580977266b3ff2c49d9696370293ccdbc9e60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 258,
    "path": "GRWTSK/Topology/GeneralTopology/Algebra/Variant6ed0551abc41147ec679554780420fba11c63316e53d0760ea7ea205037cf873.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c9960624591839160406f10916fb863c76c67d95f0fb395e19684e1886e0bbaa",
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

Occurrence: `result:491541c8-2634-2e73-5134-8ed651e20594`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Topology.GeneralTopology.ContinuousAlgHom.Variant6485e757e2254beded1fa65927f051a2c61ac5f2f70960a0d09f357e4b66f8f4.DenseRange.topologicalClosure_map_subalgebra
    [IsTopologicalSemiring B] {f : A →A[R] B} (hf' : DenseRange f) {s : Subalgebra R A}
    (hs : s.topologicalClosure = ⊤) : (s.map (f : A →ₐ[R] B)).topologicalClosure = ⊤ := by
  rw [SetLike.ext'_iff] at hs ⊢
  simp only [Subalgebra.topologicalClosure_coe, coe_top, ← dense_iff_closure_eq, Subalgebra.coe_map,
    AlgHom.coe_coe] at hs ⊢
  exact hf'.dense_image f.continuous hs

end Semiring

section id

variable [TopologicalSpace A]
variable [Algebra R A]

/-- The identity map as a continuous algebra homomorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Algebra/Variant6ed0551abc41147ec679554780420fba11c63316e53d0760ea7ea205037cf873.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Algebra/Variant6ed0551abc41147ec679554780420fba11c63316e53d0760ea7ea205037cf873.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `116580977266b3ff2c49d9696370293ccdbc9e60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
