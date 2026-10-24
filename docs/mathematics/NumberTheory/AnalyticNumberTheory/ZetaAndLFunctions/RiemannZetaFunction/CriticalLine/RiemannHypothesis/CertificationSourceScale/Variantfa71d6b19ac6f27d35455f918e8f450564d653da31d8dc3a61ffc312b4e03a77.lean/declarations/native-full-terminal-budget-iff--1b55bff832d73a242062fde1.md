# native_full_terminal_budget_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7ff8b40e-fceb-44a6-efa0-7cc67e496b58",
  "kind": "theorem",
  "lexical_name": "native_full_terminal_budget_iff",
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
  "slug": "native-full-terminal-budget-iff--1b55bff832d73a242062fde1",
  "source": {
    "blob": "6531f2aef68b834ece4222426bf000a58bf1e713",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 258,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CertificationSourceScale/Variantfa71d6b19ac6f27d35455f918e8f450564d653da31d8dc3a61ffc312b4e03a77.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b55bff832d73a242062fde1ffb14e1f4b6839dfb1edd8f81cd7f592b22abd31",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CertificationSourceScale/Variantfa71d6b19ac6f27d35455f918e8f450564d653da31d8dc3a61ffc312b4e03a77.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ff8b40e-fceb-44a6-efa0-7cc67e496b58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem native_full_terminal_budget_iff (B : ℝ) :
    (∀ A : ℝ, 1 ≤ A → combinedTerminalWork A + totalQuadraticWork A ≤ B) ↔
      ∀ s : SmallCoordinate, smallRepresentation.recover .fullTerminal s ≤ B := by
  constructor
  · intro h s
    exact h (smallScaleEquiv.symm s).1 (smallScaleEquiv.symm s).2
  · intro h A hA
    have hs := h (smallScaleEquiv ⟨A, hA⟩)
    simpa only [smallRepresentation, smallScaleEquiv.symm_apply_apply, family] using hs

/-- The infinite-scale boundary is outside these finite-scale reconstruction
domains; a readout extension at zero is a further mathematical obligation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CertificationSourceScale/Variantfa71d6b19ac6f27d35455f918e8f450564d653da31d8dc3a61ffc312b4e03a77.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CertificationSourceScale/Variantfa71d6b19ac6f27d35455f918e8f450564d653da31d8dc3a61ffc312b4e03a77.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6531f2aef68b834ece4222426bf000a58bf1e713` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
