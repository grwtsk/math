# isEmpty_of_subsingleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e551278becc27a78ea19dbb53f761508d2c4664115b1e466c058562e58a636ee",
  "kind": "instance",
  "lexical_name": "isEmpty_of_subsingleton",
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
  "slug": "isempty-of-subsingleton--3f6279282fdd6c149f0c6d1a",
  "source": {
    "blob": "e62e38df83ac4bb580b56547b7b93cbfd8b8a3b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 38,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Cardinality/Variant0b7450142d7e0513dc3292981fd95d5d4e7c0053a4d9f75d0da130b0f52bc664.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3f6279282fdd6c149f0c6d1a339c764c8b9178a802c71c3e12014ef6b9a4c27b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Cardinality/Variant0b7450142d7e0513dc3292981fd95d5d4e7c0053a4d9f75d0da130b0f52bc664.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e551278becc27a78ea19dbb53f761508d2c4664115b1e466c058562e58a636ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isEmpty_of_subsingleton [Subsingleton V] : IsEmpty (ℙ k V) := by
  have : IsEmpty { v : V // v ≠ 0 } := ⟨fun v ↦ v.2 (Subsingleton.elim v.1 0)⟩
  simpa using (nonZeroEquivProjectivizationProdUnits k V).symm.isEmpty

/-- If `V` is a finite `k`-module and `k` is finite, `ℙ k V` is finite. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Cardinality/Variant0b7450142d7e0513dc3292981fd95d5d4e7c0053a4d9f75d0da130b0f52bc664.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Cardinality/Variant0b7450142d7e0513dc3292981fd95d5d4e7c0053a4d9f75d0da130b0f52bc664.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e62e38df83ac4bb580b56547b7b93cbfd8b8a3b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
