# higherAtomShift_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b95e3583-5601-285e-230f-e8f25e9d8e19",
  "kind": "theorem",
  "lexical_name": "higherAtomShift_pos",
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
  "slug": "higheratomshift-pos--a20576e2b1845d6367568cef",
  "source": {
    "blob": "b3fb6531110304d5f7f1b8fb958e1bf25854db32",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 102,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/5SourceHigherPrimePowerCoefficients/Variantba23850ef2bd18800604fddb6754033c21797f01668077e38be5e9bddde9d7f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a20576e2b1845d6367568cef721d13ecde6f812888dd4740185790cc2bcb2e64",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/5SourceHigherPrimePowerCoefficients/Variantba23850ef2bd18800604fddb6754033c21797f01668077e38be5e9bddde9d7f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b95e3583-5601-285e-230f-e8f25e9d8e19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem higherAtomShift_pos (i : HigherPrimePowerIndex) : 0 < higherAtomShift i := by
  have hp1 : (1 : ℝ) < (i.1 : ℕ) := by exact_mod_cast i.1.property.one_lt
  exact mul_pos (by exact_mod_cast (show 0 < higherAtomExponent i by
    have := higherAtomExponent_ge_three i; omega)) (Real.log_pos hp1)

/-- Direct coefficient transport never cancels a correlation that may vanish. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/5SourceHigherPrimePowerCoefficients/Variantba23850ef2bd18800604fddb6754033c21797f01668077e38be5e9bddde9d7f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/5SourceHigherPrimePowerCoefficients/Variantba23850ef2bd18800604fddb6754033c21797f01668077e38be5e9bddde9d7f6.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3fb6531110304d5f7f1b8fb958e1bf25854db32` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
