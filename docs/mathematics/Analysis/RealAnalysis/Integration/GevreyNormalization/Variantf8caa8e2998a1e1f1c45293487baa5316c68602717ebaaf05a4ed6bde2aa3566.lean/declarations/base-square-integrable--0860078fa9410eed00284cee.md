# base_square_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f7a3d44b-c19c-0a1e-d69e-20493c8dc29f",
  "kind": "theorem",
  "lexical_name": "base_square_integrable",
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
  "slug": "base-square-integrable--0860078fa9410eed00284cee",
  "source": {
    "blob": "d85db46ce1fc9ce39a301794fe9bd70ed8e4d6f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 155,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/GevreyNormalization/Variantf8caa8e2998a1e1f1c45293487baa5316c68602717ebaaf05a4ed6bde2aa3566.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0860078fa9410eed00284cee45d175d37d26f1863663f04e7df0395ee8a70082",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/GevreyNormalization/Variantf8caa8e2998a1e1f1c45293487baa5316c68602717ebaaf05a4ed6bde2aa3566.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7a3d44b-c19c-0a1e-d69e-20493c8dc29f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem base_square_integrable {h : ℝ → ℝ} (hc : ContDiff ℝ 2 h)
    (hs : HasCompactSupport h) (A : ℝ) :
    Integrable (fun x ↦ (deriv (deriv h) x / A ^ 2 - h x / 4) ^ 2) := by
  obtain ⟨h0, _, h2⟩ := profile_square_integrable hc hs
  have hm : Integrable (fun x ↦ deriv (deriv h) x * h x) :=
    ((continuous_second hc).mul hc.continuous).integrable_of_hasCompactSupport
      (hs.deriv.deriv.mul_right)
  convert ((h2.div_const (A ^ 4)).sub (hm.div_const (2 * A ^ 2))).add
    (h0.div_const 16) using 1 <;> first | rfl |
    (funext x; simp only [Pi.add_apply, Pi.sub_apply]; ring)

/-- The squared differential operator is genuinely integrable at every positive scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/GevreyNormalization/Variantf8caa8e2998a1e1f1c45293487baa5316c68602717ebaaf05a4ed6bde2aa3566.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/GevreyNormalization/Variantf8caa8e2998a1e1f1c45293487baa5316c68602717ebaaf05a4ed6bde2aa3566.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d85db46ce1fc9ce39a301794fe9bd70ed8e4d6f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
