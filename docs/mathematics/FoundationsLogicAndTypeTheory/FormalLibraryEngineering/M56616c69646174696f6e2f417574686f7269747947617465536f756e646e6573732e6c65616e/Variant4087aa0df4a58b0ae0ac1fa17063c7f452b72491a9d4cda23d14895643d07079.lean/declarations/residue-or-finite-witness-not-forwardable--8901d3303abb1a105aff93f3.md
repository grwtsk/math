# residue_or_finite_witness_not_forwardable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0b2b0665588a6cdbb7ae192976ff03b004c35152",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 64,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/4087aa0df4a58b0ae0ac1fa17063c7f452b72491a9d4cda23d14895643d07079.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c9ed620f-e5f3-f688-de9e-fbb6b3f90456",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:89f6e428-232e-a9ea-7255-1e2c7cdc44a7",
  "kind": "theorem",
  "lexical_name": "residue_or_finite_witness_not_forwardable",
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
  "slug": "residue-or-finite-witness-not-forwardable--8901d3303abb1a105aff93f3",
  "source": {
    "blob": "0b2b0665588a6cdbb7ae192976ff03b004c35152",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 64,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M56616c69646174696f6e2f417574686f7269747947617465536f756e646e6573732e6c65616e/Variant4087aa0df4a58b0ae0ac1fa17063c7f452b72491a9d4cda23d14895643d07079.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8901d3303abb1a105aff93f3e4f1ab9c7fcb362e0e60f1446896dae95a328547",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M56616c69646174696f6e2f417574686f7269747947617465536f756e646e6573732e6c65616e/Variant4087aa0df4a58b0ae0ac1fa17063c7f452b72491a9d4cda23d14895643d07079.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:89f6e428-232e-a9ea-7255-1e2c7cdc44a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residue_or_finite_witness_not_forwardable
    (S : FormalStatementSurface)
    (hResidueOrFinite : S.isResidueBearing ∨ S.isFiniteWitnessOnly) :
    ¬ ForwardTheoremFiber S := by
  intro hForward
  have hAuth := hForward.right
  cases hResidueOrFinite with
  | inl hResidue =>
      cases hResidue with
      | inl hOpen =>
          exact open_residue_not_theorem_authority S hOpen hAuth
      | inr hRest =>
          cases hRest with
          | inl hCandidate =>
              cases hAuth with
              | inl hChecked =>
                  rw [hCandidate] at hChecked
                  contradiction
              | inr hImport =>
                  rw [hCandidate] at hImport
                  contradiction
          | inr hRefused =>
              cases hAuth with
              | inl hChecked =>
                  rw [hRefused] at hChecked
                  contradiction
              | inr hImport =>
                  rw [hRefused] at hImport
                  contradiction
  | inr hFinite =>
      exact finite_witness_not_theorem_authority S hFinite hAuth

/--
Conservativity of finite authority-preserving pipeline steps.

A step that preserves the authority state cannot create theorem authority from a
non-authoritative input. Site routing, finite witnesses, receipts, and other
bookkeeping steps are expected to satisfy this kind of preservation contract.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M56616c69646174696f6e2f417574686f7269747947617465536f756e646e6573732e6c65616e/Variant4087aa0df4a58b0ae0ac1fa17063c7f452b72491a9d4cda23d14895643d07079.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M56616c69646174696f6e2f417574686f7269747947617465536f756e646e6573732e6c65616e/Variant4087aa0df4a58b0ae0ac1fa17063c7f452b72491a9d4cda23d14895643d07079.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b2b0665588a6cdbb7ae192976ff03b004c35152` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
