# rodgers_tao_flow_has_quasi_isomorphism

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "93d31254026a6891f00e86c879640655482c1a89",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 24,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/23/238063d9b7042569c06ef693b1e2bb5c81e863433639eec42d48e8878a024db9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a8094a3c-422a-db83-2893-e252d378e398",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3f76d415-0dc6-e5d5-5ae6-450d07a3d25a",
  "kind": "theorem",
  "lexical_name": "rodgers_tao_flow_has_quasi_isomorphism",
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
  "slug": "rodgers-tao-flow-has-quasi-isomorphism--5e3de8c2ee32332ddb178e39",
  "source": {
    "blob": "93d31254026a6891f00e86c879640655482c1a89",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 30,
    "line": 24,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RodgersTaoQuasiIsomorphism/Variant238063d9b7042569c06ef693b1e2bb5c81e863433639eec42d48e8878a024db9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e3de8c2ee32332ddb178e39722e5b48f24b1f42dfb13cfa8a84fd675d206ec5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RodgersTaoQuasiIsomorphism/Variant238063d9b7042569c06ef693b1e2bb5c81e863433639eec42d48e8878a024db9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f76d415-0dc6-e5d5-5ae6-450d07a3d25a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–30.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rodgers_tao_flow_has_quasi_isomorphism
    (T : Folder.DerivedSheaf.RodgersTaoQuasiIsomorphism) :
    ∃ q : Folder.DerivedSheaf.QuasiIsomorphism
        T.sourceComplex T.targetComplex,
      q.inducesCohomologyIso :=
  Folder.DerivedSheaf.rodgers_tao_flow_has_quasi_isomorphism T

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RodgersTaoQuasiIsomorphism/Variant238063d9b7042569c06ef693b1e2bb5c81e863433639eec42d48e8878a024db9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RodgersTaoQuasiIsomorphism/Variant238063d9b7042569c06ef693b1e2bb5c81e863433639eec42d48e8878a024db9.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93d31254026a6891f00e86c879640655482c1a89` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
