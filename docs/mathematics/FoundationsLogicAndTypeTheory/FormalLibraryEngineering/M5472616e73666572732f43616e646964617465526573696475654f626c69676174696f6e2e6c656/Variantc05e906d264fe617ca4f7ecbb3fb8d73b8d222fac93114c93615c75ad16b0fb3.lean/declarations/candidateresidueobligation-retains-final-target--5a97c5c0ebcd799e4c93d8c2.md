# candidateResidueObligation_retains_final_target

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "03374f466a966284a3e2eec0388c68d06001e431",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 20,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c0/c05e906d264fe617ca4f7ecbb3fb8d73b8d222fac93114c93615c75ad16b0fb3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f56b87d0-b309-e72d-5a60-151073d22cd2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9dd7f4eb-2f27-46de-7c29-1515af91388b",
  "kind": "theorem",
  "lexical_name": "candidateResidueObligation_retains_final_target",
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
  "slug": "candidateresidueobligation-retains-final-target--5a97c5c0ebcd799e4c93d8c2",
  "source": {
    "blob": "03374f466a966284a3e2eec0388c68d06001e431",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 26,
    "line": 20,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M5472616e73666572732f43616e646964617465526573696475654f626c69676174696f6e2e6c656/Variantc05e906d264fe617ca4f7ecbb3fb8d73b8d222fac93114c93615c75ad16b0fb3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a97c5c0ebcd799e4c93d8c2cd7775e10637f1b9704cfffa10bd29716a9d5e20",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M5472616e73666572732f43616e646964617465526573696475654f626c69676174696f6e2e6c656/Variantc05e906d264fe617ca4f7ecbb3fb8d73b8d222fac93114c93615c75ad16b0fb3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9dd7f4eb-2f27-46de-7c29-1515af91388b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–26.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem candidateResidueObligation_retains_final_target
    (candidate : Think.Targets.ImportPlan.TargetImportCandidate)
    (r : FWR.Residue)
    (h : CandidateResidueObligation candidate r) :
    candidate.finalTargetRetained = true := by
  exact h.candidateRetainsFinal

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M5472616e73666572732f43616e646964617465526573696475654f626c69676174696f6e2e6c656/Variantc05e906d264fe617ca4f7ecbb3fb8d73b8d222fac93114c93615c75ad16b0fb3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M5472616e73666572732f43616e646964617465526573696475654f626c69676174696f6e2e6c656/Variantc05e906d264fe617ca4f7ecbb3fb8d73b8d222fac93114c93615c75ad16b0fb3.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03374f466a966284a3e2eec0388c68d06001e431` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
