# source_noninteger_cutoff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1f8e0b9e-5602-92c5-e89c-5af9c86c0077",
  "kind": "theorem",
  "lexical_name": "source_noninteger_cutoff",
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
  "slug": "source-noninteger-cutoff--cb6eb1067113881b178787ba",
  "source": {
    "blob": "cc340daaa63a3ff0f6e8490ebbcafc4e40e39c75",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 26,
    "path": "GRWTSK/Analysis/ComplexAnalysis/ActualRegressions/Variantcb2b15f7cc0aec336a60a9afb8dcad8aa8fb929215f4a39f987d1ef3d2189af4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb6eb1067113881b178787baf6ea505be59aa2a9aefe473beaa30624caa624c0",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/ActualRegressions/Variantcb2b15f7cc0aec336a60a9afb8dcad8aa8fb929215f4a39f987d1ef3d2189af4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f8e0b9e-5602-92c5-e89c-5af9c86c0077`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_noninteger_cutoff : innerCutoff (Real.log 3) 6 = (3 / 2 : ℝ) := by
  unfold innerCutoff
  rw [show 2 * Real.log 3 = Real.log 3 + Real.log 3 by ring,
    Real.exp_add, Real.exp_log (by norm_num : (0 : ℝ) < 3)]
  norm_num

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/ActualRegressions/Variantcb2b15f7cc0aec336a60a9afb8dcad8aa8fb929215f4a39f987d1ef3d2189af4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/ActualRegressions/Variantcb2b15f7cc0aec336a60a9afb8dcad8aa8fb929215f4a39f987d1ef3d2189af4.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc340daaa63a3ff0f6e8490ebbcafc4e40e39c75` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
