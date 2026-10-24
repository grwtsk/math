# actual_sourceReadout_boundary_limit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:26f47f41-ab29-d091-4f62-11c7d618b932",
  "kind": "theorem",
  "lexical_name": "actual_sourceReadout_boundary_limit",
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
  "slug": "actual-sourcereadout-boundary-limit--03125fd1077aea2a7983dd3f",
  "source": {
    "blob": "349c4f714ecf6236181f44e282d9efcb04713b4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 68,
    "path": "GRWTSK/Topology/GeneralTopology/MonotoneCountermodel/Variantc9db2074f97fd593919b37385520d3a278220b9072c4831afbeffb8dd88d87fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03125fd1077aea2a7983dd3f3d1ce673c132e8ff46a4fb93a2fc8c7e4b305f7a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MonotoneCountermodel/Variantc9db2074f97fd593919b37385520d3a278220b9072c4831afbeffb8dd88d87fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26f47f41-ab29-d091-4f62-11c7d618b932`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_sourceReadout_boundary_limit :
    Tendsto (fun A : ℝ => A ^ 9 * Real.exp (-A) * sourceReadout A) atTop (𝓝 0) := by
  have hE : Tendsto (fun A : ℝ => Real.exp (-A / 2)) atTop (𝓝 0) :=
    Real.tendsto_exp_atBot.comp (tendsto_neg_atTop_atBot.atBot_div_const (by norm_num))
  have h := actual_sourceReadout_scaled_limit.mul hE
  have he : (fun A : ℝ => A ^ 9 * Real.exp (-A) * sourceReadout A) =
      fun A => (A ^ 9 * Real.exp (-A / 2) * sourceReadout A) * Real.exp (-A / 2) := by
    funext A
    rw [show -A = -A / 2 + -A / 2 by ring, Real.exp_add]
    ring
  rw [he]
  simpa only [mul_zero] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MonotoneCountermodel/Variantc9db2074f97fd593919b37385520d3a278220b9072c4831afbeffb8dd88d87fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MonotoneCountermodel/Variantc9db2074f97fd593919b37385520d3a278220b9072c4831afbeffb8dd88d87fb.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `349c4f714ecf6236181f44e282d9efcb04713b4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
