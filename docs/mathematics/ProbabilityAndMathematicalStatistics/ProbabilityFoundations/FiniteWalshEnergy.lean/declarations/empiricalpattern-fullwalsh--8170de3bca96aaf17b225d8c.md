# empiricalPattern_fullWalsh

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:af2dd297-a8b4-8486-6738-fa4c5ee41034",
  "kind": "theorem",
  "lexical_name": "empiricalPattern_fullWalsh",
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
  "slug": "empiricalpattern-fullwalsh--8170de3bca96aaf17b225d8c",
  "source": {
    "blob": "be67e54070eb916bb7ac9871351fe8e8032a6811",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 203,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8170de3bca96aaf17b225d8c523a7be1890795e4a8f6664b52bf285c32f751ea",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af2dd297-a8b4-8486-6738-fa4c5ee41034`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem empiricalPattern_fullWalsh
    (roots : Finset ℕ) (hroots : 0 < roots.card)
    (x : ℕ → ι → Bool) (a : ι → Bool) :
    (2 : ℚ) ^ Fintype.card ι *
        empiricalPattern roots (Finset.univ : Finset ι) x a =
      walshPolynomial (normalizedSourceMoment roots hroots x) a := by
  calc
    (2 : ℚ) ^ Fintype.card ι *
        empiricalPattern roots (Finset.univ : Finset ι) x a =
        ∑ S : Finset ι, empiricalMoment roots S x a := by
      simpa only [Finset.card_univ, Finset.powerset_univ] using
        (empiricalPattern_walsh roots (Finset.univ : Finset ι) x a hroots)
    _ = walshPolynomial (normalizedSourceMoment roots hroots x) a := by
      unfold walshPolynomial
      apply Finset.sum_congr rfl
      intro S hS
      exact empiricalMoment_factor roots hroots x S a

/-- Centering removes ONLY the empty Walsh coefficient; every nonempty
actual source correlation stays visible and signed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshEnergy.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be67e54070eb916bb7ac9871351fe8e8032a6811` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
