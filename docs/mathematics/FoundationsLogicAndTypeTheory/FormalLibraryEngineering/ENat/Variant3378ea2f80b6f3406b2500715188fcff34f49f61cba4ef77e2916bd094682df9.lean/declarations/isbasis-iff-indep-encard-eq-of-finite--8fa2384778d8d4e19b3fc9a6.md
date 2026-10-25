# isBasis_iff_indep_encard_eq_of_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "54244c35ba7f72eea1eff22150549225b4016880",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 498,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/33/3378ea2f80b6f3406b2500715188fcff34f49f61cba4ef77e2916bd094682df9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:50cb9db8-f50a-140d-1354-6cb66faf3866",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f85faeda-39ef-c831-6add-03e81a834551",
  "kind": "lemma",
  "lexical_name": "isBasis_iff_indep_encard_eq_of_finite",
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
  "slug": "isbasis-iff-indep-encard-eq-of-finite--8fa2384778d8d4e19b3fc9a6",
  "source": {
    "blob": "54244c35ba7f72eea1eff22150549225b4016880",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 503,
    "line": 498,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ENat/Variant3378ea2f80b6f3406b2500715188fcff34f49f61cba4ef77e2916bd094682df9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8fa2384778d8d4e19b3fc9a6d8a361737d4945b16a52ea51ef7e28ea231af9cc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ENat/Variant3378ea2f80b6f3406b2500715188fcff34f49f61cba4ef77e2916bd094682df9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f85faeda-39ef-c831-6add-03e81a834551`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 498–503.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isBasis_iff_indep_encard_eq_of_finite (hIfin : I.Finite) (hX : X ⊆ M.E := by aesop_mat) :
    M.IsBasis I X ↔ I ⊆ X ∧ M.Indep I ∧ I.encard = M.eRk X := by
  rw [← isBasis'_iff_isBasis, isBasis'_iff_indep_encard_eq_of_finite hIfin]

/-- If `I` is a finite independent subset of `X` for which `M.eRk X ≤ M.eRk I`,
then `I` is a `Basis'` for `X`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ENat/Variant3378ea2f80b6f3406b2500715188fcff34f49f61cba4ef77e2916bd094682df9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ENat/Variant3378ea2f80b6f3406b2500715188fcff34f49f61cba4ef77e2916bd094682df9.lean#L498).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54244c35ba7f72eea1eff22150549225b4016880` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
