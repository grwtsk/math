# smul_hsum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "81441c549dbb3bde76290ddba8384ffba7094cac",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 405,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c2/c245b25730f8e0c71b670cce5560a497b207b3cec077a5ec08c245d3502b306f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9c077431-418b-98f4-50ce-bc66891c5afb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3a06886d-1c17-f41e-a9a6-38a579aaed8e",
  "kind": "theorem",
  "lexical_name": "smul_hsum",
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
  "slug": "smul-hsum--5a82ef11be8a7eae1192e88c",
  "source": {
    "blob": "81441c549dbb3bde76290ddba8384ffba7094cac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 425,
    "line": 405,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Summable/Variantc245b25730f8e0c71b670cce5560a497b207b3cec077a5ec08c245d3502b306f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a82ef11be8a7eae1192e88c24242a2fa32a6bba008985eb5818466df7084879",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Summable/Variantc245b25730f8e0c71b670cce5560a497b207b3cec077a5ec08c245d3502b306f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a06886d-1c17-f41e-a9a6-38a579aaed8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 405–425.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smul_hsum {R} {V} [Semiring R] [AddCommMonoid V] [Module R V]
    (s : SummableFamily Γ R α) (t : SummableFamily Γ' V β) :
    (smul s t).hsum = (of R).symm (s.hsum • (of R) (t.hsum)) := by
  ext g
  rw [coeff_smul s t g, HahnModule.coeff_smul, Equiv.symm_apply_apply]
  refine Eq.symm (sum_of_injOn (fun a ↦ a) (fun _ _ _ _ h ↦ h) (fun _ hgh => ?_)
    (fun gh _ hgh => ?_) fun _ _ => by simp)
  · simp_all only [mem_coe, mem_vaddAntidiagonal, mem_support, ne_eq, Set.mem_iUnion, and_true]
    constructor
    · rw [coeff_hsum_eq_sum] at hgh
      have h' := Finset.exists_ne_zero_of_sum_ne_zero hgh.1
      simpa using h'
    · by_contra hi
      simp_all
  · simp only [Set.image_id', mem_coe, mem_vaddAntidiagonal, mem_support, ne_eq, not_and] at hgh
    by_cases h : s.hsum.coeff gh.1 = 0
    · exact smul_eq_zero_of_left h (t.hsum.coeff gh.2)
    · simp_all

@[deprecated (since := "2024-11-17")] alias hsum_family_smul := smul_hsum

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Summable/Variantc245b25730f8e0c71b670cce5560a497b207b3cec077a5ec08c245d3502b306f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Summable/Variantc245b25730f8e0c71b670cce5560a497b207b3cec077a5ec08c245d3502b306f.lean#L405).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81441c549dbb3bde76290ddba8384ffba7094cac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
