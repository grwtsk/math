# finiteMangoldt_reconstruction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8fd9e2d6-6324-031d-bc65-77fd9b826668",
  "kind": "theorem",
  "lexical_name": "finiteMangoldt_reconstruction",
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
  "slug": "finitemangoldt-reconstruction--0b32838e1f5a80074ff0c5c9",
  "source": {
    "blob": "c33a3c2556b6b7cc6897e58aae0bfb0bb0569383",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 87,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BaselineV1Source/Variant2d84a2342e700d386d1b0c44a342ea0bcc54183b74b3d4b2456425129d70986a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b32838e1f5a80074ff0c5c9538577b61be4d2e5b733509ae0e02674d7a99dd1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BaselineV1Source/Variant2d84a2342e700d386d1b0c44a342ea0bcc54183b74b3d4b2456425129d70986a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8fd9e2d6-6324-031d-bc65-77fd9b826668`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteMangoldt_reconstruction (S : Finset ℕ) (f : ComplexL2) :
    (∑ n ∈ S, mangoldtCoefficient n * (⟪f, translation (Real.log n) f⟫_ℂ).re) =
      finiteMangoldtBaseline S * ‖f‖ ^ 2 - finiteMangoldtStorage S f := by
  simp only [finiteMangoldtBaseline, finiteMangoldtStorage, Finset.sum_mul,
    ← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  rw [translationStorage_eq]
  ring

/-- Complete actual closed inventory, including every prime power. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BaselineV1Source/Variant2d84a2342e700d386d1b0c44a342ea0bcc54183b74b3d4b2456425129d70986a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BaselineV1Source/Variant2d84a2342e700d386d1b0c44a342ea0bcc54183b74b3d4b2456425129d70986a.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c33a3c2556b6b7cc6897e58aae0bfb0bb0569383` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
