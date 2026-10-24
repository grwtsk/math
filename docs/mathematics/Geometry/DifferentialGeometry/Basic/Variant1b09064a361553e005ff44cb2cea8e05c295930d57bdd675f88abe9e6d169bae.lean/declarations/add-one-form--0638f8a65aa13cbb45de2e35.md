# add_one_form

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:21185cb4-642a-94a3-eca9-25addad72d2c",
  "kind": "lemma",
  "lexical_name": "add_one_form",
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
  "slug": "add-one-form--0638f8a65aa13cbb45de2e35",
  "source": {
    "blob": "ba2001d70aecd37f77d8576635be665896eff63e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 317,
    "line": 304,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Basic/Variant1b09064a361553e005ff44cb2cea8e05c295930d57bdd675f88abe9e6d169bae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0638f8a65aa13cbb45de2e35e6e8aa9cbe48769469c3819c326747f658e863a1",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Basic/Variant1b09064a361553e005ff44cb2cea8e05c295930d57bdd675f88abe9e6d169bae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21185cb4-642a-94a3-eca9-25addad72d2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 304–317.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma add_one_form (hcov : IsCovariantDerivativeOn F cov s)
    (A : Π x : M, V x →L[𝕜] TangentSpace I x →L[𝕜] V x) :
    IsCovariantDerivativeOn F (fun σ x ↦ cov σ x + A x (σ x)) s where
  add hσ hσ' hx := by
    simp [hcov.add hσ hσ']
    abel
  leibniz hσ hg hx := by
    simp [hcov.leibniz hσ hg]
    module

section difference

/-- The difference of two covariant derivatives, as a function `Γ(V) → Γ(Hom(TM, V))`.
Future lemmas will upgrade this to a one-form taking values in the endomorphisms of `V`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Basic/Variant1b09064a361553e005ff44cb2cea8e05c295930d57bdd675f88abe9e6d169bae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Basic/Variant1b09064a361553e005ff44cb2cea8e05c295930d57bdd675f88abe9e6d169bae.lean#L304).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba2001d70aecd37f77d8576635be665896eff63e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
