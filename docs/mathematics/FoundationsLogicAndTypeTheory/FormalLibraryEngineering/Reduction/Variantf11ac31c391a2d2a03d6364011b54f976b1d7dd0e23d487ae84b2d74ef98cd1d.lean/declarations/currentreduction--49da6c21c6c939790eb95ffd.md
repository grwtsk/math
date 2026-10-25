# CurrentReduction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4dbd7f8b92460b9ae81b96f7c5c4fc1b2f35435a48d42fbab6b5f977bcb6edf6",
  "kind": "structure",
  "lexical_name": "CurrentReduction",
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
  "slug": "currentreduction--49da6c21c6c939790eb95ffd",
  "source": {
    "blob": "3ed7c88ddf7adc1d683aa6c7bbe557ce2fa21566",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 34,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reduction/Variantf11ac31c391a2d2a03d6364011b54f976b1d7dd0e23d487ae84b2d74ef98cd1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:49da6c21c6c939790eb95ffd3472837359cced1a97afc9ade670bb0390cc4da2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reduction/Variantf11ac31c391a2d2a03d6364011b54f976b1d7dd0e23d487ae84b2d74ef98cd1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4dbd7f8b92460b9ae81b96f7c5c4fc1b2f35435a48d42fbab6b5f977bcb6edf6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CurrentReduction (T : OrientedKnotFillingTheory.{u}) where
  /-- Distinct cosmetic slopes have opposite coefficients. -/
  oppositeCoefficients :
    ∀ {K : T.Knot} {r s : T.Slope K},
      T.Nontrivial K → T.PurelyCosmeticPair K r s →
        T.OppositeCoefficients K r s
  /-- In positive-numerator notation, the first slope satisfies `q² ≡ -1 mod p`. -/
  niWuCongruence :
    ∀ {K : T.Knot} {r s : T.Slope K},
      T.Nontrivial K → T.PurelyCosmeticPair K r s →
        T.NiWuCongruence r
  /-- The surviving unordered slope pair is exactly `2` and `-2`. -/
  residualSlopes :
    ∀ {K : T.Knot} {r s : T.Slope K},
      T.Nontrivial K → T.PurelyCosmeticPair K r s →
        (r = T.plusTwo K ∧ s = T.minusTwo K) ∨
        (r = T.minusTwo K ∧ s = T.plusTwo K)
  /-- Every counterexample knot has the complete fixed-knot residual profile. -/
  residualInvariants :
    ∀ {K : T.Knot},
      T.Nontrivial K → T.KnotCounterexample K →
        T.FixedKnotResidualProfile K
  /--
  Any global counterexample has a hyperbolic residual representative whose
  two marked fillings are themselves hyperbolic.
  -/
  hyperbolicReplacement :
    T.ConjectureFalse → ∃ K : T.Knot, T.ResidualCounterexample K

namespace OrientedKnotFillingTheory

variable (T : OrientedKnotFillingTheory.{u})

/-- Oriented homeomorphism of fillings is symmetric. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reduction/Variantf11ac31c391a2d2a03d6364011b54f976b1d7dd0e23d487ae84b2d74ef98cd1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reduction/Variantf11ac31c391a2d2a03d6364011b54f976b1d7dd0e23d487ae84b2d74ef98cd1d.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ed7c88ddf7adc1d683aa6c7bbe557ce2fa21566` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
