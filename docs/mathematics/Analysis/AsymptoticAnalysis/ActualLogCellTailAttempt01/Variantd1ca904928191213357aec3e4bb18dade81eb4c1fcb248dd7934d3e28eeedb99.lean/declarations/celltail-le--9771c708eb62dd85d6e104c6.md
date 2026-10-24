# cellTail_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7553c400-6354-dced-e29a-9651f1e1a7c6",
  "kind": "theorem",
  "lexical_name": "cellTail_le",
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
  "slug": "celltail-le--9771c708eb62dd85d6e104c6",
  "source": {
    "blob": "fd74941f4680cc2d92d6e9bd1737558ed8ca1c3f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 47,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ActualLogCellTailAttempt01/Variantd1ca904928191213357aec3e4bb18dade81eb4c1fcb248dd7934d3e28eeedb99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9771c708eb62dd85d6e104c6357626d19a05cc44a3cc59aacdf1e98fbf87e845",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ActualLogCellTailAttempt01/Variantd1ca904928191213357aec3e4bb18dade81eb4c1fcb248dd7934d3e28eeedb99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7553c400-6354-dced-e29a-9651f1e1a7c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cellTail_le (N : ℕ) (hN : 3 ≤ N) :
    cellTail N ≤ (Real.log (N+1)+1)/(N+1) := by
  have ha := (firstStieltjesConstant_enclosure (N+1) (by omega)).1
  have hg := harmonic_error_upper (show 0 < N+1 by omega)
  rw [cellTail_exact]
  push_cast at ha hg ⊢
  calc
    _ ≤ Real.log ((N:ℝ)+1)/((N:ℝ)+1)+1/((N:ℝ)+1) := by linarith
    _ = _ := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ActualLogCellTailAttempt01/Variantd1ca904928191213357aec3e4bb18dade81eb4c1fcb248dd7934d3e28eeedb99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ActualLogCellTailAttempt01/Variantd1ca904928191213357aec3e4bb18dade81eb4c1fcb248dd7934d3e28eeedb99.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd74941f4680cc2d92d6e9bd1737558ed8ca1c3f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
