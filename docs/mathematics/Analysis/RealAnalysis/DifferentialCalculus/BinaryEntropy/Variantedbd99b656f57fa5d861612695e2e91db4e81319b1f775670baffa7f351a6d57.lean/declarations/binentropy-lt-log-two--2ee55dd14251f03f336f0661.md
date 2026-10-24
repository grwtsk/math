# binEntropy_lt_log_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0caac3f1d0d7d540bed1425284e14dde2b19dedc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 133,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ed/edbd99b656f57fa5d861612695e2e91db4e81319b1f775670baffa7f351a6d57.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3e521f77-194d-160e-340a-640b542a1d8c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d51c32eb-c266-2ac8-b2dd-90a461bf894b",
  "kind": "lemma",
  "lexical_name": "binEntropy_lt_log_two",
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
  "slug": "binentropy-lt-log-two--2ee55dd14251f03f336f0661",
  "source": {
    "blob": "0caac3f1d0d7d540bed1425284e14dde2b19dedc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 133,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantedbd99b656f57fa5d861612695e2e91db4e81319b1f775670baffa7f351a6d57.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ee55dd14251f03f336f06618926f957e08e59fea53042eacb5f8a2cba47f485",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantedbd99b656f57fa5d861612695e2e91db4e81319b1f775670baffa7f351a6d57.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d51c32eb-c266-2ac8-b2dd-90a461bf894b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma binEntropy_lt_log_two : binEntropy p < log 2 ↔ p ≠ 2⁻¹ := by
  refine ⟨?_, fun h ↦ ?_⟩
  · rintro h rfl
    simp at h
  wlog hp : p < 2⁻¹
  · have hp : 1 - p < 2⁻¹ := by
      rw [sub_lt_comm]; norm_num at *; linarith +splitNe
    rw [← binEntropy_one_sub]
    exact this hp.ne hp
  obtain hp₀ | hp₀ := le_or_lt p 0
  · exact (binEntropy_nonpos_of_nonpos hp₀).trans_lt <| log_pos <| by norm_num
  have hp₁ : 0 < 1 - p := sub_pos.2 <| hp.trans <| by norm_num
  calc
  _ < log (p * p⁻¹ + (1 - p) * (1 - p)⁻¹) :=
    strictConcaveOn_log_Ioi.2 (inv_pos.2 hp₀) (inv_pos.2 hp₁)
      (by simpa [eq_sub_iff_add_eq, ← two_mul, mul_comm, mul_eq_one_iff_eq_inv₀]) hp₀ hp₁ (by simp)
  _ = log 2 := by rw [mul_inv_cancel₀, mul_inv_cancel₀, one_add_one_eq_two] <;> positivity

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantedbd99b656f57fa5d861612695e2e91db4e81319b1f775670baffa7f351a6d57.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantedbd99b656f57fa5d861612695e2e91db4e81319b1f775670baffa7f351a6d57.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0caac3f1d0d7d540bed1425284e14dde2b19dedc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
