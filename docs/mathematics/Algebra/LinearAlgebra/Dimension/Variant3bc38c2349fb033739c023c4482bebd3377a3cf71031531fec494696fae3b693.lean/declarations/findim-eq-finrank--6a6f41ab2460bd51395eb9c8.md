# finDim_eq_finrank

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:68c2050f-0013-f7bb-5ae4-87662ec1b6f0",
  "kind": "theorem",
  "lexical_name": "finDim_eq_finrank",
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
  "slug": "findim-eq-finrank--6a6f41ab2460bd51395eb9c8",
  "source": {
    "blob": "8e0e77f4b56862ec05ec5170ca08d3dc22f31bbf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 99,
    "path": "GRWTSK/Algebra/LinearAlgebra/Dimension/Variant3bc38c2349fb033739c023c4482bebd3377a3cf71031531fec494696fae3b693.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a6f41ab2460bd51395eb9c8c4f1f7c47c2c4ad1035aa1d5dc15589101287d28",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Dimension/Variant3bc38c2349fb033739c023c4482bebd3377a3cf71031531fec494696fae3b693.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68c2050f-0013-f7bb-5ae4-87662ec1b6f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finDim_eq_finrank (h : s ≠ ⊥) : finDim s = Module.finrank R s.direction := by
  simp [finDim, dim_eq_rank h]
  norm_cast

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Dimension/Variant3bc38c2349fb033739c023c4482bebd3377a3cf71031531fec494696fae3b693.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Dimension/Variant3bc38c2349fb033739c023c4482bebd3377a3cf71031531fec494696fae3b693.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e0e77f4b56862ec05ec5170ca08d3dc22f31bbf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
