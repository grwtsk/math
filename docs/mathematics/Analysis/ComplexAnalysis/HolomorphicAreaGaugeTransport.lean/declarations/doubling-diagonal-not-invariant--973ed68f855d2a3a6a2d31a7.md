# doubling_diagonal_not_invariant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0bd8e61c6305566ce1685fe8bdf15e74f0b7f22f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 336,
      "path": "GRWTSK/Analysis/Complex/HolomorphicAreaGaugeTransport.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9206cc3b-8aba-0cc6-88f5-6b88c0b4a5bb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3b21c2a5-c3f8-ba09-fae6-0ccbc306f038",
  "kind": "theorem",
  "lexical_name": "doubling_diagonal_not_invariant",
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
  "slug": "doubling-diagonal-not-invariant--973ed68f855d2a3a6a2d31a7",
  "source": {
    "blob": "0bd8e61c6305566ce1685fe8bdf15e74f0b7f22f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 353,
    "line": 336,
    "path": "GRWTSK/Analysis/Complex/HolomorphicAreaGaugeTransport.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:973ed68f855d2a3a6a2d31a74186222eba887f75d04bb9f784e8cd2f967a347c",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/HolomorphicAreaGaugeTransport.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b21c2a5-c3f8-ba09-fae6-0ccbc306f038`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 336–353.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem doubling_diagonal_not_invariant (hOpen : D.IsOpenCover)
    (hArea : (volume : Measure ℂ) D.X.carrier < ∞) (i : ι) (x : D.X.carrier)
    (hi : x.1 ∈ (D.U i).carrier) :
    chartKernel (constantGauge (Cocycle.identity D) twoUnit) hOpen i x hi i x hi ≠
      kernel hOpen x x := by
  intro he
  rw [doubling_kernel] at he
  have hk : kernel hOpen x x ≠ 0 := by
    intro hz
    have hp := kernel_diagonal_pos hOpen hArea x
    rw [hz, Complex.zero_re] at hp
    exact (lt_irrefl 0) hp
  have hc : (4 : ℂ) = 1 := mul_right_cancel₀ hk (by simpa only [one_mul] using he)
  norm_num at hc

end Fixtures
end
end GRWTSK.Analysis.Complex.HolomorphicAreaGaugeTransport
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/HolomorphicAreaGaugeTransport.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/HolomorphicAreaGaugeTransport.lean#L336).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0bd8e61c6305566ce1685fe8bdf15e74f0b7f22f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
