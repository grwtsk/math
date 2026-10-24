# supOfBasis_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "51917a30dcce0839d79e6550bfd70debf303f6a0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 112,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ee/eeaf9e3cd8754af0a803e86c154c8f2e9759ac9308c1084d280017529bd9f456.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5f4114c6-d081-cd9a-32e0-cf588acae066",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4033fff7-4374-1ab7-0d56-83d33cecda59",
  "kind": "theorem",
  "lexical_name": "supOfBasis_nonneg",
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
  "slug": "supofbasis-nonneg--84ef94b0eb21188308e9c962",
  "source": {
    "blob": "51917a30dcce0839d79e6550bfd70debf303f6a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 112,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/House/Varianteeaf9e3cd8754af0a803e86c154c8f2e9759ac9308c1084d280017529bd9f456.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84ef94b0eb21188308e9c9621f83af45a8ed444bab6edc8dd59c924c05f473a1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/House/Varianteeaf9e3cd8754af0a803e86c154c8f2e9759ac9308c1084d280017529bd9f456.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4033fff7-4374-1ab7-0d56-83d33cecda59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem supOfBasis_nonneg : 0 ≤ supOfBasis K := by
  simp only [supOfBasis, le_sup'_iff, mem_univ, and_self,
    exists_const, house_nonneg]

variable {α : Type*} {β : Type*} (a : Matrix α β (𝓞 K))

/-- `a' K a` returns the integer coefficients of the basis vector in the
  expansion of the product of an algebraic integer and a basis vectors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/House/Varianteeaf9e3cd8754af0a803e86c154c8f2e9759ac9308c1084d280017529bd9f456.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/House/Varianteeaf9e3cd8754af0a803e86c154c8f2e9759ac9308c1084d280017529bd9f456.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51917a30dcce0839d79e6550bfd70debf303f6a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
