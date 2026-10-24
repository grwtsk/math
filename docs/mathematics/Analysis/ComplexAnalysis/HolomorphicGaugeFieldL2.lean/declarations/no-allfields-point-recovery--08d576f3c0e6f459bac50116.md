# no_allFields_point_recovery

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "31ad6b4463dd12613f6a0bbb294a3e9b9f45f3fc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 427,
      "path": "GRWTSK/Analysis/Complex/HolomorphicGaugeFieldL2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:47bca44a-8173-51e8-e575-1584cb32ccd4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cd655cd3-42db-f6f5-ba0a-9ca52ad1452f",
  "kind": "theorem",
  "lexical_name": "no_allFields_point_recovery",
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
  "slug": "no-allfields-point-recovery--08d576f3c0e6f459bac50116",
  "source": {
    "blob": "31ad6b4463dd12613f6a0bbb294a3e9b9f45f3fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 444,
    "line": 427,
    "path": "GRWTSK/Analysis/Complex/HolomorphicGaugeFieldL2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:08d576f3c0e6f459bac501163c8d4b1d514768d1673f32088d900d82f6dd2249",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/HolomorphicGaugeFieldL2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd655cd3-42db-f6f5-ba0a-9ca52ad1452f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 427–444.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem no_allFields_point_recovery {E : Cocycle diskCover}
    (G : Gauge (Cocycle.identity diskCover) E) :
    ¬ ∃ T : FieldL2 G (areaMeasure disk) diskCover_isOpen → ℂ,
      ∀ s : FiniteField G (areaMeasure disk) diskCover_isOpen,
        T (fieldClass G (areaMeasure disk) diskCover_isOpen s) =
          unframe G diskCover_isOpen s.value center := by
  rintro ⟨T, hT⟩
  have h1 := hT (ofMemLp G (areaMeasure disk) diskCover_isOpen spike spike_memLp)
  have h0 := hT (ofMemLp G (areaMeasure disk) diskCover_isOpen 0 MemLp.zero)
  simp only [ofMemLp, unframe_frame, spike_center, Pi.zero_apply] at h1 h0
  rw [framed_spike_zero_class G] at h1
  exact zero_ne_one (h0.symm.trans h1)

end Fixtures

end Area
end
end GRWTSK.Analysis.Complex.HolomorphicGaugeFieldL2
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/HolomorphicGaugeFieldL2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/HolomorphicGaugeFieldL2.lean#L427).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31ad6b4463dd12613f6a0bbb294a3e9b9f45f3fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
