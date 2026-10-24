# IsNoetherian.equivPUnitOfProdInjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:de102b4eb54acf2e2e68be800e85ed94976af89bfb0be8dfe03eda83970e92fd",
  "kind": "def",
  "lexical_name": "IsNoetherian.equivPUnitOfProdInjective",
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
  "slug": "isnoetherian-equivpunitofprodinjective--5655486c3e952dbf8ac1117b",
  "source": {
    "blob": "6f230c181939c383ff3e5fb162222d28800bf8f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 74,
    "path": "GRWTSK/Algebra/LinearAlgebra/Orzech/Variantbc72adcd97cdd60d1e80d8371f0cfed623a9b431bc06c0f07755f9c35aa0ee29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5655486c3e952dbf8ac1117b112c9dd926c83a2f91a4aa794b8f6054e8b0de18",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Orzech/Variantbc72adcd97cdd60d1e80d8371f0cfed623a9b431bc06c0f07755f9c35aa0ee29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:de102b4eb54acf2e2e68be800e85ed94976af89bfb0be8dfe03eda83970e92fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsNoetherian.equivPUnitOfProdInjective (f : M × N →ₗ[R] M)
    (i : Injective f) : N ≃ₗ[R] PUnit.{w + 1} :=
  haveI := IsNoetherian.subsingleton_of_prod_injective f i
  .ofSubsingleton _ _

end

/-- Any Noetherian ring satisfies Orzech property.
See also `IsNoetherian.injective_of_surjective_of_submodule` and
`IsNoetherian.injective_of_surjective_of_injective`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Orzech/Variantbc72adcd97cdd60d1e80d8371f0cfed623a9b431bc06c0f07755f9c35aa0ee29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Orzech/Variantbc72adcd97cdd60d1e80d8371f0cfed623a9b431bc06c0f07755f9c35aa0ee29.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f230c181939c383ff3e5fb162222d28800bf8f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
