# prod_span_singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f5e4f80a-3eb6-fe2d-066f-799ec0ef17a3",
  "kind": "theorem",
  "lexical_name": "prod_span_singleton",
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
  "slug": "prod-span-singleton--4e3307011e45acbb6e50eb9a",
  "source": {
    "blob": "cc3ae876f44a002be9803a5018be97525447f69b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 830,
    "line": 824,
    "path": "GRWTSK/Algebra/LinearAlgebra/Operations/Variantcf3087c3443749ac502f99f4b0c4fbcddc8a91c4319c9c51d3bfc03666832cee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e3307011e45acbb6e50eb9a69099682f0f3f6c55a693d10719844495dae76e9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Operations/Variantcf3087c3443749ac502f99f4b0c4fbcddc8a91c4319c9c51d3bfc03666832cee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5e4f80a-3eb6-fe2d-066f-799ec0ef17a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 824–830.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_span_singleton {ι : Type*} (s : Finset ι) (x : ι → A) :
    (∏ i ∈ s, span R ({x i} : Set A)) = span R {∏ i ∈ s, x i} := by
  rw [prod_span, Set.finsetProd_singleton]

variable (R A)

/-- R-submodules of the R-algebra A are a module over `Set A`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Operations/Variantcf3087c3443749ac502f99f4b0c4fbcddc8a91c4319c9c51d3bfc03666832cee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Operations/Variantcf3087c3443749ac502f99f4b0c4fbcddc8a91c4319c9c51d3bfc03666832cee.lean#L824).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc3ae876f44a002be9803a5018be97525447f69b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
