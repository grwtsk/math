# enclosure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4c4d31b73f2d8775548c5aa888782bb1843f720b38ef0a6056fa0fb78baac7b1",
  "kind": "def",
  "lexical_name": "enclosure",
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
  "slug": "enclosure--cbf5b9af4c1c32c4dfac6c4a",
  "source": {
    "blob": "ee0c19d3b626d8905bbbbc493376edbb8674c88f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 155,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFourTermWitness.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cbf5b9af4c1c32c4dfac6c4ae00fbc6fc2b54ec766be01709d9f1c8df3b9e7fa",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripFourTermWitness.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4c4d31b73f2d8775548c5aa888782bb1843f720b38ef0a6056fa0fb78baac7b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def enclosure : FinitePowerEnclosure 4 center where
  value := value
  error := fun _ => 1 / 64
  error_nonneg := by intro k hk; norm_num
  encloses := all_four_enclosed
  endpoint := 4 * value 4
  endpoint_error := 1 / 16
  endpoint_error_nonneg := by norm_num
  endpoint_encloses := by
    have hid := positive_base_endpoint_power (x := (4 : ℝ)) (by norm_num) center
    change (4 : ℂ) ^ (1 - center) = (4 : ℂ) * (4 : ℂ) ^ (-center) at hid
    rw [hid, ← mul_sub, norm_mul]
    have h := mul_le_mul_of_nonneg_left power_four_enclosed (by norm_num : (0 : ℝ) ≤ 4)
    norm_num at h ⊢
    exact h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripFourTermWitness.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFourTermWitness.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee0c19d3b626d8905bbbbc493376edbb8674c88f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
