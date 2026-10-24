# typeTwoOffDiagonal_eq_centered_sub_mean

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d7e126f05dd397a3cc68ff7762596e9c4e7127a6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 42,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8f/8fe853bdd01485e0eaa954e5cedac776e7702148f4fc481a1caa59b4dbd7b10a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a4e187a4-aa3e-7dc6-3e46-45a70426d786",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:45d29ef4-1220-bdb1-c13a-8be7ca12e4a7",
  "kind": "theorem",
  "lexical_name": "typeTwoOffDiagonal_eq_centered_sub_mean",
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
  "slug": "typetwooffdiagonal-eq-centered-sub-mean--6a65cc0daffae01ece36605c",
  "source": {
    "blob": "d7e126f05dd397a3cc68ff7762596e9c4e7127a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 42,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/8fe853bdd01485e0eaa9EstimateBetaSourceRecombination/Variant8fe853bdd01485e0eaa954e5cedac776e7702148f4fc481a1caa59b4dbd7b10a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a65cc0daffae01ece36605c0115f3c0773aeaa653b394a29d0c83348634ac36",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/8fe853bdd01485e0eaa9EstimateBetaSourceRecombination/Variant8fe853bdd01485e0eaa954e5cedac776e7702148f4fc481a1caa59b4dbd7b10a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45d29ef4-1220-bdb1-c13a-8be7ca12e4a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem typeTwoOffDiagonal_eq_centered_sub_mean (A : ℝ) (hA : 1 ≤ A) :
    typeTwoOffDiagonal A = centeredTypeTwoOffDiagonal A -
      alpha (vaughanCutoff A) * plainTypeTwoOffDiagonal A := by
  rw [typeTwoOffDiagonal_eq_pair_sum A hA]
  unfold centeredTypeTwoOffDiagonal plainTypeTwoOffDiagonal
  rw [Finset.mul_sum, ← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro q hq
  unfold typeTwoPairTerm centeredBeta
  ring

/-- Complete signed residual identity; neither component of the ledger is estimated. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/8fe853bdd01485e0eaa9EstimateBetaSourceRecombination/Variant8fe853bdd01485e0eaa954e5cedac776e7702148f4fc481a1caa59b4dbd7b10a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/8fe853bdd01485e0eaa9EstimateBetaSourceRecombination/Variant8fe853bdd01485e0eaa954e5cedac776e7702148f4fc481a1caa59b4dbd7b10a.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7e126f05dd397a3cc68ff7762596e9c4e7127a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
