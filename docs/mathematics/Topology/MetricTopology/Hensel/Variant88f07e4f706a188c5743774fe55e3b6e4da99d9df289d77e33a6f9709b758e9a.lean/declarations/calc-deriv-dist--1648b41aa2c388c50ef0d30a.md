# calc_deriv_dist

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "13431c4c2cb9de5896e340e1415f6454c838c6a5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 159,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/88/88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1bd823e1-7ed9-38c1-ae98-85d4b0bf3bd5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d76d5a4d-2c56-2792-c57f-bc0b5d9316ba",
  "kind": "theorem",
  "lexical_name": "calc_deriv_dist",
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
  "slug": "calc-deriv-dist--1648b41aa2c388c50ef0d30a",
  "source": {
    "blob": "13431c4c2cb9de5896e340e1415f6454c838c6a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 159,
    "path": "GRWTSK/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1648b41aa2c388c50ef0d30a338cdf43477d1ef752883aa6bade49ebb6330626",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d76d5a4d-2c56-2792-c57f-bc0b5d9316ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem calc_deriv_dist {z z' z1 : ℤ_[p]} (hz' : z' = z - z1)
    (hz1 : ‖z1‖ = ‖F.eval z‖ / ‖F.derivative.eval a‖) {n} (hz : ih n z) :
    ‖F.derivative.eval z' - F.derivative.eval z‖ < ‖F.derivative.eval a‖ :=
  calc
    ‖F.derivative.eval z' - F.derivative.eval z‖ ≤ ‖z' - z‖ := padic_polynomial_dist _ _ _
    _ = ‖z1‖ := by simp only [sub_eq_add_neg, add_assoc, hz', add_add_neg_cancel'_right, norm_neg]
    _ = ‖F.eval z‖ / ‖F.derivative.eval a‖ := hz1
    _ ≤ ‖F.derivative.eval a‖ ^ 2 * T ^ 2 ^ n / ‖F.derivative.eval a‖ := by
      gcongr
      apply hz.2
    _ = ‖F.derivative.eval a‖ * T ^ 2 ^ n := div_sq_cancel _ _
    _ < ‖F.derivative.eval a‖ := (mul_lt_iff_lt_one_right (deriv_norm_pos hnorm)).2
      (T_pow' hnorm _)


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13431c4c2cb9de5896e340e1415f6454c838c6a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
