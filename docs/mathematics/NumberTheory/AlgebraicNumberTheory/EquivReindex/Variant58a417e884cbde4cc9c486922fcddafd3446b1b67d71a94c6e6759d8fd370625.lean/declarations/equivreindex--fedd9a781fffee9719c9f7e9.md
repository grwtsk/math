# equivReindex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:258b75a011b1911651b9ecef7ad8dc041b0d7951da92d08844119e7a738bf718",
  "kind": "abbrev",
  "lexical_name": "equivReindex",
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
  "slug": "equivreindex--fedd9a781fffee9719c9f7e9",
  "source": {
    "blob": "c7f3909d991561947c78a49eb45e7f06f15b009c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 41,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/EquivReindex/Variant58a417e884cbde4cc9c486922fcddafd3446b1b67d71a94c6e6759d8fd370625.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fedd9a781fffee9719c9f7e90d9de1ec43d49fc2a6cba44ca11122681d1cf6c8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/EquivReindex/Variant58a417e884cbde4cc9c486922fcddafd3446b1b67d71a94c6e6759d8fd370625.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:258b75a011b1911651b9ecef7ad8dc041b0d7951da92d08844119e7a738bf718`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev equivReindex : (K →+* ℂ) ≃ ChooseBasisIndex ℤ (𝓞 K) :=
  Fintype.equivOfCardEq <| by
    rw [Embeddings.card, ← finrank_eq_card_chooseBasisIndex, RingOfIntegers.rank]

/-- The basis matrix for the embeddings of `K` into `ℂ`. This matrix is formed by
  taking the lattice basis vectors of `K` and reindexing them according to the
  equivalence `equivReindex`, then transposing the resulting matrix. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/EquivReindex/Variant58a417e884cbde4cc9c486922fcddafd3446b1b67d71a94c6e6759d8fd370625.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/EquivReindex/Variant58a417e884cbde4cc9c486922fcddafd3446b1b67d71a94c6e6759d8fd370625.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7f3909d991561947c78a49eb45e7f06f15b009c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
