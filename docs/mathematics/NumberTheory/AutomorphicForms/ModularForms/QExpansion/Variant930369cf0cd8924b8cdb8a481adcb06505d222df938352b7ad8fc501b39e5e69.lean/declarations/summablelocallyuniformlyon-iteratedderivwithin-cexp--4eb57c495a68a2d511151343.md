# summableLocallyUniformlyOn_iteratedDerivWithin_cexp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "80040667ea0c83c8d9107340fbcd872753405572",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 111,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/93/930369cf0cd8924b8cdb8a481adcb06505d222df938352b7ad8fc501b39e5e69.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:06b6030d-b195-805c-e4b4-e609414e5758",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a8843bd6-644b-8611-06ca-b110324b17e2",
  "kind": "theorem",
  "lexical_name": "summableLocallyUniformlyOn_iteratedDerivWithin_cexp",
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
  "slug": "summablelocallyuniformlyon-iteratedderivwithin-cexp--4eb57c495a68a2d511151343",
  "source": {
    "blob": "80040667ea0c83c8d9107340fbcd872753405572",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 111,
    "path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variant930369cf0cd8924b8cdb8a481adcb06505d222df938352b7ad8fc501b39e5e69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4eb57c495a68a2d5111513436043a5fbb983f8befeb28be499ab0ec167dfb53b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variant930369cf0cd8924b8cdb8a481adcb06505d222df938352b7ad8fc501b39e5e69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8843bd6-644b-8611-06ca-b110324b17e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem summableLocallyUniformlyOn_iteratedDerivWithin_cexp (k : ℕ) :
    SummableLocallyUniformlyOn
      (fun n ↦ iteratedDerivWithin k (fun z ↦ cexp (2 * π * I * z) ^ n) ℍₒ) ℍₒ := by
  have h0 : (fun n : ℕ ↦ (1 : ℂ)) =O[atTop] fun n ↦ ((n ^ 1) : ℝ) := by
    simp only [Asymptotics.isBigO_iff, norm_one, norm_pow, Real.norm_natCast, eventually_atTop]
    exact ⟨1, 1, fun b hb ↦ by norm_cast; simp [hb]⟩
  simpa using summableLocallyUniformlyOn_iteratedDerivWithin_smul_cexp k 1 (p := 1)
    (by norm_num) h0

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variant930369cf0cd8924b8cdb8a481adcb06505d222df938352b7ad8fc501b39e5e69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variant930369cf0cd8924b8cdb8a481adcb06505d222df938352b7ad8fc501b39e5e69.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80040667ea0c83c8d9107340fbcd872753405572` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
