# pointwiseSetSMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:10940798521e574b76cd0cb1e67b86b8fd7f14e9329f7ec3b22e124495c7e44b",
  "kind": "def",
  "lexical_name": "pointwiseSetSMul",
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
  "slug": "pointwisesetsmul--df6a024f4ba07bedb90ac37d",
  "source": {
    "blob": "1399d28523384d9504b8b07ed2f3a11d7d650c0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 332,
    "line": 326,
    "path": "GRWTSK/Algebra/LinearAlgebra/Pointwise/Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:df6a024f4ba07bedb90ac37d23b891f56ec02c3b2103b0b64a33cf780fa4bb85",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Pointwise/Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:10940798521e574b76cd0cb1e67b86b8fd7f14e9329f7ec3b22e124495c7e44b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 326–332.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def pointwiseSetSMul : SMul (Set S) (Submodule R M) where
  smul s N := sInf { p | ∀ ⦃r : S⦄ ⦃n : M⦄, r ∈ s → n ∈ N → r • n ∈ p }

scoped[Pointwise] attribute [instance] Submodule.pointwiseSetSMul

variable (s : Set S) (N : Submodule R M)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Pointwise/Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Pointwise/Variantdfdd1f08159e078be7257b6bbe6d741ee75b3f7acf784cb9bc07de4c97c75083.lean#L326).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1399d28523384d9504b8b07ed2f3a11d7d650c0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
