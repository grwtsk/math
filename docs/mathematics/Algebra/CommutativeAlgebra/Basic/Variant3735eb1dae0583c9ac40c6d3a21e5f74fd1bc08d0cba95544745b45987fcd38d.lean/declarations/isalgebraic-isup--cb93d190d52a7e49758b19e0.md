# isAlgebraic_iSup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1b2c5b1d978a6a13311a00aadf4488637158b03c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 592,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/37/3735eb1dae0583c9ac40c6d3a21e5f74fd1bc08d0cba95544745b45987fcd38d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:28119548-490a-d6a5-6799-6a3873aa9937",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ad8b913a-3813-02ba-fe0c-7b9b538defec",
  "kind": "theorem",
  "lexical_name": "isAlgebraic_iSup",
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
  "slug": "isalgebraic-isup--cb93d190d52a7e49758b19e0",
  "source": {
    "blob": "1b2c5b1d978a6a13311a00aadf4488637158b03c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 602,
    "line": 592,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant3735eb1dae0583c9ac40c6d3a21e5f74fd1bc08d0cba95544745b45987fcd38d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb93d190d52a7e49758b19e0076c9e02d1ca8f1a54de053658d663585cf6db1c",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant3735eb1dae0583c9ac40c6d3a21e5f74fd1bc08d0cba95544745b45987fcd38d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad8b913a-3813-02ba-fe0c-7b9b538defec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 592–602.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isAlgebraic_iSup {ι : Type*} {t : ι → IntermediateField K L}
    (h : ∀ i, Algebra.IsAlgebraic K (t i)) :
    Algebra.IsAlgebraic K (⨆ i, t i : IntermediateField K L) := by
  constructor
  rintro ⟨x, hx⟩
  obtain ⟨s, hx⟩ := exists_finset_of_mem_supr' hx
  rw [isAlgebraic_iff, Subtype.coe_mk, ← Subtype.coe_mk (p := (· ∈ _)) x hx, ← isAlgebraic_iff]
  have : ∀ i : Σ i, t i, FiniteDimensional K K⟮(i.2 : L)⟯ := fun ⟨i, x⟩ ↦
    adjoin.finiteDimensional (isIntegral_iff.1 (Algebra.IsIntegral.isIntegral x))
  apply IsAlgebraic.of_finite

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant3735eb1dae0583c9ac40c6d3a21e5f74fd1bc08d0cba95544745b45987fcd38d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant3735eb1dae0583c9ac40c6d3a21e5f74fd1bc08d0cba95544745b45987fcd38d.lean#L592).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b2c5b1d978a6a13311a00aadf4488637158b03c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
