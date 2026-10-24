# minor_amplitude

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4ec0cfe4-3b04-cd94-622f-fda3a223db1b",
  "kind": "theorem",
  "lexical_name": "minor_amplitude",
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
  "slug": "minor-amplitude--5ce053405ea1fb1b1f1c077e",
  "source": {
    "blob": "f1d160eb2c2745149e6a640f6cd828b4b5565ddf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 28,
    "path": "GRWTSK/Topology/GeneralTopology/Toeplitz/Variant32e37c0e520d73a4775793606c30e95454319f9cde4bed12ff7896bb29f626d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ce053405ea1fb1b1f1c077e79a5d45546205337075db911b0b1453737e8ce49",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Toeplitz/Variant32e37c0e520d73a4775793606c30e95454319f9cde4bed12ff7896bb29f626d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4ec0cfe4-3b04-cd94-622f-fda3a223db1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem minor_amplitude (a : ℕ → ℝ) (t : ℝ) {k : ℕ} (r c : Fin k → ℕ) :
    minor (fun n => t * a n) r c = t ^ k * minor a r c := by
  have hm : (Matrix.of (fun i j => entry (fun n => t * a n) (r i) (c j))) =
      t • Matrix.of (fun i j => entry a (r i) (c j)) := by
    funext i j
    simp only [Matrix.of_apply, Matrix.smul_apply, entry, smul_eq_mul]
    split_ifs <;> simp
  change (Matrix.of (fun i j => entry (fun n => t * a n) (r i) (c j))).det =
    t ^ k * (Matrix.of (fun i j => entry a (r i) (c j))).det
  rw [hm, Matrix.det_smul]
  simp only [Fintype.card_fin]

/-- Positive normalization preserves and reflects the entire PF-infinity condition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Toeplitz/Variant32e37c0e520d73a4775793606c30e95454319f9cde4bed12ff7896bb29f626d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Toeplitz/Variant32e37c0e520d73a4775793606c30e95454319f9cde4bed12ff7896bb29f626d7.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1d160eb2c2745149e6a640f6cd828b4b5565ddf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
