# sum_col_of_mem_doublyStochastic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0b38883e-6296-cdaf-f82b-ac47a5847e8c",
  "kind": "lemma",
  "lexical_name": "sum_col_of_mem_doublyStochastic",
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
  "slug": "sum-col-of-mem-doublystochastic--ecbf30b8b16f7a4a1c7208a7",
  "source": {
    "blob": "b1c7453b6a11bb6e14366d526702480a75f3f69f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 81,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/DoublyStochastic/Variantb5a7e2ea6f1d9913671ac662e85c78ab656a8cc4d2736251f96ed02e3c04cb55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ecbf30b8b16f7a4a1c7208a7412ea97922e79e9d7fd7034f465d7e7353886f87",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/DoublyStochastic/Variantb5a7e2ea6f1d9913671ac662e85c78ab656a8cc4d2736251f96ed02e3c04cb55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b38883e-6296-cdaf-f82b-ac47a5847e8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sum_col_of_mem_doublyStochastic (hM : M ∈ doublyStochastic R n) (j : n) : ∑ i, M i j = 1 :=
  (mem_doublyStochastic_iff_sum.1 hM).2.2 _

/-- A doubly stochastic matrix multiplied with the all-ones column vector is 1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/DoublyStochastic/Variantb5a7e2ea6f1d9913671ac662e85c78ab656a8cc4d2736251f96ed02e3c04cb55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/DoublyStochastic/Variantb5a7e2ea6f1d9913671ac662e85c78ab656a8cc4d2736251f96ed02e3c04cb55.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1c7453b6a11bb6e14366d526702480a75f3f69f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
