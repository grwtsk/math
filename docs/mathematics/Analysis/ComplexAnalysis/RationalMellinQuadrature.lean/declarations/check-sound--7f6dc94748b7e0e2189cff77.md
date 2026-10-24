# check_sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7233a523-395a-cec2-b537-87f937defcbd",
  "kind": "theorem",
  "lexical_name": "check_sound",
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
  "slug": "check-sound--7f6dc94748b7e0e2189cff77",
  "source": {
    "blob": "fe9bb430fef9fd223b23cea2616bbd33cfe3e217",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 168,
    "path": "GRWTSK/Analysis/Complex/RationalMellinQuadrature.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f6dc94748b7e0e2189cff77a515a4c5ee27229aed7821d2d5eec1748a73edcf",
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

Occurrence: `result:7233a523-395a-cec2-b537-87f937defcbd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem check_sound {z : Coordinates} {a b : ℚ} {N : ℕ} {tr : Trace}
    (h : check z a b N tr = true) :
    ‖kernel (a : ℝ) (b : ℝ) (toComplex z) - toComplex (output N tr)‖ ≤ (error z a b N tr : ℝ) := by
  obtain ⟨ha, hab, hN, hz, _hlen, hs, hacc⟩ := (check_iff_valid z a b N tr).mp h
  have hq := quadrature_samples_error tr.samples ha hab hN hz hs
  have ht := RationalFiniteSum.check_sound hacc
  simp only [length_terms] at ht
  let Q : ℂ := ∑ i ∈ Finset.range N, toComplex (RationalFiniteSum.termAt (terms a b N tr.samples) i)
  calc
    _ = ‖(kernel (a : ℝ) (b : ℝ) (toComplex z) - Q) + (Q - toComplex (output N tr))‖ := by
      congr 1; abel
    _ ≤ ‖kernel (a : ℝ) (b : ℝ) (toComplex z) - Q‖ + ‖Q - toComplex (output N tr)‖ := norm_add_le _ _
    _ ≤ (error z a b N tr : ℝ) := by
      simpa only [error, Rat.cast_add, output] using add_le_add hq ht

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/RationalMellinQuadrature.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/RationalMellinQuadrature.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe9bb430fef9fd223b23cea2616bbd33cfe3e217` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
