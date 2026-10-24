# le_exp_log

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:85e8cd45-27a1-4f3f-f8eb-68c5f8fee910",
  "kind": "theorem",
  "lexical_name": "le_exp_log",
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
  "slug": "le-exp-log--5f1e5a0c1d7f58dedbddc971",
  "source": {
    "blob": "192a9b92912b130a9f9ab5782632889268de615a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 79,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantd171aaf2028ba28b41613020fff5ec0911a355f55218ff018bda0957794f66f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f1e5a0c1d7f58dedbddc971b132d4b78d798f2e2250bb855a169dd6962a09dc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantd171aaf2028ba28b41613020fff5ec0911a355f55218ff018bda0957794f66f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85e8cd45-27a1-4f3f-f8eb-68c5f8fee910`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_exp_log (x : ℝ) : x ≤ exp (log x) := by
  by_cases h_zero : x = 0
  · rw [h_zero, log, dif_pos rfl, exp_zero]
    exact zero_le_one
  · rw [exp_log_eq_abs h_zero]
    exact le_abs_self _
#align real.le_exp_log Real.le_exp_log

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantd171aaf2028ba28b41613020fff5ec0911a355f55218ff018bda0957794f66f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantd171aaf2028ba28b41613020fff5ec0911a355f55218ff018bda0957794f66f0.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `192a9b92912b130a9f9ab5782632889268de615a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
