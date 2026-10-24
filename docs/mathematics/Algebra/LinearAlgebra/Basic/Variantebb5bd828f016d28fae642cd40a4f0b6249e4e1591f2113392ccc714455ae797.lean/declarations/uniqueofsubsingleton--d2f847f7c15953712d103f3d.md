# uniqueOfSubsingleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0c57d0d3210c494ed52f425f27e53cf9fe844d0abf35f975291c627bf6dd72ff",
  "kind": "instance",
  "lexical_name": "uniqueOfSubsingleton",
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
  "slug": "uniqueofsubsingleton--d2f847f7c15953712d103f3d",
  "source": {
    "blob": "b9f4f22f3093e1cef8fb648b992cb1157d194a25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 417,
    "line": 403,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantebb5bd828f016d28fae642cd40a4f0b6249e4e1591f2113392ccc714455ae797.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d2f847f7c15953712d103f3db6e346721ce0d064fe66babaa70a06db03ecefe4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantebb5bd828f016d28fae642cd40a4f0b6249e4e1591f2113392ccc714455ae797.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0c57d0d3210c494ed52f425f27e53cf9fe844d0abf35f975291c627bf6dd72ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 403–417.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance uniqueOfSubsingleton [Subsingleton R] [Subsingleton R₂] : Unique (M ≃ₛₗ[σ₁₂] M₂) := by
  haveI := Module.subsingleton R M
  haveI := Module.subsingleton R₂ M₂
  infer_instance

end Subsingleton

section Uncurry

variable [Semiring R]
variable [AddCommMonoid M] [Module R M]
variable (V V₂ R M)

/-- Linear equivalence between a curried and uncurried function.
  Differs from `TensorProduct.curry`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantebb5bd828f016d28fae642cd40a4f0b6249e4e1591f2113392ccc714455ae797.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantebb5bd828f016d28fae642cd40a4f0b6249e4e1591f2113392ccc714455ae797.lean#L403).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9f4f22f3093e1cef8fb648b992cb1157d194a25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
