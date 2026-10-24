# eq_of_le_of_finrank_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0017b353da7cd9de50a4de45066de620150a455d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 70,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d7/d784c409b09ba3e25bf057ccd7513bc45a9c3c5fc3e506d3e9b25aea5a6f125c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1795c77f-289f-279a-7920-e4585e217afc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a13d54eb-20db-39a6-e997-93d880aa1a53",
  "kind": "theorem",
  "lexical_name": "eq_of_le_of_finrank_eq",
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
  "slug": "eq-of-le-of-finrank-eq--c3e98eac468ef1ae9db9b672",
  "source": {
    "blob": "0017b353da7cd9de50a4de45066de620150a455d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 70,
    "path": "GRWTSK/Algebra/Algebraic/Variantd784c409b09ba3e25bf057ccd7513bc45a9c3c5fc3e506d3e9b25aea5a6f125c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3e98eac468ef1ae9db9b67232f6b04e16d7a8b12a850c53392ba0894d6fae02",
  "verification": {
    "reference": "docs/verification/Algebra/Algebraic/Variantd784c409b09ba3e25bf057ccd7513bc45a9c3c5fc3e506d3e9b25aea5a6f125c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a13d54eb-20db-39a6-e997-93d880aa1a53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_of_le_of_finrank_eq [FiniteDimensional K E] (h_le : F ≤ E)
    (h_finrank : finrank K F = finrank K E) : F = E :=
  eq_of_le_of_finrank_le h_le h_finrank.ge

-- If `F ≤ E` are two intermediate fields of a finite extension `L / K` such that
-- `[L : F] ≤ [L : E]`, then `F = E`. Marked as private since it's a direct corollary of
-- `eq_of_le_of_finrank_le'` (the `FiniteDimensional K L` implies `FiniteDimensional F L`
-- automatically by typeclass resolution).
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Algebraic/Variantd784c409b09ba3e25bf057ccd7513bc45a9c3c5fc3e506d3e9b25aea5a6f125c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Algebraic/Variantd784c409b09ba3e25bf057ccd7513bc45a9c3c5fc3e506d3e9b25aea5a6f125c.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0017b353da7cd9de50a4de45066de620150a455d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
