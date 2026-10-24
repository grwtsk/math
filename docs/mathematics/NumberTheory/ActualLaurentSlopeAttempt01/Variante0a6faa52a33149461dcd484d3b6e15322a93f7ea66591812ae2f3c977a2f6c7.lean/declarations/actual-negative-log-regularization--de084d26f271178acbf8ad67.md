# actual_negative_log_regularization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:63dc8cd5-c8dc-9a3d-d2fc-25ab8a7d9de6",
  "kind": "theorem",
  "lexical_name": "actual_negative_log_regularization",
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
  "slug": "actual-negative-log-regularization--de084d26f271178acbf8ad67",
  "source": {
    "blob": "617dfbf6230e7462428409bd6d55b37b83a3ce7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 63,
    "path": "GRWTSK/NumberTheory/ActualLaurentSlopeAttempt01/Variante0a6faa52a33149461dcd484d3b6e15322a93f7ea66591812ae2f3c977a2f6c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de084d26f271178acbf8ad670a72f034de936330a300fa36d52517bce1a2d552",
  "verification": {
    "reference": "docs/verification/NumberTheory/ActualLaurentSlopeAttempt01/Variante0a6faa52a33149461dcd484d3b6e15322a93f7ea66591812ae2f3c977a2f6c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63dc8cd5-c8dc-9a3d-d2fc-25ab8a7d9de6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_negative_log_regularization :
    ∀ᶠ z : ℂ in 𝓝[≠] 1,
      - deriv riemannZeta z / riemannZeta z - (z - 1)⁻¹ =
        regularNegativeLogDerivative z := by
  filter_upwards [log_deriv_riemannZeta_eq_neg_inv_sub_add] with z hz
  unfold regularNegativeLogDerivative
  rw [neg_div, hz]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/ActualLaurentSlopeAttempt01/Variante0a6faa52a33149461dcd484d3b6e15322a93f7ea66591812ae2f3c977a2f6c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ActualLaurentSlopeAttempt01/Variante0a6faa52a33149461dcd484d3b6e15322a93f7ea66591812ae2f3c977a2f6c7.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `617dfbf6230e7462428409bd6d55b37b83a3ce7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
