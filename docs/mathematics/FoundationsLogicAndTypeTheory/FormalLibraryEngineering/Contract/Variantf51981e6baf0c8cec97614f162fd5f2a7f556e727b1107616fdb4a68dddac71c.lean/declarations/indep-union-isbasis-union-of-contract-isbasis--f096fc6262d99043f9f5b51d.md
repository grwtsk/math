# Indep.union_isBasis_union_of_contract_isBasis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f72e6aa8-4cb8-e462-5af0-ae14fc999a45",
  "kind": "lemma",
  "lexical_name": "Indep.union_isBasis_union_of_contract_isBasis",
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
  "slug": "indep-union-isbasis-union-of-contract-isbasis--f096fc6262d99043f9f5b51d",
  "source": {
    "blob": "95268aafc7cee76f5ca4a9534dcdf5010b14443d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 185,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contract/Variantf51981e6baf0c8cec97614f162fd5f2a7f556e727b1107616fdb4a68dddac71c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f096fc6262d99043f9f5b51d17b4b4281084d71894f1bf35653988b1a77c9e81",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contract/Variantf51981e6baf0c8cec97614f162fd5f2a7f556e727b1107616fdb4a68dddac71c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f72e6aa8-4cb8-e462-5af0-ae14fc999a45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Indep.union_isBasis_union_of_contract_isBasis (hI : M.Indep I) (hB : (M ／ I).IsBasis J X) :
    M.IsBasis (J ∪ I) (X ∪ I) := by
  simp_rw [IsBasis, hI.contract_indep_iff, contract_ground, subset_diff,
    maximal_subset_iff, and_imp] at hB
  refine hB.1.1.1.2.isBasis_of_maximal_subset (union_subset_union_left _ hB.1.1.2)
    fun K hK hKJ hKX ↦ ?_
  rw [union_subset_iff] at hKJ
  rw [hB.1.2 (t := K \ I) disjoint_sdiff_left (by simpa [diff_union_of_subset hKJ.2])
    (diff_subset_iff.2 (by rwa [union_comm])) (subset_diff.2 ⟨hKJ.1, hB.1.1.1.1⟩),
    diff_union_of_subset hKJ.2]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contract/Variantf51981e6baf0c8cec97614f162fd5f2a7f556e727b1107616fdb4a68dddac71c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contract/Variantf51981e6baf0c8cec97614f162fd5f2a7f556e727b1107616fdb4a68dddac71c.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95268aafc7cee76f5ca4a9534dcdf5010b14443d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
