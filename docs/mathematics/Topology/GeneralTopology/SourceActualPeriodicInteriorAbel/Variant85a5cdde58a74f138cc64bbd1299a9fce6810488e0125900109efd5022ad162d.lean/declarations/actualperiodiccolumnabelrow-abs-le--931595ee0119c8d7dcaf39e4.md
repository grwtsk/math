# actualPeriodicColumnAbelRow_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:73005729-77ac-2a73-dc9d-7cace58c1811",
  "kind": "theorem",
  "lexical_name": "actualPeriodicColumnAbelRow_abs_le",
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
  "slug": "actualperiodiccolumnabelrow-abs-le--931595ee0119c8d7dcaf39e4",
  "source": {
    "blob": "452c065add53650edf287f94df8a46388314e032",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 154,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualPeriodicInteriorAbel/Variant85a5cdde58a74f138cc64bbd1299a9fce6810488e0125900109efd5022ad162d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:931595ee0119c8d7dcaf39e4f7fd13d3edd2551dabf23be6a467d1c6434bdb7f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualPeriodicInteriorAbel/Variant85a5cdde58a74f138cc64bbd1299a9fce6810488e0125900109efd5022ad162d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73005729-77ac-2a73-dc9d-7cace58c1811`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualPeriodicColumnAbelRow_abs_le {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    |actualPeriodicColumnAbelRow A t| ≤
      ((vaughanCutoff A : ℝ) * ((vaughanCutoff A : ℝ) + 1) / 16) *
        (|actualPeriodicColumnEndpointWeight A t
            (sourceKernelCutoff A / (vaughanCutoff A + 1))| +
          |actualPeriodicColumnEndpointWeight A t (vaughanCutoff A + 1)| +
          ∑ M ∈ Finset.Ico (vaughanCutoff A + 1)
              (sourceKernelCutoff A / (vaughanCutoff A + 1)),
            |actualPeriodicColumnEndpointWeight A t (M + 1) -
              actualPeriodicColumnEndpointWeight A t M|) := by
  have ha := actual_centered_prefix_finite_abel (vaughanCutoff A) (vaughanCutoff A + 1)
    (sourceKernelCutoff A / (vaughanCutoff A + 1)) (vaughanCutoff_pos A hA) (by omega)
    (actual_column_window_nonempty hA) (fun M => actualPeriodicColumnEndpointWeight A t M)
  have hh := actual_centered_prefix_finite_abel_abs_le (vaughanCutoff A) (vaughanCutoff A + 1)
    (sourceKernelCutoff A / (vaughanCutoff A + 1)) (vaughanCutoff_pos A hA) (by omega)
    (actual_column_window_nonempty hA) (fun M => actualPeriodicColumnEndpointWeight A t M)
  rw [ha] at hh
  simpa only [actualPeriodicColumnAbelRow] using hh

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualPeriodicInteriorAbel/Variant85a5cdde58a74f138cc64bbd1299a9fce6810488e0125900109efd5022ad162d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualPeriodicInteriorAbel/Variant85a5cdde58a74f138cc64bbd1299a9fce6810488e0125900109efd5022ad162d.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `452c065add53650edf287f94df8a46388314e032` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
