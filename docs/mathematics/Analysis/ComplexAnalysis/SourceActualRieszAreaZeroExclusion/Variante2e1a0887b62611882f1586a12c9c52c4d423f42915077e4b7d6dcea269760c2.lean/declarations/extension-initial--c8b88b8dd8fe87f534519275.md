# extension_initial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:37e3a0b4-0b24-c31c-564c-1bb261d03054",
  "kind": "theorem",
  "lexical_name": "extension_initial",
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
  "slug": "extension-initial--c8b88b8dd8fe87f534519275",
  "source": {
    "blob": "326904f32e8daccc8a5425f9e0f8c01e01ce7b14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 47,
    "path": "GRWTSK/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variante2e1a0887b62611882f1586a12c9c52c4d423f42915077e4b7d6dcea269760c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c8b88b8dd8fe87f5345192753ef6ab66533f463017638782ba974d319f0b381b",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variante2e1a0887b62611882f1586a12c9c52c4d423f42915077e4b7d6dcea269760c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:37e3a0b4-0b24-c31c-564c-1bb261d03054`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem extension_initial {s : ℂ} (hs : 1 < s.re) :
    actualZetaPoleCleared s * extensionNumerator s = -deriv actualZetaPoleCleared s := by
  have hs0 : s ≠ 0 := by intro h; simp [h] at hs
  have hs1 : s ≠ 1 := by intro h; simp [h] at hs
  have hsz : riemannZeta s ≠ 0 := riemannZeta_ne_zero_of_one_le_re hs.le
  have hz : 1 / 2 < (s - 1 / 2).re := by simp only [sub_re, div_ofNat_re, one_re]; linarith
  have hzn : s - 1 / 2 ≠ 0 := by intro h; simp [h] at hz
  have he := actualFixedCenteredRieszLaplace_eq_regularization hz
  rw [actualRieszCriticalRegularization_eq_real_centers hzn] at he
  unfold extensionNumerator
  rw [he]
  have ha : 1 / 2 + (s - 1 / 2) = s := by ring
  have hb : s - 1 / 2 - 1 / 2 = s - 1 := by ring
  unfold actualRieszCriticalNumerator
  rw [ha, hb, actualZetaPoleCleared_eq hs0 hs1, poleCleared_deriv hs0 hs1]
  unfold logDeriv
  field_simp
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variante2e1a0887b62611882f1586a12c9c52c4d423f42915077e4b7d6dcea269760c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variante2e1a0887b62611882f1586a12c9c52c4d423f42915077e4b7d6dcea269760c2.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `326904f32e8daccc8a5425f9e0f8c01e01ce7b14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
