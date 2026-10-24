# pushout.condition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:78bda3fe-b1e5-46e6-b4ae-5cb3127c0575",
  "kind": "theorem",
  "lexical_name": "pushout.condition",
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
  "slug": "pushout-condition--00a93dce5948f605407134ab",
  "source": {
    "blob": "74cb276aab33d56df808eabe5c1eaece70f49e80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 207,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasPullback/Variant6affef4ee82c914d41ccf66365e2f0fb0693eff4d74fae4cfebf0ea966adf3b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00a93dce5948f605407134ab7649b63c0f1b24530c6e27bce1c5cf3e7756152a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasPullback/Variant6affef4ee82c914d41ccf66365e2f0fb0693eff4d74fae4cfebf0ea966adf3b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:78bda3fe-b1e5-46e6-b4ae-5cb3127c0575`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pushout.condition {X Y Z : C} {f : X ⟶ Y} {g : X ⟶ Z} [HasPushout f g] :
    f ≫ (pushout.inl f g) = g ≫ pushout.inr _ _ :=
  PushoutCocone.condition _

/-- Two morphisms into a pullback are equal if their compositions with the pullback morphisms are
    equal -/
@[ext 1100]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasPullback/Variant6affef4ee82c914d41ccf66365e2f0fb0693eff4d74fae4cfebf0ea966adf3b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasPullback/Variant6affef4ee82c914d41ccf66365e2f0fb0693eff4d74fae4cfebf0ea966adf3b7.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74cb276aab33d56df808eabe5c1eaece70f49e80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
