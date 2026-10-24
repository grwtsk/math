# coercive_error_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e6bce3b8-0780-9a6a-048b-a0e73c7b78f7",
  "kind": "theorem",
  "lexical_name": "coercive_error_bound",
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
  "slug": "coercive-error-bound--59637322deee1c032204ad6b",
  "source": {
    "blob": "cfeb826aad9003591d65ca4f9ed6db3def17a5d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 17,
    "path": "GRWTSK/Analysis/Inequalities/ResidualEnclosure.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59637322deee1c032204ad6b0909dfd40295ad5f29bd9e0870538658bdaceca7",
  "verification": {
    "reference": "docs/verification/Analysis/Inequalities/ResidualEnclosure.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6bce3b8-0780-9a6a-048b-a0e73c7b78f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coercive_error_bound {s t R q : ℝ} (hs : 0 < s)
    (ht : 0 ≤ t) (hR : 0 ≤ R) (hcoerc : s*t^2 ≤ q)
    (hcauchy : q ≤ t*R) : q ≤ R^2/s := by
  have hst : s*t ≤ R := by
    rcases eq_or_lt_of_le ht with hzero | hpos
    · simpa [← hzero] using hR
    · nlinarith [hcoerc, hcauchy]
  have htb : t ≤ R/s := by
    apply (le_div_iff₀ hs).2
    nlinarith [hst]
  calc
    q ≤ t*R := hcauchy
    _ ≤ (R/s)*R := mul_le_mul_of_nonneg_right htb hR
    _ = R^2/s := by ring

/-- The final enclosure is robust to both source and form errors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Inequalities/ResidualEnclosure.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Inequalities/ResidualEnclosure.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cfeb826aad9003591d65ca4f9ed6db3def17a5d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
