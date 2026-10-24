# newton_seq_dist_to_a

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
      "line": 328,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0d/0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:66cb63ba-2f3a-b989-04ea-6962d211a14e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f5bd53be-1dae-37d4-7b6a-280e7f91eae7",
  "kind": "theorem",
  "lexical_name": "newton_seq_dist_to_a",
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
  "slug": "newton-seq-dist-to-a--54b8e129d70b36ae3fcb5db1",
  "source": {
    "blob": "93100e44f9fba70e86180de79bca45d6e90b826b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 345,
    "line": 328,
    "path": "GRWTSK/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54b8e129d70b36ae3fcb5db144e813c9dd6016baf44b62a00505be3215159b6d",
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

Occurrence: `result:f5bd53be-1dae-37d4-7b6a-280e7f91eae7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 328–345.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem newton_seq_dist_to_a :
    ∀ n : ℕ, 0 < n → ‖newton_seq n - a‖ = ‖F.eval a‖ / ‖F.derivative.eval a‖
  | 1, _h => by simp [sub_eq_add_neg, add_assoc, newton_seq_gen, newton_seq_aux, ih_n]
  | k + 2, _h =>
    have hlt : ‖newton_seq (k + 2) - newton_seq (k + 1)‖ < ‖newton_seq (k + 1) - a‖ := by
      rw [newton_seq_dist_to_a (k + 1) (succ_pos _)]; apply newton_seq_succ_dist_weak;
        assumption
    have hne' : ‖newton_seq (k + 2) - newton_seq (k + 1)‖ ≠ ‖newton_seq (k + 1) - a‖ := ne_of_lt hlt
    calc
      ‖newton_seq (k + 2) - a‖ =
          ‖newton_seq (k + 2) - newton_seq (k + 1) + (newton_seq (k + 1) - a)‖ :=
        by rw [← sub_add_sub_cancel]
      _ = max ‖newton_seq (k + 2) - newton_seq (k + 1)‖ ‖newton_seq (k + 1) - a‖ :=
        (PadicInt.norm_add_eq_max_of_ne hne')
      _ = ‖newton_seq (k + 1) - a‖ := (max_eq_right_of_lt hlt)
      _ = ‖Polynomial.eval a F‖ / ‖Polynomial.eval a (Polynomial.derivative F)‖ :=
        newton_seq_dist_to_a (k + 1) (succ_pos _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Hensel/Variant0dff6f8f647bb459a042ee45c0b0ae0e124c92808dce8b74375b580f40c2ee13.lean#L328).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93100e44f9fba70e86180de79bca45d6e90b826b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
