# actualResidual_eq_negativeEdge_add_complement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d46053bb-8dc8-9419-0c19-5c28ab72efaa",
  "kind": "theorem",
  "lexical_name": "actualResidual_eq_negativeEdge_add_complement",
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
  "slug": "actualresidual-eq-negativeedge-add-complement--ecacb9731242c9c2c87809ef",
  "source": {
    "blob": "1b01a62bdf3c5c9bf7eaeacef4e976803aca91d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 184,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/948e3edbb89f383174542783f38661a446a4ccc067f670cd44a86af1e62547c1SourceActualNega/Variante02d2ac9f0bd49297da0e5c0f2118676332d3338ccdd394c4eea26d642982a6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ecacb9731242c9c2c87809ef5cd7ced681238806b461239b28c27a61d414667d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/948e3edbb89f383174542783f38661a446a4ccc067f670cd44a86af1e62547c1SourceActualNega/Variante02d2ac9f0bd49297da0e5c0f2118676332d3338ccdd394c4eea26d642982a6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d46053bb-8dc8-9419-0c19-5c28ab72efaa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualResidual_eq_negativeEdge_add_complement {A : ℝ}
    (hA : 20000000000000 ≤ A) :
    mertensResidual A = actualNegativeEdgeMangoldtBlock A + actualNegativeEdgeComplement A := by
  have hs : actualNegativeEdgeWindow A ⊆ Finset.Icc 2 ⌊Real.exp (2 * A)⌋₊ := by
    intro n hn
    have hm := Finset.mem_Ioc.mp (edgeWindow_long hA hn)
    have hU := vaughanCutoff_pos A (by linarith : 1 ≤ A)
    exact Finset.mem_Icc.mpr ⟨by omega, hm.2⟩
  rw [mertensResidual_eq_closedPrimeMoment A (by linarith : 1 ≤ A)]
  unfold closedPrimeMoment actualNegativeEdgeMangoldtBlock actualNegativeEdgeComplement
  have h := Finset.sum_sdiff hs (f := fun n => vonMangoldt n * closedPrimeWeight A n)
  linarith

/-- This negative block forces an opposite complementary contribution, not a full-residual cap. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/948e3edbb89f383174542783f38661a446a4ccc067f670cd44a86af1e62547c1SourceActualNega/Variante02d2ac9f0bd49297da0e5c0f2118676332d3338ccdd394c4eea26d642982a6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/948e3edbb89f383174542783f38661a446a4ccc067f670cd44a86af1e62547c1SourceActualNega/Variante02d2ac9f0bd49297da0e5c0f2118676332d3338ccdd394c4eea26d642982a6f.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b01a62bdf3c5c9bf7eaeacef4e976803aca91d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
