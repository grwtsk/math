# bv_phiD_ge_half

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fa363dd3573b33ba3b7fb9269a4fd75598007132",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 84,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/43/43b0468ac3e757322ba5c0684a0655641335c8a89b4f3a79b0e01f5b17c47847.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c97cc9ca-86d5-5996-120c-afec97311be9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8a9a9d15-c856-2a20-e66a-63b00561db2f",
  "kind": "lemma",
  "lexical_name": "bv_phiD_ge_half",
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
  "slug": "bv-phid-ge-half--7a0c1be18cd367d425f28455",
  "source": {
    "blob": "fa363dd3573b33ba3b7fb9269a4fd75598007132",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 84,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BridgeD/Variant43b0468ac3e757322ba5c0684a0655641335c8a89b4f3a79b0e01f5b17c47847.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a0c1be18cd367d425f28455bf9f3678dfacd6f05c33aff4d59de22a0610f068",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BridgeD/Variant43b0468ac3e757322ba5c0684a0655641335c8a89b4f3a79b0e01f5b17c47847.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a9a9d15-c856-2a20-e66a-63b00561db2f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma bv_phiD_ge_half (hϱ : TaperProfile ϱ) (h0 : 0 < lam) (h1 : lam ≤ 1) (hw : 1 ≤ w)
    (hwL : 8 * w ≤ L) (hLw : 4 * π * w ≤ L) :
    1 / 2 ≤ AdmWindow.bv (phiD ϱ lam L w) L := by
  have hL : 0 < L := by linarith
  have h := bD_close hϱ h0 h1 hw hwL
  have hb := bStar_ge h0 h1
  have hπ := Real.pi_pos
  have h4 : 4 * w / L ≤ 1 / π := by
    rw [div_le_div_iff₀ hL hπ]; linarith
  unfold AdmWindow.bv
  linarith [(abs_le.mp h).1]

/-- **The D-analogue of `Bridge.localHypsEventually`:** for all large `T`, the Montgomery–Taylor
data `P.localFunD T` satisfy §5's `LocalHypsCore` with constant `cDT`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BridgeD/Variant43b0468ac3e757322ba5c0684a0655641335c8a89b4f3a79b0e01f5b17c47847.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BridgeD/Variant43b0468ac3e757322ba5c0684a0655641335c8a89b4f3a79b0e01f5b17c47847.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa363dd3573b33ba3b7fb9269a4fd75598007132` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
