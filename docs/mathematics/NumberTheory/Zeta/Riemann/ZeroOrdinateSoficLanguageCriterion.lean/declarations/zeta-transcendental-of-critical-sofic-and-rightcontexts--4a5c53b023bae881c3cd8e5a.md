# zeta_transcendental_of_critical_sofic_and_rightContexts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:60802d4b-62a3-3631-0e95-177dd44cb6a8",
  "kind": "theorem",
  "lexical_name": "zeta_transcendental_of_critical_sofic_and_rightContexts",
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
  "slug": "zeta-transcendental-of-critical-sofic-and-rightcontexts--4a5c53b023bae881c3cd8e5a",
  "source": {
    "blob": "98ce2d34115ac5326da6e79a8de75bb2dc645442",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 345,
    "line": 319,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/ZeroOrdinateSoficLanguageCriterion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a5c53b023bae881c3cd8e5ae133e6abdc62e303c553a56decaed84346559a15",
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

Occurrence: `result:60802d4b-62a3-3631-0e95-177dd44cb6a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 319–345.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zeta_transcendental_of_critical_sofic_and_rightContexts
    (trace : ℂ → ℕ → Bool)
    (rationalEventually :
      ∀ z, ActualZetaZero z → RationalReal (zetaHeight z) →
        EventuallySoficTrace (trace z))
    (algebraicOnLineEventually :
      ∀ z, ActualZetaZero z → z.re = (1 : ℝ) / 2 →
        AlgebraicReal (zetaHeight z) →
          EventuallySoficTrace (trace z))
    (hcontexts : ZetaUnboundedTailContexts trace)
    (hCritical : ZetaCriticalPlacement) :
    ∀ z, ActualZetaZero z →
      (¬ RationalReal (zetaHeight z)) ∧
      (z.re = (1 : ℝ) / 2) ∧
      (¬ AlgebraicReal (zetaHeight z)) :=
  eventual_sofic_irrational_and_conditional_transcendental trace
    (eventualSuppliers_of_zeta_rightContexts trace
      rationalEventually algebraicOnLineEventually hcontexts)
    hCritical



/-! ## Bounded right-context capacity certificates -/

/-- A finite, inspectable continuation-context certificate for one tail:
there are `n` finite words whose right-continuation behaviors are pairwise
distinguishable in the selected tail factor language. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/ZeroOrdinateSoficLanguageCriterion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/ZeroOrdinateSoficLanguageCriterion.lean#L319).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98ce2d34115ac5326da6e79a8de75bb2dc645442` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
