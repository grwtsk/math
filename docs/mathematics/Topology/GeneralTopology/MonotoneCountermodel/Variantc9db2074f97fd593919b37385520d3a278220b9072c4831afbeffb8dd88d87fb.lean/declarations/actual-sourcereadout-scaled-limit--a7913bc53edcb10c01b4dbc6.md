# actual_sourceReadout_scaled_limit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4a2795e1-a481-cd8b-272b-33ec15906ee7",
  "kind": "theorem",
  "lexical_name": "actual_sourceReadout_scaled_limit",
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
  "slug": "actual-sourcereadout-scaled-limit--a7913bc53edcb10c01b4dbc6",
  "source": {
    "blob": "349c4f714ecf6236181f44e282d9efcb04713b4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 52,
    "path": "GRWTSK/Topology/GeneralTopology/MonotoneCountermodel/Variantc9db2074f97fd593919b37385520d3a278220b9072c4831afbeffb8dd88d87fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a7913bc53edcb10c01b4dbc6404769a04807d04e8f54b0a78a6640fe7e80d7f6",
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

Occurrence: `result:4a2795e1-a481-cd8b-272b-33ec15906ee7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_sourceReadout_scaled_limit :
    Tendsto (fun A : ℝ => A ^ 9 * Real.exp (-A / 2) * sourceReadout A) atTop
      (𝓝 (36294635520 * amplitude)) := by
  have hQ := quarter_scaled_limit.const_mul (amplitude / 4)
  have hR := scaled_bounded_remainder headRemainder 3
    (fun A hA => (headRemainder_abs_lt_three A hA).le)
  have he : (fun A : ℝ => A ^ 9 * Real.exp (-A / 2) * sourceReadout A) =ᶠ[atTop]
      (fun A => amplitude / 4 * (A ^ 9 * Real.exp (-A / 2) * normalizedSquare A (1 / 4)) -
        A ^ 9 * Real.exp (-A / 2) * headRemainder A) := by
    filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
    rw [sourceReadout_actual_square A hA]
    ring
  apply Tendsto.congr' he.symm
  convert hQ.sub hR using 1
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MonotoneCountermodel/Variantc9db2074f97fd593919b37385520d3a278220b9072c4831afbeffb8dd88d87fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MonotoneCountermodel/Variantc9db2074f97fd593919b37385520d3a278220b9072c4831afbeffb8dd88d87fb.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `349c4f714ecf6236181f44e282d9efcb04713b4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
