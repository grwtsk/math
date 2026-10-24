# thetaPhiRemainderModeTerm7_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c4e33802-a5e0-9eba-973b-26154869cd01",
  "kind": "theorem",
  "lexical_name": "thetaPhiRemainderModeTerm7_summable",
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
  "slug": "thetaphiremaindermodeterm7-summable--ae8c40a41320f936b6cc880b",
  "source": {
    "blob": "1819768154537430ac8c6ec7fdb289a022fd654b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 242,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant33eba9b78e69acb9cb8a1d769fdadb9a607e42e726c5200e6f7bac08f610111e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae8c40a41320f936b6cc880b2895def35fecbab2715546de45706abb2ae7317c",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant33eba9b78e69acb9cb8a1d769fdadb9a607e42e726c5200e6f7bac08f610111e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4e33802-a5e0-9eba-973b-26154869cd01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiRemainderModeTerm7_summable
    (k : Fin 7) {A : ℝ} (hA : 3 ≤ A) :
    Summable (thetaPhiRemainderModeTerm7 k A) := by
  exact (((thetaGaussianFromTwo_rankFour_summable hA
    (2 * k.val + 4) (by omega)).mul_left
      (2 * 4 ^ k.val * A ^ (k.val + 1))).of_nonneg_of_le
        (fun m => norm_nonneg _)
        (thetaPhiRemainderModeTerm7_norm_le k hA)).of_norm

/-- Complete absolute bound for a rank-four normalized source-jet coordinate
after the first mode has been removed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant33eba9b78e69acb9cb8a1d769fdadb9a607e42e726c5200e6f7bac08f610111e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant33eba9b78e69acb9cb8a1d769fdadb9a607e42e726c5200e6f7bac08f610111e.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1819768154537430ac8c6ec7fdb289a022fd654b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
