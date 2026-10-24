# stirlingSeq_pow_four_div_stirlingSeq_pow_two_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7e4555b8-7636-aaaf-0cce-0287ea6cc5c4",
  "kind": "theorem",
  "lexical_name": "stirlingSeq_pow_four_div_stirlingSeq_pow_two_eq",
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
  "slug": "stirlingseq-pow-four-div-stirlingseq-pow-two-eq--36f7526a202aacbaeb74937e",
  "source": {
    "blob": "5060c493e10d7ab3cea2c678cd488566c9aef3f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 210,
    "path": "GRWTSK/Topology/GeneralTopology/Stirling/Variant85e59fd94b73996e92c94a5b1312bc8cc2b35b2a68681ccfa5d8e4b0e9c405a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36f7526a202aacbaeb74937e9dd7021231987317e6e1167c56c05dc79985da59",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Stirling/Variant85e59fd94b73996e92c94a5b1312bc8cc2b35b2a68681ccfa5d8e4b0e9c405a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e4555b8-7636-aaaf-0cce-0287ea6cc5c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stirlingSeq_pow_four_div_stirlingSeq_pow_two_eq (n : ℕ) (hn : n ≠ 0) :
    stirlingSeq n ^ 4 / stirlingSeq (2 * n) ^ 2 * (n / (2 * n + 1)) = Wallis.W n := by
  have : 4 = 2 * 2 := by rfl
  rw [stirlingSeq, this, pow_mul, stirlingSeq, Wallis.W_eq_factorial_ratio]
  simp_rw [div_pow, mul_pow]
  rw [sq_sqrt, sq_sqrt]
  any_goals positivity
  field_simp [← exp_nsmul]
  ring_nf

/-- Suppose the sequence `stirlingSeq` (defined above) has the limit `a ≠ 0`.
Then the Wallis sequence `W n` has limit `a^2 / 2`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Stirling/Variant85e59fd94b73996e92c94a5b1312bc8cc2b35b2a68681ccfa5d8e4b0e9c405a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Stirling/Variant85e59fd94b73996e92c94a5b1312bc8cc2b35b2a68681ccfa5d8e4b0e9c405a1.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5060c493e10d7ab3cea2c678cd488566c9aef3f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
