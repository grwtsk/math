# actualLocalPeanoProfile_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "981226b7204ae9d3e81b1cd49069b6fed79b89b5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 73,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f3/f39ba5921290f1103fbd1d07787f3af854c25e5f66647e0cc286772479187f0d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:284bc287-0eb7-3ea8-8365-35a86f2d12f0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a8215753-de43-4945-e7af-672630476fc2",
  "kind": "theorem",
  "lexical_name": "actualLocalPeanoProfile_nonneg",
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
  "slug": "actuallocalpeanoprofile-nonneg--6ce5e8e0d9bf73102ae8510a",
  "source": {
    "blob": "981226b7204ae9d3e81b1cd49069b6fed79b89b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 73,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/F39ba5921290f1103fbdSourcePeanoSignedShortJet/Variantf39ba5921290f1103fbd1d07787f3af854c25e5f66647e0cc286772479187f0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ce5e8e0d9bf73102ae8510aaf7be039d4b7aae753e04ffbe8aeae4987e9692d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/F39ba5921290f1103fbdSourcePeanoSignedShortJet/Variantf39ba5921290f1103fbd1d07787f3af854c25e5f66647e0cc286772479187f0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8215753-de43-4945-e7af-672630476fc2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualLocalPeanoProfile_nonneg {A t : ℝ} (hA : 0 < A)
    (hthreshold : (136 / 7 : ℝ) ≤ A ^ 2) (ht0 : 0 ≤ t) (ht2 : t ≤ 2 * A) :
    0 ≤ actualLocalPeanoProfile A t := by
  have hp := sourcePeanoPrimitive_nonneg hA hthreshold ht0 ht2
  rw [actualLocalPeanoProfile_eq_conjugated] at hp
  exact (mul_nonneg_iff_of_pos_left (Real.exp_pos (t / 2))).mp hp

/-- The full literal I sector is its unchanged signed local source sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/F39ba5921290f1103fbdSourcePeanoSignedShortJet/Variantf39ba5921290f1103fbd1d07787f3af854c25e5f66647e0cc286772479187f0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/F39ba5921290f1103fbdSourcePeanoSignedShortJet/Variantf39ba5921290f1103fbd1d07787f3af854c25e5f66647e0cc286772479187f0d.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `981226b7204ae9d3e81b1cd49069b6fed79b89b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
