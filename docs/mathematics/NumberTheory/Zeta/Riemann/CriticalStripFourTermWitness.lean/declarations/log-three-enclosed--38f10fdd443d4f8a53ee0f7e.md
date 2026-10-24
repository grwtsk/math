# log_three_enclosed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:64076a54-be94-5982-f8a9-a6e1be8f12e4",
  "kind": "lemma",
  "lexical_name": "log_three_enclosed",
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
  "slug": "log-three-enclosed--38f10fdd443d4f8a53ee0f7e",
  "source": {
    "blob": "ee0c19d3b626d8905bbbbc493376edbb8674c88f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 53,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFourTermWitness.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:38f10fdd443d4f8a53ee0f7e821e483b385ee4bf27d6c6e92cdc16599c174acd",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripFourTermWitness.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64076a54-be94-5982-f8a9-a6e1be8f12e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma log_three_enclosed :
    |Real.log (3 : ℝ) - 11104 / 10125| ≤ 1331 / 506250 := by
  have hid : Real.log (3 : ℝ) = Real.log 2 + Real.log (3 / 2 : ℝ) := by
    rw [← Real.log_mul (by norm_num : (2 : ℝ) ≠ 0)
      (by norm_num : (3 / 2 : ℝ) ≠ 0)]
    norm_num
  rw [hid]
  calc
    _ = |(Real.log 2 - 56 / 81) + (Real.log (3 / 2 : ℝ) - 152 / 375)| := by
      congr 1; ring
    _ ≤ |Real.log 2 - 56 / 81| + |Real.log (3 / 2 : ℝ) - 152 / 375| :=
      abs_add_le _ _
    _ ≤ (1 / 405 : ℝ) + 1 / 6250 :=
      add_le_add log_two_low_order_enclosure log_three_halves_enclosed
    _ = 1331 / 506250 := by norm_num

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripFourTermWitness.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFourTermWitness.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee0c19d3b626d8905bbbbc493376edbb8674c88f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
