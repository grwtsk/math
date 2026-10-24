# shiftFun_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5709e32b-91fa-d0e0-765b-1d0290dcf797",
  "kind": "theorem",
  "lexical_name": "shiftFun_zero",
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
  "slug": "shiftfun-zero--b3da46e70db1e631b7d55570",
  "source": {
    "blob": "91f8bd351d5db58c2d7329efe8a105319c911808",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 169,
    "path": "GRWTSK/Topology/AlgebraicTopology/ExtraDegeneracy/Variant5af01b67dbcbd7571613294604c1128fcf239c1c5ad73a1c58e8babc15329b6a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3da46e70db1e631b7d555708081e7890e2bc80328e0872d9ec3ab54979dd2d7",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/ExtraDegeneracy/Variant5af01b67dbcbd7571613294604c1128fcf239c1c5ad73a1c58e8babc15329b6a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5709e32b-91fa-d0e0-765b-1d0290dcf797`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shiftFun_zero {n : ℕ} {X : Type*} [Zero X] (f : Fin n → X) : shiftFun f 0 = 0 :=
  rfl

@[deprecated (since := "2025-04-19")]
alias shiftFun_0 := shiftFun_zero

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/ExtraDegeneracy/Variant5af01b67dbcbd7571613294604c1128fcf239c1c5ad73a1c58e8babc15329b6a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/ExtraDegeneracy/Variant5af01b67dbcbd7571613294604c1128fcf239c1c5ad73a1c58e8babc15329b6a.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91f8bd351d5db58c2d7329efe8a105319c911808` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
