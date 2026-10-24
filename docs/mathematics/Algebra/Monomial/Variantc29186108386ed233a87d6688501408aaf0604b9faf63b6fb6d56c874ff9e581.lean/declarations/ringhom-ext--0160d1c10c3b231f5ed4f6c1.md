# ringHom_ext'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "27c520c3df957619a2b41d22d117f46bd39b4bf0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 71,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c2/c29186108386ed233a87d6688501408aaf0604b9faf63b6fb6d56c874ff9e581.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0631cf3e-efb9-fa34-81a0-f4096b518d91",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:beabe7c4-87e0-2cc6-45e7-f2034e536f10",
  "kind": "theorem",
  "lexical_name": "ringHom_ext'",
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
  "slug": "ringhom-ext--0160d1c10c3b231f5ed4f6c1",
  "source": {
    "blob": "27c520c3df957619a2b41d22d117f46bd39b4bf0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 71,
    "path": "GRWTSK/Algebra/Monomial/Variantc29186108386ed233a87d6688501408aaf0604b9faf63b6fb6d56c874ff9e581.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0160d1c10c3b231f5ed4f6c1da51051b2138717a1fabb7ac6f6eb54a6695a1ab",
  "verification": {
    "reference": "docs/verification/Algebra/Monomial/Variantc29186108386ed233a87d6688501408aaf0604b9faf63b6fb6d56c874ff9e581.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:beabe7c4-87e0-2cc6-45e7-f2034e536f10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ringHom_ext' {S} [Semiring S] {f g : R[X] →+* S} (h₁ : f.comp C = g.comp C)
    (h₂ : f X = g X) : f = g :=
  ringHom_ext (RingHom.congr_fun h₁) h₂

end Polynomial
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Monomial/Variantc29186108386ed233a87d6688501408aaf0604b9faf63b6fb6d56c874ff9e581.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Monomial/Variantc29186108386ed233a87d6688501408aaf0604b9faf63b6fb6d56c874ff9e581.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27c520c3df957619a2b41d22d117f46bd39b4bf0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
