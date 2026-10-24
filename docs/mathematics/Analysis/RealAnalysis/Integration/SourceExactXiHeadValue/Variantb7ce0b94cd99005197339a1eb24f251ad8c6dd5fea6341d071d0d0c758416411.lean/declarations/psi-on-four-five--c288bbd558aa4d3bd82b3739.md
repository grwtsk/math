# psi_on_four_five

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:08009f3a-9ae7-d86b-baf4-61bf226fc7cc",
  "kind": "theorem",
  "lexical_name": "psi_on_four_five",
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
  "slug": "psi-on-four-five--c288bbd558aa4d3bd82b3739",
  "source": {
    "blob": "158128759131d3fc9baf718be3749b322acd1068",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 43,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceExactXiHeadValue/Variantb7ce0b94cd99005197339a1eb24f251ad8c6dd5fea6341d071d0d0c758416411.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c288bbd558aa4d3bd82b3739414c9a2b5d26842f7ec9471d83d62ede7256698e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceExactXiHeadValue/Variantb7ce0b94cd99005197339a1eb24f251ad8c6dd5fea6341d071d0d0c758416411.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08009f3a-9ae7-d86b-baf4-61bf226fc7cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem psi_on_four_five {y : ℝ} (hy : y ∈ Ioo (4 : ℝ) 5) :
    Chebyshev.psi y = Real.log 12 := by
  have h := psi_on_cell (n := 4) (by linarith [hy.1]) hy.1.le (by norm_num; exact hy.2)
  have hlcm : Nat.lcmUpto 4 = 12 := by decide
  simpa only [hlcm, Nat.cast_ofNat] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceExactXiHeadValue/Variantb7ce0b94cd99005197339a1eb24f251ad8c6dd5fea6341d071d0d0c758416411.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceExactXiHeadValue/Variantb7ce0b94cd99005197339a1eb24f251ad8c6dd5fea6341d071d0d0c758416411.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `158128759131d3fc9baf718be3749b322acd1068` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
