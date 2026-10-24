# adhesive_of_preserves_and_reflects_isomorphism

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f9438a3b-3ece-d6c3-cdf2-61ce6093648f",
  "kind": "theorem",
  "lexical_name": "adhesive_of_preserves_and_reflects_isomorphism",
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
  "slug": "adhesive-of-preserves-and-reflects-isomorphism--9a339e4f1667baa1e05c654a",
  "source": {
    "blob": "d05c6c30b1f0971a74a2a01da21295d6d838be43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 517,
    "line": 506,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantff1ec36fe4d79edba7932bde87a6d7e895ecfbbbe592c3145012e185e86376bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a339e4f1667baa1e05c654af0f019a1254e89826f64db712db2c96ba9a1ce44",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantff1ec36fe4d79edba7932bde87a6d7e895ecfbbbe592c3145012e185e86376bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9438a3b-3ece-d6c3-cdf2-61ce6093648f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 506–517.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem adhesive_of_preserves_and_reflects_isomorphism (F : C ⥤ D)
    [Adhesive D] [HasPullbacks C] [HasPushouts C]
    [PreservesLimitsOfShape WalkingCospan F]
    [PreservesColimitsOfShape WalkingSpan F]
    [F.ReflectsIsomorphisms] :
    Adhesive C := by
  have : ReflectsLimitsOfShape WalkingCospan F :=
    reflectsLimitsOfShape_of_reflectsIsomorphisms
  have : ReflectsColimitsOfShape WalkingSpan F :=
    reflectsColimitsOfShape_of_reflectsIsomorphisms
  exact adhesive_of_preserves_and_reflects F

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantff1ec36fe4d79edba7932bde87a6d7e895ecfbbbe592c3145012e185e86376bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantff1ec36fe4d79edba7932bde87a6d7e895ecfbbbe592c3145012e185e86376bf.lean#L506).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d05c6c30b1f0971a74a2a01da21295d6d838be43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
