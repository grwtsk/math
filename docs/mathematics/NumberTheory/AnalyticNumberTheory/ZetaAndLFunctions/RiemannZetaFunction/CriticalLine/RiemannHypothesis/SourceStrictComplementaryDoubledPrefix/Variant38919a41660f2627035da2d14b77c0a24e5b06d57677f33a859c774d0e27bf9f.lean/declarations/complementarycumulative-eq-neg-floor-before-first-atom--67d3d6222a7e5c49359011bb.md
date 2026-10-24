# complementaryCumulative_eq_neg_floor_before_first_atom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fb3a6db6-7405-f8e9-bb32-0dd3be57898b",
  "kind": "theorem",
  "lexical_name": "complementaryCumulative_eq_neg_floor_before_first_atom",
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
  "slug": "complementarycumulative-eq-neg-floor-before-first-atom--67d3d6222a7e5c49359011bb",
  "source": {
    "blob": "a1163f50c6a8c627ee0d0b48f6464e810c87e9c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 60,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceStrictComplementaryDoubledPrefix/Variant38919a41660f2627035da2d14b77c0a24e5b06d57677f33a859c774d0e27bf9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67d3d6222a7e5c49359011bb285fcd6f7b208e6676e0b757d6635c5129904b3d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceStrictComplementaryDoubledPrefix/Variant38919a41660f2627035da2d14b77c0a24e5b06d57677f33a859c774d0e27bf9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb3a6db6-7405-f8e9-bb32-0dd3be57898b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complementaryCumulative_eq_neg_floor_before_first_atom {U : ℕ} {x : ℝ}
    (hx : x < (2 * (U + 1) : ℕ)) : complementaryCumulative U x = -(⌊x⌋₊ : ℝ) := by
  apply complementaryCumulative_eq_neg_floor_of_floor_le_two_mul_add_one
  by_cases hx0 : 0 ≤ x
  · have hf := (Nat.floor_lt hx0).mpr hx
    omega
  · have hf : ⌊x⌋₊ = 0 := Nat.floor_of_nonpos (le_of_not_ge hx0)
    omega

/-- The first possible atom is preserved exactly, with its genuine Möbius/log sign. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceStrictComplementaryDoubledPrefix/Variant38919a41660f2627035da2d14b77c0a24e5b06d57677f33a859c774d0e27bf9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceStrictComplementaryDoubledPrefix/Variant38919a41660f2627035da2d14b77c0a24e5b06d57677f33a859c774d0e27bf9f.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1163f50c6a8c627ee0d0b48f6464e810c87e9c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
