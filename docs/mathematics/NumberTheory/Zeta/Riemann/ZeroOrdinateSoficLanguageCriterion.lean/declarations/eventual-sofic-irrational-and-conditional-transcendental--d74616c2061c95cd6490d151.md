# eventual_sofic_irrational_and_conditional_transcendental

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:57c70fd9-390f-f1f5-d7e0-90e23a749e50",
  "kind": "theorem",
  "lexical_name": "eventual_sofic_irrational_and_conditional_transcendental",
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
  "slug": "eventual-sofic-irrational-and-conditional-transcendental--d74616c2061c95cd6490d151",
  "source": {
    "blob": "98ce2d34115ac5326da6e79a8de75bb2dc645442",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 190,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/ZeroOrdinateSoficLanguageCriterion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d74616c2061c95cd6490d1512f82d2c4d54d572cb469ecc656d324da67c35a11",
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

Occurrence: `result:57c70fd9-390f-f1f5-d7e0-90e23a749e50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eventual_sofic_irrational_and_conditional_transcendental
    (trace : ℂ → ℕ → Bool)
    (S : ZetaEventualSoficSuppliers trace)
    (hCritical : ZetaCriticalPlacement) :
    ∀ z, ActualZetaZero z →
      (¬ RationalReal (zetaHeight z)) ∧
      (z.re = (1 : ℝ) / 2) ∧
      (¬ AlgebraicReal (zetaHeight z)) := by
  intro z hz
  have hrat : ¬ RationalReal (zetaHeight z) :=
    irrational_of_eventual_language_obstruction trace
      S.rationalEventually S.noEventuallySoficZero z hz
  have hline : z.re = (1 : ℝ) / 2 := hCritical z hz
  have halg : ¬ AlgebraicReal (zetaHeight z) := by
    intro h
    exact S.noEventuallySoficZero z hz
      (S.algebraicOnLineEventually z hz hline h)
  exact ⟨hrat, hline, halg⟩

/-- The entire proposed chain is now typed at the ACTUAL zeta
predicate: source z -> dynamic refinement -> finite labeled graph path
-> complex-linear spectral orbit -> full label trace -> z.im readout.
The arithmetic proof still requires independently constructing
eventual exact-language presentations and non-eventual-soficity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/ZeroOrdinateSoficLanguageCriterion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/ZeroOrdinateSoficLanguageCriterion.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98ce2d34115ac5326da6e79a8de75bb2dc645442` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
