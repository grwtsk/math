# sum_Icc_mul_by_parts_Ico

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "48e119f9511ccdbf1a9e5867c622247780c32f69",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 18,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/00/00b54ebc777ac7bf5851052813e6410aa3944c9311019919bcbbd4b62f59fe65.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f09d95c6-3116-aa7b-44e6-cec5c1909ce5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:71bb6f22-e7de-e7bc-8f84-a4118dd81f53",
  "kind": "theorem",
  "lexical_name": "sum_Icc_mul_by_parts_Ico",
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
  "slug": "sum-icc-mul-by-parts-ico--0c41573dc3bb39da82e248d6",
  "source": {
    "blob": "48e119f9511ccdbf1a9e5867c622247780c32f69",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 18,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteAbelVariationAudit/Variant00b54ebc777ac7bf5851052813e6410aa3944c9311019919bcbbd4b62f59fe65.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c41573dc3bb39da82e248d64c40310cc91047a9c0283294c8824f74d9c8c9de",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteAbelVariationAudit/Variant00b54ebc777ac7bf5851052813e6410aa3944c9311019919bcbbd4b62f59fe65.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71bb6f22-e7de-e7bc-8f84-a4118dd81f53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_Icc_mul_by_parts_Ico (b e : ℕ → ℝ) (G : ℕ) :
    (∑ g ∈ Icc 1 G, b g * e g) =
      (∑ g ∈ Icc 1 G, b g) * e G +
        ∑ j ∈ Ico 1 G, (∑ g ∈ Icc 1 j, b g) * (e j - e (j + 1)) := by
  induction G with
  | zero => simp
  | succ G ih =>
    by_cases hG : G = 0
    · subst G
      simp
    have hG1 : 1 ≤ G := by omega
    rw [sum_Icc_succ_top (by omega) (fun g ↦ b g * e g),
      sum_Icc_succ_top (by omega) b,
      sum_Ico_succ_top hG1 (fun j ↦ (∑ g ∈ Icc 1 j, b g) * (e j - e (j + 1))), ih]
    ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteAbelVariationAudit/Variant00b54ebc777ac7bf5851052813e6410aa3944c9311019919bcbbd4b62f59fe65.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteAbelVariationAudit/Variant00b54ebc777ac7bf5851052813e6410aa3944c9311019919bcbbd4b62f59fe65.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48e119f9511ccdbf1a9e5867c622247780c32f69` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
