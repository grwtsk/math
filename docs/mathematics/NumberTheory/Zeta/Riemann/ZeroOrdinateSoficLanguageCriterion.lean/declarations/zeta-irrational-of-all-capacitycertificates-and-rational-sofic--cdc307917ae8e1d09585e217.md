# zeta_irrational_of_all_capacityCertificates_and_rational_sofic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:061299a8-91bb-79d0-97dc-c56e78206387",
  "kind": "theorem",
  "lexical_name": "zeta_irrational_of_all_capacityCertificates_and_rational_sofic",
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
  "slug": "zeta-irrational-of-all-capacitycertificates-and-rational-sofic--cdc307917ae8e1d09585e217",
  "source": {
    "blob": "98ce2d34115ac5326da6e79a8de75bb2dc645442",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 470,
    "line": 457,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/ZeroOrdinateSoficLanguageCriterion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cdc307917ae8e1d09585e217c5ea7042fba1ee8a02dc6af5aaaff196f3073f3d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/ZeroOrdinateSoficLanguageCriterion.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:061299a8-91bb-79d0-97dc-c56e78206387`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 457–470.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zeta_irrational_of_all_capacityCertificates_and_rational_sofic
    (trace : ℂ → ℕ → Bool)
    (rationalEventually :
      ∀ z, ActualZetaZero z → RationalReal (zetaHeight z) →
        EventuallySoficTrace (trace z))
    (hall : ∀ capacity : ℕ,
      ZetaTailContextCapacityCertificate trace capacity) :
    ∀ z, ActualZetaZero z → ¬ RationalReal (zetaHeight z) :=
  zeta_irrational_of_rational_sofic_and_rightContexts
    trace rationalEventually
    (zeta_unboundedTailContexts_of_all_capacityCertificates trace hall)


end GRWTSK.RiemannHypothesis.ZeroOrdinateSoficLanguageCriterion
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/ZeroOrdinateSoficLanguageCriterion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/ZeroOrdinateSoficLanguageCriterion.lean#L457).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98ce2d34115ac5326da6e79a8de75bb2dc645442` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
