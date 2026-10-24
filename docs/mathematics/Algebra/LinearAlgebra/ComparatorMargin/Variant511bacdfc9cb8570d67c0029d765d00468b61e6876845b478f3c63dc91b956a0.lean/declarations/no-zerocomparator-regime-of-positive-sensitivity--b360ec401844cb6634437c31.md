# no_zeroComparator_regime_of_positive_sensitivity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3f57dadb-dcef-66e0-2b97-d523b5fa3d62",
  "kind": "theorem",
  "lexical_name": "no_zeroComparator_regime_of_positive_sensitivity",
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
  "slug": "no-zerocomparator-regime-of-positive-sensitivity--b360ec401844cb6634437c31",
  "source": {
    "blob": "479590a02b6533998207c1d9cf66705054bbf084",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 190,
    "path": "GRWTSK/Algebra/LinearAlgebra/ComparatorMargin/Variant511bacdfc9cb8570d67c0029d765d00468b61e6876845b478f3c63dc91b956a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b360ec401844cb6634437c31cca14b1f6d86ac6317d3b6fa96d7a86e8d5aa4a2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ComparatorMargin/Variant511bacdfc9cb8570d67c0029d765d00468b61e6876845b478f3c63dc91b956a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f57dadb-dcef-66e0-2b97-d523b5fa3d62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem no_zeroComparator_regime_of_positive_sensitivity
    (I : LinearIntervention X V)
    (hexists : ∃ x : X, 0 < C.interventionSensitivity I x) :
    ¬ C.ComparatorMarginRegime
        (LinearComparator.zero : LinearComparator V) I := by
  intro R
  rcases hexists with ⟨x, hx⟩
  have hgap :
      0 < (LinearComparator.zero : LinearComparator V).comparatorGap I x :=
    R.positive_sensitivity_implies_positive_gap x hx
  rw [LinearComparator.zero_comparatorGap] at hgap
  exact (lt_irrefl 0) hgap

end ComparatorMarginRegime

end PositiveCommutingInvolutions

end FormalResearch.PositiveAtlas
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ComparatorMargin/Variant511bacdfc9cb8570d67c0029d765d00468b61e6876845b478f3c63dc91b956a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ComparatorMargin/Variant511bacdfc9cb8570d67c0029d765d00468b61e6876845b478f3c63dc91b956a0.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `479590a02b6533998207c1d9cf66705054bbf084` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
