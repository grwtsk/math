# NumberField.finrank_eq_one_of_unramified

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:caa49b4e-4c0b-5d3b-6b68-7e1c751bd36b",
  "kind": "lemma",
  "lexical_name": "NumberField.finrank_eq_one_of_unramified",
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
  "slug": "numberfield-finrank-eq-one-of-unramified--b203023c85c5aad96283c705",
  "source": {
    "blob": "2cc50229db6237af40bff5ec0721b65148400bde",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 59,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/ExistsRamified/Variant45d82e678c85b7bc3acf93ca0c70da1e67d12055d8dd274830101dd081389c88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b203023c85c5aad96283c7052069895bc8c30956ac3e34465a18026942fb7cdc",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/ExistsRamified/Variant45d82e678c85b7bc3acf93ca0c70da1e67d12055d8dd274830101dd081389c88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:caa49b4e-4c0b-5d3b-6b68-7e1c751bd36b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma NumberField.finrank_eq_one_of_unramified [Algebra.Unramified ℤ 𝒪] :
    Module.finrank ℚ K = 1 := by
  by_contra H
  obtain ⟨P, _, H⟩ := NumberField.exists_not_isUnramifiedAt_int (𝒪 := 𝒪) H
  exact H inferInstance

/-- If `𝒪` is a domain that is a finite and unramified extension of `ℤ`, then `𝒪 = ℤ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/ExistsRamified/Variant45d82e678c85b7bc3acf93ca0c70da1e67d12055d8dd274830101dd081389c88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/ExistsRamified/Variant45d82e678c85b7bc3acf93ca0c70da1e67d12055d8dd274830101dd081389c88.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2cc50229db6237af40bff5ec0721b65148400bde` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
