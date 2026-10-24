# two_height_solve_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ffec402e-834b-1f7c-7d17-fd33ecb52246",
  "kind": "theorem",
  "lexical_name": "two_height_solve_error",
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
  "slug": "two-height-solve-error--1bb81b46aa5fb4964c175a99",
  "source": {
    "blob": "cfeb826aad9003591d65ca4f9ed6db3def17a5d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 64,
    "path": "GRWTSK/Analysis/Inequalities/ResidualEnclosure.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1bb81b46aa5fb4964c175a99ff847b0e22698368434fbdd38d46e66ad4071b04",
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

Occurrence: `result:ffec402e-834b-1f7c-7d17-fd33ecb52246`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem two_height_solve_error {e rho u v : ℝ}
    (he : 0 < e) (hu : 0 ≤ u ∧ u ≤ rho^2/e)
    (hv : 0 ≤ v ∧ v ≤ rho^2/(2*e)) :
    0 ≤ (u+v)/e ∧ (u+v)/e ≤ 3*rho^2/(2*e^2) := by
  constructor
  · exact div_nonneg (add_nonneg hu.1 hv.1) he.le
  · calc
      (u+v)/e ≤ (rho^2/e + rho^2/(2*e))/e :=
        div_le_div_of_nonneg_right (add_le_add hu.2 hv.2) he.le
      _ = 3*rho^2/(2*e^2) := by field_simp; ring

/-- Three-channel Cauchy--Schwarz, with no omitted boundary channel. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Inequalities/ResidualEnclosure.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Inequalities/ResidualEnclosure.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cfeb826aad9003591d65ca4f9ed6db3def17a5d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
