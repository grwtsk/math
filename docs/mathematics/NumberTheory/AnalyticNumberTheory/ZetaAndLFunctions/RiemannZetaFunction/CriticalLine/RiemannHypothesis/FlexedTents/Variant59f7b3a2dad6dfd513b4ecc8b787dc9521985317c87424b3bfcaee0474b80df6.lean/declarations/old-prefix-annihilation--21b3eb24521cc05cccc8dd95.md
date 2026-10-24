# old_prefix_annihilation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab348409-1bb9-4d5a-0dcc-bf1bf25fabf5",
  "kind": "theorem",
  "lexical_name": "old_prefix_annihilation",
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
  "slug": "old-prefix-annihilation--21b3eb24521cc05cccc8dd95",
  "source": {
    "blob": "4358c07eabae53287c0d566a8665700d22f9470f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 87,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FlexedTents/Variant59f7b3a2dad6dfd513b4ecc8b787dc9521985317c87424b3bfcaee0474b80df6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21b3eb24521cc05cccc8dd95014cdf0704a652d0d7c43048e079209f66920262",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FlexedTents/Variant59f7b3a2dad6dfd513b4ecc8b787dc9521985317c87424b3bfcaee0474b80df6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab348409-1bb9-4d5a-0dcc-bf1bf25fabf5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem old_prefix_annihilation (z₀ z₁ z₂ t c : ℝ) (h : z₀ - z₁ ≠ 0) :
    (2 * c * (t - z₂) - 2 * c * (t - z₁)) -
      (z₁ - z₂) / (z₀ - z₁) * (2 * c * (t - z₁) - 2 * c * (t - z₀)) = 0 := by
  field_simp
  ring

/-- The tent atom in this module, with the following exact parameterization.

def tentAtom (z₀ z₁ z₂ t : ℝ) : ℝ := 2 * ((max (t - z₂) 0 - max (t - z₁) 0) - (z₁ - z₂) / (z₀
- z₁) * (max (t - z₁) 0 - max (t - z₀) 0))
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FlexedTents/Variant59f7b3a2dad6dfd513b4ecc8b787dc9521985317c87424b3bfcaee0474b80df6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FlexedTents/Variant59f7b3a2dad6dfd513b4ecc8b787dc9521985317c87424b3bfcaee0474b80df6.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4358c07eabae53287c0d566a8665700d22f9470f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
