# riesz_perron_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5a57a121fdd90e4ae58266325ec0d15b05714d22",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 691,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/58/58013eddd0babf07798a7071c889bf0663636126e621ba4bac8f559b6a92eb37.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0b221e4c-6eac-7d6f-f593-e1a093414aa8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bd20b550-0720-97f3-7f9a-e375429148d3",
  "kind": "theorem",
  "lexical_name": "riesz_perron_integrable",
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
  "slug": "riesz-perron-integrable--c601d65d28da0c6848949f58",
  "source": {
    "blob": "5a57a121fdd90e4ae58266325ec0d15b05714d22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 710,
    "line": 691,
    "path": "GRWTSK/Topology/GeneralTopology/58013eddd0babf07798a7071c889bf0663636126e621ba4bac8f559b6a92eb37PrimePowerPerron/Variant58013eddd0babf07798a7071c889bf0663636126e621ba4bac8f559b6a92eb37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c601d65d28da0c6848949f58a14aae6ac65849fa6c350f5ff3798669b15d970e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/58013eddd0babf07798a7071c889bf0663636126e621ba4bac8f559b6a92eb37PrimePowerPerron/Variant58013eddd0babf07798a7071c889bf0663636126e621ba4bac8f559b6a92eb37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd20b550-0720-97f3-7f9a-e375429148d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 691–710.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem riesz_perron_integrable (A c : ℝ) (hc : 1 / 2 < c) :
    Integrable (fun t : ℝ ↦ rieszPerronIntegrand A
      ((c : ℂ) + (t : ℂ) * Complex.I)) := by
  obtain ⟨M, hM, hbound⟩ := Zeta23.WeilEF.norm_logDeriv_zeta_le_of_one_lt_re
    (c := c + 1 / 2) (by linarith)
  have hi : Integrable (fun t : ℝ ↦ rieszLineTransform A c t *
      (-logDeriv riemannZeta (((c + 1 / 2 : ℝ) : ℂ) + (t : ℂ) * Complex.I))) :=
    (riesz_line_transform_integrable A c (by linarith)).mul_bdd (c := M)
      ((Zeta23.WeilEF.continuous_logDeriv_zeta_line (c := c + 1 / 2)
        (by linarith)).neg.aestronglyMeasurable)
      (Filter.Eventually.of_forall fun t ↦ by rw [norm_neg]; exact hbound t)
  apply hi.congr
  filter_upwards [] with t
  rw [show ((c + 1 / 2 : ℝ) : ℂ) + (t : ℂ) * Complex.I =
    ((c : ℂ) + (t : ℂ) * Complex.I) + 1 / 2 by push_cast; ring]
  unfold rieszPerronIntegrand rieszLineTransform logDeriv
  simp only [Pi.div_apply]
  ring

/-- Finite-height rational integrals have the same orientation as the direct source contour. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/58013eddd0babf07798a7071c889bf0663636126e621ba4bac8f559b6a92eb37PrimePowerPerron/Variant58013eddd0babf07798a7071c889bf0663636126e621ba4bac8f559b6a92eb37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/58013eddd0babf07798a7071c889bf0663636126e621ba4bac8f559b6a92eb37PrimePowerPerron/Variant58013eddd0babf07798a7071c889bf0663636126e621ba4bac8f559b6a92eb37.lean#L691).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a57a121fdd90e4ae58266325ec0d15b05714d22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
