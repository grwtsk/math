# exists_of_pair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7efde9fc2a86036f904858d12de115310e390a99",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 104,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e0543a4d803991215f9d0c7bd9ba16313d3452224d50e31d7d18f6b45e85a712.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4f62a421-4371-f6df-60b3-d269c7baca98",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f2452211-6255-021c-2c3a-46b371f116da",
  "kind": "lemma",
  "lexical_name": "exists_of_pair",
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
  "slug": "exists-of-pair--e441d72dce3b4c380da5eb63",
  "source": {
    "blob": "7efde9fc2a86036f904858d12de115310e390a99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 104,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Lemmas/Variante0543a4d803991215f9d0c7bd9ba16313d3452224d50e31d7d18f6b45e85a712.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e441d72dce3b4c380da5eb639e2f309ec180551a6042d0ce826dbe69cec5bd3f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Lemmas/Variante0543a4d803991215f9d0c7bd9ba16313d3452224d50e31d7d18f6b45e85a712.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2452211-6255-021c-2c3a-46b371f116da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_of_pair (κ₁ κ₂ : Cardinal.{u})
    [Fact κ₁.IsRegular] [Fact κ₂.IsRegular] :
    ∃ (κ' : Cardinal.{u}) (_ : Fact κ'.IsRegular),
      SharplyLT κ₁ κ' ∧ SharplyLT κ₂ κ' := by
  let f (i : Fin 2) : Cardinal.{u} := match i with
    | 0 => κ₁
    | 1 => κ₂
  have (i : _) : Fact (f i).IsRegular := match i with
    | 0 => by assumption
    | 1 => by assumption
  obtain ⟨κ', _, h₂⟩ := exists_of_small f
  exact ⟨κ', inferInstance, h₂ 0, h₂ 1⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Lemmas/Variante0543a4d803991215f9d0c7bd9ba16313d3452224d50e31d7d18f6b45e85a712.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Lemmas/Variante0543a4d803991215f9d0c7bd9ba16313d3452224d50e31d7d18f6b45e85a712.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7efde9fc2a86036f904858d12de115310e390a99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
