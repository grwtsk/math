# reference_checked

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f91d843d-c7e4-5364-2d43-f21419cc4dc6",
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
  "slug": "reference-checked--a2aba0c8016f26532d5ff6f4",
  "source": {
    "blob": "fe9bb430fef9fd223b23cea2616bbd33cfe3e217",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 233,
    "path": "GRWTSK/Analysis/Complex/RationalMellinQuadrature.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2aba0c8016f26532d5ff6f4ff40b1eb4c4b0f8fcb896ad02090e77b3663b693",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/RationalMellinQuadrature.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f91d843d-c7e4-5364-2d43-f21419cc4dc6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reference_checked {z : Coordinates} {a b : ℚ} {N : ℕ}
    (ha : 1 < a) (hab : a ≤ b) (hN : 0 < N) (hz : z.1 ≤ 1)
    (p : ℕ → RationalMellinNode.Resolution)
    (hl : ∀ i < N, RationalLogEnclosure.validScale (node a b N i)
      (p i).logScale (p i).logTwoCells (p i).mantissaCells = true)
    (hg : ∀ i < N, (RationalMellinNode.exponentBound z (node a b N i) (p i) /
      (2 ^ (p i).expScale : ℕ)) / ((p i).terms + 1 : ℕ) ≤ (1 / 2 : ℚ)) :
    check z a b N (referenceTrace z a b N p) = true := by
  apply (check_iff_valid z a b N _).mpr
  refine ⟨ha, hab, hN, hz, by simp [referenceTrace, referenceSamples], ?_, ?_⟩
  · intro i hi
    change RationalMellinNode.check z (node a b N i)
      (sampleAt (referenceSamples z a b N p) i).resolution
      (sampleAt (referenceSamples z a b N p) i).trace = true
    rw [referenceSampleAt z a b N p i (Finset.mem_range.mp hi)]
    exact RationalMellinNode.exactTrace_checked hz (hl i (Finset.mem_range.mp hi))
      (hg i (Finset.mem_range.mp hi))
  · exact RationalFiniteSum.exactTrace_checked _

end GRWTSK.Analysis.Complex.RationalMellinQuadrature
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/RationalMellinQuadrature.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/RationalMellinQuadrature.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe9bb430fef9fd223b23cea2616bbd33cfe3e217` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
