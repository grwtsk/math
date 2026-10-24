# equivReindex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:14488056afd6e7b69d413ec7667d1e7277e429d5fbec0fb196e391ed12e9ab36",
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
  "slug": "equivreindex--c5ddfc7d2508ebd4f6bbf542",
  "source": {
    "blob": "d3862754f4aec49061f287de11ecfdbbe68d4224",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 29,
    "path": "GRWTSK/NumberTheory/EquivReindex/Variantbfb95ed4dbe9c4c9b6112eb06da78ccb71bc02bd82ca7af7817a1093314ef91a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c5ddfc7d2508ebd4f6bbf5426982d07d11602d5970ecb6bc81bd289028b5f205",
  "verification": {
    "reference": "docs/verification/NumberTheory/EquivReindex/Variantbfb95ed4dbe9c4c9b6112eb06da78ccb71bc02bd82ca7af7817a1093314ef91a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:14488056afd6e7b69d413ec7667d1e7277e429d5fbec0fb196e391ed12e9ab36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–35.

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

[Verification target and public status](../../../../../verification/NumberTheory/EquivReindex/Variantbfb95ed4dbe9c4c9b6112eb06da78ccb71bc02bd82ca7af7817a1093314ef91a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/EquivReindex/Variantbfb95ed4dbe9c4c9b6112eb06da78ccb71bc02bd82ca7af7817a1093314ef91a.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3862754f4aec49061f287de11ecfdbbe68d4224` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
