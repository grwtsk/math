# mk_lt_mk_of_comm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c34aa8e9-24aa-f77b-a10c-14c088164908",
  "kind": "lemma",
  "lexical_name": "mk_lt_mk_of_comm",
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
  "slug": "mk-lt-mk-of-comm--53b5e15c94c03e3824dd4f89",
  "source": {
    "blob": "98f39721c7365bc4cd6498f33ea3f49fbc031f90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 457,
    "line": 448,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant868f8b9d159d5e6c2deec37c2ed098cd11ac080c6212c759eaca2228e6e4c254.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53b5e15c94c03e3824dd4f89b3b72ca9315151a0dc5bc5718313d67b13d3c6b6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant868f8b9d159d5e6c2deec37c2ed098cd11ac080c6212c759eaca2228e6e4c254.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c34aa8e9-24aa-f77b-a10c-14c088164908`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 448–457.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mk_lt_mk_of_comm {X A₁ A₂ : C} {i₁ : A₁ ⟶ X} {i₂ : A₂ ⟶ X} [Mono i₁] [Mono i₂]
    (f : A₁ ⟶ A₂) (fac : f ≫ i₂ = i₁) (hf : ¬ IsIso f) :
    Subobject.mk i₁ < Subobject.mk i₂ := by
  obtain _ | h := (mk_le_mk_of_comm _ fac).lt_or_eq
  · assumption
  · exfalso
    apply hf
    convert (isoOfMkEqMk i₁ i₂ h).isIso_hom
    rw [← cancel_mono i₂, isoOfMkEqMk_hom, ofMkLEMk_comp, fac]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant868f8b9d159d5e6c2deec37c2ed098cd11ac080c6212c759eaca2228e6e4c254.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant868f8b9d159d5e6c2deec37c2ed098cd11ac080c6212c759eaca2228e6e4c254.lean#L448).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98f39721c7365bc4cd6498f33ea3f49fbc031f90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
