# quarter_power_div_sqrt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:78913747-92d2-f5cd-df7f-7aa632167da4",
  "kind": "theorem",
  "lexical_name": "quarter_power_div_sqrt",
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
  "slug": "quarter-power-div-sqrt--49564ea6785bc0d1a3de5191",
  "source": {
    "blob": "089b8bda4336b4d26f8a627417e5d9f4d8306f75",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 36,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/AbsoluteMertensEnvelopeAudit/Variant72b47ed66f264ea66bd3f9b64ed269b8d77a9e0a012d5ff925b7e9638b5212f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49564ea6785bc0d1a3de51918d5bea67fefcc135fd25d36f10fd8f599968e74c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/AbsoluteMertensEnvelopeAudit/Variant72b47ed66f264ea66bd3f9b64ed269b8d77a9e0a012d5ff925b7e9638b5212f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:78913747-92d2-f5cd-df7f-7aa632167da4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quarter_power_div_sqrt (x : ℝ) (hx : 0 < x) :
    x ^ (-(1 : ℝ) / 4) / Real.sqrt x = x ^ (-(3 : ℝ) / 4) := by
  rw [Real.sqrt_eq_rpow, ← Real.rpow_sub hx]
  congr 1
  norm_num

/-- Exact finite integral of the lower majorant, before any unbounded passage. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/AbsoluteMertensEnvelopeAudit/Variant72b47ed66f264ea66bd3f9b64ed269b8d77a9e0a012d5ff925b7e9638b5212f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/AbsoluteMertensEnvelopeAudit/Variant72b47ed66f264ea66bd3f9b64ed269b8d77a9e0a012d5ff925b7e9638b5212f0.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `089b8bda4336b4d26f8a627417e5d9f4d8306f75` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
