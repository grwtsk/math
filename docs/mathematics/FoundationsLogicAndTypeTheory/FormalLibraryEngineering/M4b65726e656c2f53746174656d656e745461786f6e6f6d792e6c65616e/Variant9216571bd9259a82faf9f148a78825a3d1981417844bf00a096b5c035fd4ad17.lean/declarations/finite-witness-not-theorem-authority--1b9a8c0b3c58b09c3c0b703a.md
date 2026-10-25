# finite_witness_not_theorem_authority

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e727814ef8ebf55cc3473380d7b1f557d2e2d1ad",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 260,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/92/9216571bd9259a82faf9f148a78825a3d1981417844bf00a096b5c035fd4ad17.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8d8fee51-c0e1-45b5-475b-c4ea5a37ae0c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a2f4ec0d-0252-17bd-300c-175a8139644c",
  "kind": "theorem",
  "lexical_name": "finite_witness_not_theorem_authority",
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
  "slug": "finite-witness-not-theorem-authority--1b9a8c0b3c58b09c3c0b703a",
  "source": {
    "blob": "e727814ef8ebf55cc3473380d7b1f557d2e2d1ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 260,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M4b65726e656c2f53746174656d656e745461786f6e6f6d792e6c65616e/Variant9216571bd9259a82faf9f148a78825a3d1981417844bf00a096b5c035fd4ad17.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b9a8c0b3c58b09c3c0b703a1f8efceb15b3f994d1a61c379fc88c63010af61a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M4b65726e656c2f53746174656d656e745461786f6e6f6d792e6c65616e/Variant9216571bd9259a82faf9f148a78825a3d1981417844bf00a096b5c035fd4ad17.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2f4ec0d-0252-17bd-300c-175a8139644c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 260–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_witness_not_theorem_authority
    (S : FormalStatementSurface)
    (h : S.authority = AuthorityState.finiteWitness) :
    ¬ S.hasTheoremAuthority := by
  intro hAuth
  cases hAuth with
  | inl hChecked =>
      rw [h] at hChecked
      contradiction
  | inr hImport =>
      rw [h] at hImport
      contradiction

/-- The default authority of every kind is the one recorded in its taxonomy entry. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M4b65726e656c2f53746174656d656e745461786f6e6f6d792e6c65616e/Variant9216571bd9259a82faf9f148a78825a3d1981417844bf00a096b5c035fd4ad17.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M4b65726e656c2f53746174656d656e745461786f6e6f6d792e6c65616e/Variant9216571bd9259a82faf9f148a78825a3d1981417844bf00a096b5c035fd4ad17.lean#L260).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e727814ef8ebf55cc3473380d7b1f557d2e2d1ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
