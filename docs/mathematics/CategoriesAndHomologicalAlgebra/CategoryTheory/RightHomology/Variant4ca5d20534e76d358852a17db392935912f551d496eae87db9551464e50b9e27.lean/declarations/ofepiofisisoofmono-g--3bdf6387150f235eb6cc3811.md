# ofEpiOfIsIsoOfMono'_g'_τ₃

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:68b12dc0-f27f-3ddc-711d-6d2b4f12b71d",
  "kind": "lemma",
  "lexical_name": "ofEpiOfIsIsoOfMono'_g'_τ₃",
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
  "slug": "ofepiofisisoofmono-g--3bdf6387150f235eb6cc3811",
  "source": {
    "blob": "4fcb7659442823c717f16e4ac90ce532df05a6f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1132,
    "line": 1125,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightHomology/Variant4ca5d20534e76d358852a17db392935912f551d496eae87db9551464e50b9e27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3bdf6387150f235eb6cc3811b9bd5b1cb6b27da9434db4bbb26d8e24be9673be",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightHomology/Variant4ca5d20534e76d358852a17db392935912f551d496eae87db9551464e50b9e27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68b12dc0-f27f-3ddc-711d-6d2b4f12b71d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1125–1132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma ofEpiOfIsIsoOfMono'_g'_τ₃ : (ofEpiOfIsIsoOfMono' φ h).g' ≫ φ.τ₃ = h.g' := by
  rw [← cancel_epi (ofEpiOfIsIsoOfMono' φ h).p, p_g'_assoc, ofEpiOfIsIsoOfMono'_p,
    assoc, p_g', φ.comm₂₃]

end

/-- If `e : S₁ ≅ S₂` is an isomorphism of short complexes and `h₁ : RightomologyData S₁`,
this is the right homology data for `S₂` deduced from the isomorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightHomology/Variant4ca5d20534e76d358852a17db392935912f551d496eae87db9551464e50b9e27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightHomology/Variant4ca5d20534e76d358852a17db392935912f551d496eae87db9551464e50b9e27.lean#L1125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4fcb7659442823c717f16e4ac90ce532df05a6f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
