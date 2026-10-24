# rightBoundary_iff_zeroStrip

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:61aeb815-0b88-7915-9a1e-9ff9b4a4b9c8",
  "kind": "theorem",
  "lexical_name": "rightBoundary_iff_zeroStrip",
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
  "slug": "rightboundary-iff-zerostrip--bfb80866b2a72a00efb3fbbb",
  "source": {
    "blob": "7d65c067392d2783c95fa1f275a1710f0d2dabad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 31,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RightBoundaryConsumer/Variant616ed6a71250376dab580be2639f4d6bda7fa73d351b34a0d3e304c3d0c2efeb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bfb80866b2a72a00efb3fbbbe252e5f7b545ff3d86b47d9ecba62bc78cdbec6e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RightBoundaryConsumer/Variant616ed6a71250376dab580be2639f4d6bda7fa73d351b34a0d3e304c3d0c2efeb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61aeb815-0b88-7915-9a1e-9ff9b4a4b9c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rightBoundary_iff_zeroStrip (η : ℝ) : RightBoundary η ↔ ZeroStrip η := by
  constructor
  · intro h s hs
    have hr := h s hs
    have hl := h (zeroReflect s) hs.reflect
    simp only [zeroReflect, Complex.sub_re, Complex.one_re] at hl
    exact abs_le.mpr ⟨by linarith, by linarith⟩
  · intro h s hs
    have hr := (abs_le.mp (h s hs)).2
    linarith

/-- This preserves the source's nonnegative rates, rather than asserting a proved instance. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RightBoundaryConsumer/Variant616ed6a71250376dab580be2639f4d6bda7fa73d351b34a0d3e304c3d0c2efeb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RightBoundaryConsumer/Variant616ed6a71250376dab580be2639f4d6bda7fa73d351b34a0d3e304c3d0c2efeb.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d65c067392d2783c95fa1f275a1710f0d2dabad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
