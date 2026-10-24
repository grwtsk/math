# next_order_fails

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:43177635-f552-52dc-52d4-317c26ccec18",
  "kind": "theorem",
  "lexical_name": "next_order_fails",
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
  "slug": "next-order-fails--9708c767a8793c8d5a7a1f96",
  "source": {
    "blob": "8e5e777c3e00254f3f97b5336670b888c863016c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 55,
    "path": "GRWTSK/Algebra/LinearAlgebra/ArbitraryHankelPrefix/Variant708d3203377d13e30c3715c10a4851fcec5d6d233ab84e7003c0fd2f245b5a25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9708c767a8793c8d5a7a1f96a0c6d46ab17b13b5d4f24d69ccd6eeeffeba4101",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ArbitraryHankelPrefix/Variant708d3203377d13e30c3715c10a4851fcec5d6d233ab84e7003c0fd2f245b5a25.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43177635-f552-52dc-52d4-317c26ccec18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem next_order_fails (s : ℕ → ℝ) (d : ℕ) {c : ℝ} (hc : c < 0) :
    ¬ Matrix.PosSemidef
      (Matrix.of (fun i j : Fin (d+2) => changeDiagonal s d c (i.val+j.val))) := by
  intro h
  have hn := h.diag_nonneg (i := Fin.last (d+1))
  have he : d+1+(d+1)=2*d+2 := by omega
  simp only [Matrix.of_apply, Fin.val_last, changeDiagonal, he] at hn
  exact (not_le_of_gt hc) hn

/-- Even the next block retains all entries except its final diagonal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ArbitraryHankelPrefix/Variant708d3203377d13e30c3715c10a4851fcec5d6d233ab84e7003c0fd2f245b5a25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ArbitraryHankelPrefix/Variant708d3203377d13e30c3715c10a4851fcec5d6d233ab84e7003c0fd2f245b5a25.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e5e777c3e00254f3f97b5336670b888c863016c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
