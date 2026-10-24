# prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2b6673b3db67047061400918fe0de7d325f825e01ac1051b5658029cf7f869e9",
  "kind": "def",
  "lexical_name": "prod",
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
  "slug": "prod--1330c5ab8cad03fc36d5ecbc",
  "source": {
    "blob": "d5a7b0730e93bc941e79cfa8beeea0777006a036",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 927,
    "line": 922,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantc9b0e1eb51ad0d0d4e708dad47147aaecc3fb8ad574bde4c7742acea025eef88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1330c5ab8cad03fc36d5ecbc96cf5d632fc8f658b2f1958498aeda7448116d06",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantc9b0e1eb51ad0d0d4e708dad47147aaecc3fb8ad574bde4c7742acea025eef88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2b6673b3db67047061400918fe0de7d325f825e01ac1051b5658029cf7f869e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 922–927.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def prod [Module R₁ M₂] [Module R₁ M₃] (f₁ : M₁ →L[R₁] M₂) (f₂ : M₁ →L[R₁] M₃) :
    M₁ →L[R₁] M₂ × M₃ :=
  ⟨(f₁ : M₁ →ₗ[R₁] M₂).prod f₂, f₁.2.prod_mk f₂.2⟩
#align continuous_linear_map.prod ContinuousLinearMap.prod

@[simp, norm_cast]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantc9b0e1eb51ad0d0d4e708dad47147aaecc3fb8ad574bde4c7742acea025eef88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantc9b0e1eb51ad0d0d4e708dad47147aaecc3fb8ad574bde4c7742acea025eef88.lean#L922).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5a7b0730e93bc941e79cfa8beeea0777006a036` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
