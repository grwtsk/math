# reference_checked

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6dadea7c-b68d-021b-df44-1ed07164047c",
  "kind": "theorem",
  "lexical_name": "reference_checked",
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
  "slug": "reference-checked--87019b5a5226baf8448a5657",
  "source": {
    "blob": "5e4fa3ab4ab41fee3eb210a4e33b318fa6709b73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 224,
    "path": "GRWTSK/Analysis/Complex/RationalTentQuadrature.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87019b5a5226baf8448a5657e60b8df7c1234f107df65324344b30c867de2665",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/RationalTentQuadrature.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6dadea7c-b68d-021b-df44-1ed07164047c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reference_checked {z : Coordinates} {x h : ℚ} {N : ℕ}
    (hh : 0 < h) (ha : 1 < x - h) (hN : 0 < N) (hz : z.1 ≤ 1)
    (p : Bool → ℕ → RationalMellinNode.Resolution)
    (hl : ∀ right i, i < N → RationalLogEnclosure.validScale (node x h N i right)
      (p right i).logScale (p right i).logTwoCells (p right i).mantissaCells = true)
    (hg : ∀ right i, i < N → (RationalMellinNode.exponentBound z (node x h N i right) (p right i) /
      (2 ^ (p right i).expScale : ℕ)) / ((p right i).terms + 1 : ℕ) ≤ (1 / 2 : ℚ)) :
    check z x h N (referenceTrace z x h N (p false) (p true)) = true := by
  apply (check_iff_valid z x h N _).mpr
  refine ⟨hh, ha, hN, hz, by simp [referenceTrace, referenceSamples],
    by simp [referenceTrace, referenceSamples], ?_, ?_⟩
  · intro right i hi
    have hi' := Finset.mem_range.mp hi
    cases right <;>
      simp only [referenceTrace, samples, Bool.false_eq_true, if_false, if_true] <;>
      rw [reference_sample z x h N _ _ i hi'] <;>
      exact RationalMellinNode.exactTrace_checked hz (hl _ _ hi') (hg _ _ hi')
  · exact RationalFiniteSum.exactTrace_checked _

end GRWTSK.Analysis.Complex.RationalTentQuadrature
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/RationalTentQuadrature.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/RationalTentQuadrature.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e4fa3ab4ab41fee3eb210a4e33b318fa6709b73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
