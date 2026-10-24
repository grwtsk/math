# condDistrib_snd_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ad984f062007c19d707f2b5d01c4407f38ae2048",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 231,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/70/7002339fc1c46d2d6e71fad922c137703f9724ea8576c3609ea85260443c8ae9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ac894a18-59bb-6e90-db31-6e61347f82f4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d2434cdd-609b-503f-76ec-588719d92248",
  "kind": "lemma",
  "lexical_name": "condDistrib_snd_prod",
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
  "slug": "conddistrib-snd-prod--6b1e1551804ba9cac19c5c10",
  "source": {
    "blob": "ad984f062007c19d707f2b5d01c4407f38ae2048",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 231,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CondDistrib/Variant7002339fc1c46d2d6e71fad922c137703f9724ea8576c3609ea85260443c8ae9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b1e1551804ba9cac19c5c10f1c2bdd119245700d972d3f4811a75f4d0f109a7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CondDistrib/Variant7002339fc1c46d2d6e71fad922c137703f9724ea8576c3609ea85260443c8ae9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2434cdd-609b-503f-76ec-588719d92248`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma condDistrib_snd_prod {γ : Type*} {mγ : MeasurableSpace γ}
    (hX : AEMeasurable X μ) (hY : AEMeasurable Y μ) (ν : Measure γ) [IsProbabilityMeasure ν] :
    condDistrib (fun ω ↦ Y ω.2) (fun ω ↦ X ω.2) (ν.prod μ) =ᵐ[μ.map X] condDistrib Y X μ := by
  have h_map := condDistrib_map (X := X) (Y := Y) (f := Prod.snd (β := α) (α := γ))
      (ν := ν.prod μ) (mα := inferInstance) (mβ := inferInstance)
      (by simpa) (by simpa) (by fun_prop)
  rw [← AEMeasurable.map_map_of_aemeasurable (by simpa) (by fun_prop)] at h_map
  simp only [Measure.map_snd_prod, measure_univ, one_smul] at h_map
  exact h_map.symm

section Integrability

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CondDistrib/Variant7002339fc1c46d2d6e71fad922c137703f9724ea8576c3609ea85260443c8ae9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CondDistrib/Variant7002339fc1c46d2d6e71fad922c137703f9724ea8576c3609ea85260443c8ae9.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad984f062007c19d707f2b5d01c4407f38ae2048` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
