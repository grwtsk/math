# Subalgebra.rank_bot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "43b68309e3ffe2db82bafedbc4fe5671574243bf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 593,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ca/ca8f769f4fa2297b07e3842ace54e2851caf7c1d36ccb67fdb71dce102b4fb0e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:74fc9a30-da46-d39f-d4d0-5c1407227d42",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9616ac3c-f41f-1ef3-2223-0c7e9235d9a6",
  "kind": "theorem",
  "lexical_name": "Subalgebra.rank_bot",
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
  "slug": "subalgebra-rank-bot--c1b3f7c96ce6d63203a0ca04",
  "source": {
    "blob": "43b68309e3ffe2db82bafedbc4fe5671574243bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 601,
    "line": 593,
    "path": "GRWTSK/Algebra/LinearAlgebra/Finrank/Variantca8f769f4fa2297b07e3842ace54e2851caf7c1d36ccb67fdb71dce102b4fb0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1b3f7c96ce6d63203a0ca044b0e83f207fe5adb334176a780dc205955aa2859",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Finrank/Variantca8f769f4fa2297b07e3842ace54e2851caf7c1d36ccb67fdb71dce102b4fb0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9616ac3c-f41f-1ef3-2223-0c7e9235d9a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 593–601.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Subalgebra.rank_bot : Module.rank F (⊥ : Subalgebra F E) = 1 :=
  ((Subalgebra.toSubmoduleEquiv (⊥ : Subalgebra F E)).symm.trans <|
          LinearEquiv.ofEq _ _ Algebra.toSubmodule_bot).rank_eq.trans <| by
    letI := Module.nontrivial F E
    rw [rank_span_set]
    exacts [mk_singleton _, linearIndependent_singleton one_ne_zero]
#align subalgebra.rank_bot Subalgebra.rank_bot

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Finrank/Variantca8f769f4fa2297b07e3842ace54e2851caf7c1d36ccb67fdb71dce102b4fb0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Finrank/Variantca8f769f4fa2297b07e3842ace54e2851caf7c1d36ccb67fdb71dce102b4fb0e.lean#L593).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43b68309e3ffe2db82bafedbc4fe5671574243bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
