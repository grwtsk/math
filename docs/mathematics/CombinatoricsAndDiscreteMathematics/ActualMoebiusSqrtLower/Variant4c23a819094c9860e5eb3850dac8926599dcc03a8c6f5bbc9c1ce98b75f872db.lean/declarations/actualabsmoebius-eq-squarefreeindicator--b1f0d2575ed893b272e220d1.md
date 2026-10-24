# actualAbsMoebius_eq_squarefreeIndicator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a397d417-c90b-b634-c4d8-722c7754a96b",
  "kind": "theorem",
  "lexical_name": "actualAbsMoebius_eq_squarefreeIndicator",
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
  "slug": "actualabsmoebius-eq-squarefreeindicator--b1f0d2575ed893b272e220d1",
  "source": {
    "blob": "87b831ee0a8ae456bbd929d97205358010f68b8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 25,
    "line": 20,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ActualMoebiusSqrtLower/Variant4c23a819094c9860e5eb3850dac8926599dcc03a8c6f5bbc9c1ce98b75f872db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b1f0d2575ed893b272e220d1bb165e731d2e612e98b66ef7830a04e55f80f800",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ActualMoebiusSqrtLower/Variant4c23a819094c9860e5eb3850dac8926599dcc03a8c6f5bbc9c1ce98b75f872db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a397d417-c90b-b634-c4d8-722c7754a96b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–25.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualAbsMoebius_eq_squarefreeIndicator (n : ℕ) :
    |realMoebius n| = if Squarefree n then (1 : ℝ) else 0 := by
  unfold realMoebius
  exact_mod_cast (ArithmeticFunction.abs_moebius (n := n))

/-- Every actual non-squarefree positive integer is covered by a retained square divisor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ActualMoebiusSqrtLower/Variant4c23a819094c9860e5eb3850dac8926599dcc03a8c6f5bbc9c1ce98b75f872db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ActualMoebiusSqrtLower/Variant4c23a819094c9860e5eb3850dac8926599dcc03a8c6f5bbc9c1ce98b75f872db.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87b831ee0a8ae456bbd929d97205358010f68b8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
