# newton_seq_succ_dist_weak

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "93100e44f9fba70e86180de79bca45d6e90b826b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 279,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0d/0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1c7308fc-1e46-0313-c6aa-cc5177868deb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7862a86c-cc11-b975-2a89-e303b8f234b1",
  "kind": "theorem",
  "lexical_name": "newton_seq_succ_dist_weak",
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
  "slug": "newton-seq-succ-dist-weak--88e517d8c83c65bcb472fea4",
  "source": {
    "blob": "93100e44f9fba70e86180de79bca45d6e90b826b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 298,
    "line": 279,
    "path": "GRWTSK/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88e517d8c83c65bcb472fea4836e2b6347b15cb32a4d215accfc183ca9287bed",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7862a86c-cc11-b975-2a89-e303b8f234b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–298.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem newton_seq_succ_dist_weak (n : ℕ) :
    ‖newton_seq (n + 2) - newton_seq (n + 1)‖ < ‖F.eval a‖ / ‖F.derivative.eval a‖ :=
  have : 2 ≤ 2 ^ (n + 1) := by
    have := pow_le_pow (by norm_num : 1 ≤ 2) (Nat.le_add_left _ _ : 1 ≤ n + 1)
    simpa using this
  calc
    ‖newton_seq (n + 2) - newton_seq (n + 1)‖ ≤ ‖F.derivative.eval a‖ * T ^ 2 ^ (n + 1) :=
      newton_seq_succ_dist hnorm _
    _ ≤ ‖F.derivative.eval a‖ * T ^ 2 :=
      (mul_le_mul_of_nonneg_left (pow_le_pow_of_le_one (norm_nonneg _)
        (le_of_lt (T_lt_one hnorm)) this) (norm_nonneg _))
    _ < ‖F.derivative.eval a‖ * T ^ 1 :=
      (mul_lt_mul_of_pos_left (pow_lt_pow_of_lt_one (T_pos hnorm hnsol)
        (T_lt_one hnorm) (by norm_num)) (deriv_norm_pos hnorm))
    _ = ‖F.eval a‖ / ‖F.derivative.eval a‖ := by
      rw [T_gen, sq, pow_one, norm_div, ← mul_div_assoc, PadicInt.padic_norm_e_of_padicInt,
        PadicInt.coe_mul, padicNormE.mul]
      apply mul_div_mul_left
      apply deriv_norm_ne_zero; assumption

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93100e44f9fba70e86180de79bca45d6e90b826b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
