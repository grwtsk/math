# presieve₀_mem_of_iso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6e00525e-daeb-3dc7-fcfc-9f57a6eedd7d",
  "kind": "lemma",
  "lexical_name": "presieve₀_mem_of_iso",
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
  "slug": "presieve-mem-of-iso--e2b5eb9e36bf057c63cf05b2",
  "source": {
    "blob": "cd9c26e21a5063af78a6c3abe6ee69a13dd2444b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 866,
    "line": 855,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant1d32f3371e1930649d3129368bb57884b613f114d32305a998702e2c85bf46c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2b5eb9e36bf057c63cf05b245d4ef86f0c427433a47067c9173262ef3c0b37c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant1d32f3371e1930649d3129368bb57884b613f114d32305a998702e2c85bf46c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e00525e-daeb-3dc7-fcfc-9f57a6eedd7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 855–866.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma presieve₀_mem_of_iso [J.RespectsIso] {S : C} {E : J.ZeroHypercover S}
    {F : PreZeroHypercover.{w} S} (e : E.toPreZeroHypercover ≅ F) :
    F.presieve₀ ∈ J S :=
  E.toPreZeroHypercover.presieve₀_mem_of_iso e E.mem₀

/--
A `w`-`0`-hypercover `E` is `w'`-small if there exists an indexing type `ι` in `Type w'` and a
restriction map `ι → E.I₀` such that the restriction of `E` to `ι` is still covering.

Note: This is weaker than `E.I₀` being `w'`-small. For example, every Zariski cover of
`X : Scheme.{u}` is `u`-small, because `X` itself suffices as indexing type.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant1d32f3371e1930649d3129368bb57884b613f114d32305a998702e2c85bf46c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant1d32f3371e1930649d3129368bb57884b613f114d32305a998702e2c85bf46c3.lean#L855).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd9c26e21a5063af78a6c3abe6ee69a13dd2444b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
