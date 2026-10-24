# jointlyReflectIsomorphisms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:64aeb5fe-90a1-e3ff-12b1-9c1b72a77fe7",
  "kind": "lemma",
  "lexical_name": "jointlyReflectIsomorphisms",
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
  "slug": "jointlyreflectisomorphisms--0ad34ff4fb44be9904e82122",
  "source": {
    "blob": "c2443fcc5ef982dece8a6ae189b59b698facfca1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 82,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Conservative/Variant505cfd82d53b73eb6cc019e018dac6aba0dcc5a075f4f18b099321489e4431a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ad34ff4fb44be9904e821224187df83459ae59c1d385691e0408a530b05479f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Conservative/Variant505cfd82d53b73eb6cc019e018dac6aba0dcc5a075f4f18b099321489e4431a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64aeb5fe-90a1-e3ff-12b1-9c1b72a77fe7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma jointlyReflectIsomorphisms :
    JointlyReflectIsomorphisms
      (fun (Φ : P.FullSubcategory) ↦ Φ.obj.sheafFiber (A := A)) where
  isIso {K L} f _ := by
    rw [← isIso_iff_of_reflects_iso _ (sheafCompose J (forget A)),
      hP.jointlyReflectIsomorphisms_type.isIso_iff]
    exact fun Φ ↦ ((MorphismProperty.isomorphisms _).arrow_mk_iso_iff
      (((Functor.mapArrowFunctor _ _).mapIso
        (Φ.obj.sheafFiberCompIso (forget A))).app (Arrow.mk f))).2
          (inferInstanceAs (IsIso ((forget A).map (Φ.obj.sheafFiber.map f))))

include hP hJ in
@[stacks 00YL "(1)"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Conservative/Variant505cfd82d53b73eb6cc019e018dac6aba0dcc5a075f4f18b099321489e4431a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Conservative/Variant505cfd82d53b73eb6cc019e018dac6aba0dcc5a075f4f18b099321489e4431a0.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2443fcc5ef982dece8a6ae189b59b698facfca1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
