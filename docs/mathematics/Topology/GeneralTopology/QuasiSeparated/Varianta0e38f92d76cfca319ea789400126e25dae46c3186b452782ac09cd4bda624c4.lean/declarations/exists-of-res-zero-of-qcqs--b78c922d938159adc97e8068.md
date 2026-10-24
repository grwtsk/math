# exists_of_res_zero_of_qcqs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c18674bc7337b530e1dfb645a2ccbf9fe508fe34",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 365,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a0/a0e38f92d76cfca319ea789400126e25dae46c3186b452782ac09cd4bda624c4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f84d109d-edf7-300a-1e89-8e5a27735627",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e7eb23ee-f0fa-860c-d4b5-f7e8b33e1f4a",
  "kind": "lemma",
  "lexical_name": "exists_of_res_zero_of_qcqs",
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
  "slug": "exists-of-res-zero-of-qcqs--b78c922d938159adc97e8068",
  "source": {
    "blob": "c18674bc7337b530e1dfb645a2ccbf9fe508fe34",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 373,
    "line": 365,
    "path": "GRWTSK/Topology/GeneralTopology/QuasiSeparated/Varianta0e38f92d76cfca319ea789400126e25dae46c3186b452782ac09cd4bda624c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b78c922d938159adc97e80686574185856616133cfb71a21469669cf4039022b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/QuasiSeparated/Varianta0e38f92d76cfca319ea789400126e25dae46c3186b452782ac09cd4bda624c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7eb23ee-f0fa-860c-d4b5-f7e8b33e1f4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 365–373.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_of_res_zero_of_qcqs {X : Scheme.{u}} {U : TopologicalSpace.Opens X}
    (hU : IsCompact U.carrier) (hU' : IsQuasiSeparated U.carrier)
    {f s : Γ(X, U)} (hf : f |_ X.basicOpen s = 0) :
    ∃ n, s ^ n * f = 0 := by
  suffices h : ∃ n, s ^ n * f = s ^ n * 0 by
    simpa using h
  apply exists_of_res_eq_of_qcqs hU hU'
  simpa

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/QuasiSeparated/Varianta0e38f92d76cfca319ea789400126e25dae46c3186b452782ac09cd4bda624c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/QuasiSeparated/Varianta0e38f92d76cfca319ea789400126e25dae46c3186b452782ac09cd4bda624c4.lean#L365).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c18674bc7337b530e1dfb645a2ccbf9fe508fe34` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
