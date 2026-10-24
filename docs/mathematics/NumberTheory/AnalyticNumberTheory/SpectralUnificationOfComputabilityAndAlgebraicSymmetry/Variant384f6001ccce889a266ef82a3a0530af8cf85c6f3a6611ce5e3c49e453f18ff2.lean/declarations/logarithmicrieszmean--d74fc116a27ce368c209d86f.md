# logarithmicRieszMean

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:57c03ce175b0328955f190af15f5274cef0b21e0392d46375a410ca911fcb2bc",
  "kind": "def",
  "lexical_name": "logarithmicRieszMean",
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
  "slug": "logarithmicrieszmean--d74fc116a27ce368c209d86f",
  "source": {
    "blob": "abdc0b023f637d25b287ce5d441b8bbae42b9876",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 113,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant384f6001ccce889a266ef82a3a0530af8cf85c6f3a6611ce5e3c49e453f18ff2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d74fc116a27ce368c209d86f4c206cb59fedeb8a1ce6441bbcadaea7b5c33c67",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant384f6001ccce889a266ef82a3a0530af8cf85c6f3a6611ce5e3c49e453f18ff2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:57c03ce175b0328955f190af15f5274cef0b21e0392d46375a410ca911fcb2bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def logarithmicRieszMean (m : ℕ) (T : ℝ) : ℝ :=
  (1 / (m.factorial : ℝ)) * ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
    ArithmeticFunction.vonMangoldt n / Real.sqrt n * (T - Real.log n) ^ m

/-- Including one in the prime inventory changes no weighted sum: `Λ(1)=0`.
This is independent of the nonzero Möbius atom at one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant384f6001ccce889a266ef82a3a0530af8cf85c6f3a6611ce5e3c49e453f18ff2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant384f6001ccce889a266ef82a3a0530af8cf85c6f3a6611ce5e3c49e453f18ff2.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abdc0b023f637d25b287ce5d441b8bbae42b9876` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
