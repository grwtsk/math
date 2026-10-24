# prod_projLeft_projRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:18011623-4f38-6cea-7dcb-60348a46ee64",
  "kind": "theorem",
  "lexical_name": "prod_projLeft_projRight",
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
  "slug": "prod-projleft-projright--fef153941174dc985207d158",
  "source": {
    "blob": "36b5fa2735105fc09d65b61c644b93defe67c67b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 216,
    "path": "GRWTSK/Topology/AlgebraicTopology/Product/Variantcb060c382086a9fe7fba22070c65a0e5eb08ad8fa495225c02646ae81812ae16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fef153941174dc985207d1583be4b74a9259d6c59c00112d986ca52347606cf3",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Product/Variantcb060c382086a9fe7fba22070c65a0e5eb08ad8fa495225c02646ae81812ae16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18011623-4f38-6cea-7dcb-60348a46ee64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_projLeft_projRight (p : Path.Homotopic.Quotient (a₁, b₁) (a₂, b₂)) :
    prod (projLeft p) (projRight p) = p := by
  induction p using Quotient.inductionOn
  simp only [projLeft, projRight, ← Path.Homotopic.map_lift, prod_lift]
  congr

end Prod

end Path.Homotopic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Product/Variantcb060c382086a9fe7fba22070c65a0e5eb08ad8fa495225c02646ae81812ae16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Product/Variantcb060c382086a9fe7fba22070c65a0e5eb08ad8fa495225c02646ae81812ae16.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36b5fa2735105fc09d65b61c644b93defe67c67b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
