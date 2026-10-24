# nonunitsOrderEmbedding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c5dc67f21eda7d00d6597986515db46c9534314a2a822cfad0c7c001b02b2975",
  "kind": "def",
  "lexical_name": "nonunitsOrderEmbedding",
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
  "slug": "nonunitsorderembedding--b580c7aca633bff2d87c9b4e",
  "source": {
    "blob": "c72ec65bd8197689280fbeb442b5844bd9537b02",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 589,
    "line": 577,
    "path": "GRWTSK/Algebra/ValuationSubring/Variant1f74d4fdfd5ad4f71fef69ab9c0547259d9fc02d8b972478e3068180490757b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b580c7aca633bff2d87c9b4eb7c44efcd116e9aa409d8638c9d594cec9287057",
  "verification": {
    "reference": "docs/verification/Algebra/ValuationSubring/Variant1f74d4fdfd5ad4f71fef69ab9c0547259d9fc02d8b972478e3068180490757b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c5dc67f21eda7d00d6597986515db46c9534314a2a822cfad0c7c001b02b2975`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 577–589.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def nonunitsOrderEmbedding : ValuationSubring K ↪o (Subsemigroup K)ᵒᵈ where
  toFun A := A.nonunits
  inj' := nonunits_injective
  map_rel_iff' {_A _B} := nonunits_le_nonunits
#align valuation_subring.nonunits_order_embedding ValuationSubring.nonunitsOrderEmbedding

variable {A}

/-- The elements of `A.nonunits` are those of the maximal ideal of `A` after coercion to `K`.

See also `mem_nonunits_iff_exists_mem_maximalIdeal`, which gets rid of the coercion to `K`,
at the expense of a more complicated right hand side.
 -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ValuationSubring/Variant1f74d4fdfd5ad4f71fef69ab9c0547259d9fc02d8b972478e3068180490757b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ValuationSubring/Variant1f74d4fdfd5ad4f71fef69ab9c0547259d9fc02d8b972478e3068180490757b9.lean#L577).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c72ec65bd8197689280fbeb442b5844bd9537b02` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
