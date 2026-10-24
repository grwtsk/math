# adicCompletionIntegers.isUnit_iff_valued_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "00974fbd43c403d66da8c5d54cc4b9564d357fdf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1006,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/75/75cd277c9c7b5bee8590324ad62c6d5011704a6b9c11254d8fc3bb7812a5fc8e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:650763aa-7004-cb92-b5da-433cebdd8a2b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4981d281-38eb-645d-4dda-eea256e97aae",
  "kind": "theorem",
  "lexical_name": "adicCompletionIntegers.isUnit_iff_valued_eq_one",
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
  "slug": "adiccompletionintegers-isunit-iff-valued-eq-one--48b5782f0a56f6a703fc711f",
  "source": {
    "blob": "00974fbd43c403d66da8c5d54cc4b9564d357fdf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1009,
    "line": 1006,
    "path": "GRWTSK/Topology/GeneralTopology/AdicValuation/Variant75cd277c9c7b5bee8590324ad62c6d5011704a6b9c11254d8fc3bb7812a5fc8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48b5782f0a56f6a703fc711f94cfc2e3398bb975477551f9a3ae90ff8a239321",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AdicValuation/Variant75cd277c9c7b5bee8590324ad62c6d5011704a6b9c11254d8fc3bb7812a5fc8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4981d281-38eb-645d-4dda-eea256e97aae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1006–1009.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem adicCompletionIntegers.isUnit_iff_valued_eq_one {a : v.adicCompletionIntegers K} :
    IsUnit a ↔ Valued.v a.1 = 1 := by
  simp [Valuation.Integers.isUnit_iff_valuation_eq_one (integers K v)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AdicValuation/Variant75cd277c9c7b5bee8590324ad62c6d5011704a6b9c11254d8fc3bb7812a5fc8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AdicValuation/Variant75cd277c9c7b5bee8590324ad62c6d5011704a6b9c11254d8fc3bb7812a5fc8e.lean#L1006).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00974fbd43c403d66da8c5d54cc4b9564d357fdf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
