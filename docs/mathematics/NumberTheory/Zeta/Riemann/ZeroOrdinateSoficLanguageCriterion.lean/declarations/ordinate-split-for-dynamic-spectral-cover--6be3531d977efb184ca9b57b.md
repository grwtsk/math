# ordinate_split_for_dynamic_spectral_cover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3fb5ffad-3cf6-8505-544b-650d34a6eb7a",
  "kind": "theorem",
  "lexical_name": "ordinate_split_for_dynamic_spectral_cover",
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
  "slug": "ordinate-split-for-dynamic-spectral-cover--6be3531d977efb184ca9b57b",
  "source": {
    "blob": "98ce2d34115ac5326da6e79a8de75bb2dc645442",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 145,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/ZeroOrdinateSoficLanguageCriterion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6be3531d977efb184ca9b57b73cec886cd2da299d865da985759642d5a02ce6d",
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

Occurrence: `result:3fb5ffad-3cf6-8505-544b-650d34a6eb7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ordinate_split_for_dynamic_spectral_cover
    {Obs : Type u} {State : Type v} {Spectral : Type*}
    [Fintype State] [AddCommGroup Spectral] [Module ℂ Spectral]
    (C : DynamicSpectralCover ℂ Obs State Bool Spectral)
    (S : ZetaSoficSuppliers C.labelTrace)
    (hCritical : ZetaCriticalPlacement) :
    ∀ z, ActualZetaZero z →
      (¬ RationalReal (zetaHeight z)) ∧
      (z.re = (1 : ℝ) / 2) ∧
      (¬ AlgebraicReal (zetaHeight z)) :=
  actual_zeta_zero_irrational_and_conditional_transcendental
    C.labelTrace S hCritical

/-- The eventual version is logically stronger in its NON-SOFIC
supplier. A single non-sofic initial factor language does not by
definition establish non-soficity of every eventual tail. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/ZeroOrdinateSoficLanguageCriterion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/ZeroOrdinateSoficLanguageCriterion.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98ce2d34115ac5326da6e79a8de75bb2dc645442` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
