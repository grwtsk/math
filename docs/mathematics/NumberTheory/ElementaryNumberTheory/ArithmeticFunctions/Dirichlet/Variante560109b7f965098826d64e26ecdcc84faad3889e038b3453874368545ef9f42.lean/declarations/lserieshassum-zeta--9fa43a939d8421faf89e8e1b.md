# LSeriesHasSum_zeta

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ce401a3f67dd76b9e251cb7f23feb003b0cb7cc5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 287,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e560109b7f965098826d64e26ecdcc84faad3889e038b3453874368545ef9f42.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b2147cfd-0c5f-38a3-13e3-695a7a376ce9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:331fbe0c-0dd5-d8c8-38d1-82cf52ce4a20",
  "kind": "lemma",
  "lexical_name": "LSeriesHasSum_zeta",
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
  "slug": "lserieshassum-zeta--9fa43a939d8421faf89e8e1b",
  "source": {
    "blob": "ce401a3f67dd76b9e251cb7f23feb003b0cb7cc5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 290,
    "line": 287,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Dirichlet/Variante560109b7f965098826d64e26ecdcc84faad3889e038b3453874368545ef9f42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9fa43a939d8421faf89e8e1bd730abe079af01859777f6915bbc1a4c6f6227b0",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Dirichlet/Variante560109b7f965098826d64e26ecdcc84faad3889e038b3453874368545ef9f42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:331fbe0c-0dd5-d8c8-38d1-82cf52ce4a20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–290.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LSeriesHasSum_zeta {s : ℂ} (hs : 1 < s.re) : LSeriesHasSum ↗ζ s (riemannZeta s) :=
  LSeries_zeta_eq_riemannZeta hs ▸ (LSeriesSummable_zeta_iff.mpr hs).LSeriesHasSum

/-- The L-series of the arithmetic function `ζ` and of the Möbius function are inverses. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Dirichlet/Variante560109b7f965098826d64e26ecdcc84faad3889e038b3453874368545ef9f42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Dirichlet/Variante560109b7f965098826d64e26ecdcc84faad3889e038b3453874368545ef9f42.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce401a3f67dd76b9e251cb7f23feb003b0cb7cc5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
