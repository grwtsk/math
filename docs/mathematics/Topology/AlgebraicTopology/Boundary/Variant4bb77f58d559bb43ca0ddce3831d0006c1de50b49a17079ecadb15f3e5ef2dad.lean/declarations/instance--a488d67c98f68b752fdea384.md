# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9fa0d00e754f4ac24a2f9754ffc7d0ef6f8e7b298ca7b04f5cbf217c1acb4082",
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
  "slug": "instance--a488d67c98f68b752fdea384",
  "source": {
    "blob": "af628b714623423d13a80a1f6c39908e87a6e618",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 192,
    "path": "GRWTSK/Topology/AlgebraicTopology/Boundary/Variant4bb77f58d559bb43ca0ddce3831d0006c1de50b49a17079ecadb15f3e5ef2dad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a488d67c98f68b752fdea384fc2fb02126c0099588de6e599fc333a7305cf5de",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Boundary/Variant4bb77f58d559bb43ca0ddce3831d0006c1de50b49a17079ecadb15f3e5ef2dad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9fa0d00e754f4ac24a2f9754ffc7d0ef6f8e7b298ca7b04f5cbf217c1acb4082`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance {n : ℕ} (i : Fin (n + 2)) : Mono (stdSimplex.{u}.δ i) := by
  rw [← ι_ι]
  infer_instance

@[ext]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Boundary/Variant4bb77f58d559bb43ca0ddce3831d0006c1de50b49a17079ecadb15f3e5ef2dad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Boundary/Variant4bb77f58d559bb43ca0ddce3831d0006c1de50b49a17079ecadb15f3e5ef2dad.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af628b714623423d13a80a1f6c39908e87a6e618` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
