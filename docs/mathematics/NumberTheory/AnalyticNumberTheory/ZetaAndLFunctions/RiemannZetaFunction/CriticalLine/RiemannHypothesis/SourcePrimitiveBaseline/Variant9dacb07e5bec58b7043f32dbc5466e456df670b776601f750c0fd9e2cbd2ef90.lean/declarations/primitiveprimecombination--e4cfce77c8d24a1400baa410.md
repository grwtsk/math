# primitivePrimeCombination

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d0855e0cc9f2fc17f4dd1876f3ceef080bd23abed002ccdf887bd6dd0839291c",
  "kind": "def",
  "lexical_name": "primitivePrimeCombination",
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
  "slug": "primitiveprimecombination--e4cfce77c8d24a1400baa410",
  "source": {
    "blob": "6d1d9b1253f160455d10a3fc2b03cd59f98b3fb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 121,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimitiveBaseline/Variant9dacb07e5bec58b7043f32dbc5466e456df670b776601f750c0fd9e2cbd2ef90.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e4cfce77c8d24a1400baa4106633bfed86164f8b7b15b9983b37ab47275f29f7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimitiveBaseline/Variant9dacb07e5bec58b7043f32dbc5466e456df670b776601f750c0fd9e2cbd2ef90.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d0855e0cc9f2fc17f4dd1876f3ceef080bd23abed002ccdf887bd6dd0839291c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def primitivePrimeCombination (A : ℝ) : ℝ :=
  (∑ p ∈ primeLogInventory (2 * A), Real.log (p : ℝ) *
    Real.exp (-Real.log (p : ℝ) / 2) * primitiveCorrelationTwo A (Real.log p)) +
  (∑ p ∈ primeLogInventory (2 * A), Real.log (p : ℝ) *
    Real.exp (-Real.log (p : ℝ) / 2) * primitiveCorrelationOne A (Real.log p)) / 2 +
  (∑ p ∈ primeLogInventory (2 * A), Real.log (p : ℝ) *
    Real.exp (-Real.log (p : ℝ) / 2) * primitiveCorrelationZero A (Real.log p)) / 16

/-- The actual prime adapter is an exact signed expansion, not an absolute estimate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimitiveBaseline/Variant9dacb07e5bec58b7043f32dbc5466e456df670b776601f750c0fd9e2cbd2ef90.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimitiveBaseline/Variant9dacb07e5bec58b7043f32dbc5466e456df670b776601f750c0fd9e2cbd2ef90.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d1d9b1253f160455d10a3fc2b03cd59f98b3fb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
