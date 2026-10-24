# groupHomologyπOdd_eq_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cadd1b17-215a-e446-c883-aa2c9c1d547f",
  "kind": "lemma",
  "lexical_name": "groupHomologyπOdd_eq_zero_iff",
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
  "slug": "grouphomology-odd-eq-zero-iff--eece523f78df824b8024b23b",
  "source": {
    "blob": "fc06230dd9825c46f7e26a4eb0730207fd0037ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 147,
    "path": "GRWTSK/Algebra/LinearAlgebra/FiniteCyclic/Variant5af93cf174c5ef7b2ccc11cfa1981336ab55dc8828e6e2a67df4b15ec7aee56a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eece523f78df824b8024b23ba6cc187222b932dbb16a8a376e55eaaeefe342df",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FiniteCyclic/Variant5af93cf174c5ef7b2ccc11cfa1981336ab55dc8828e6e2a67df4b15ec7aee56a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cadd1b17-215a-e446-c883-aa2c9c1d547f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma groupHomologyπOdd_eq_zero_iff (hg : ∀ x, x ∈ Subgroup.zpowers g)
    (i : ℕ) (hi : Odd i) (x : LinearMap.ker (applyAsHom A g - 𝟙 A).hom.toLinearMap) :
    groupHomologyπOdd A g hg i hi x = 0 ↔ x.1 ∈ LinearMap.range A.ρ.norm := by
  simp [groupHomologyπOdd, map_eq_zero_iff _ ((ModuleCat.mono_iff_injective _).1 inferInstance),
    ShortComplex.moduleCatToCycles, -LinearMap.mem_range, Rep.norm, LinearMap.range_codRestrict]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FiniteCyclic/Variant5af93cf174c5ef7b2ccc11cfa1981336ab55dc8828e6e2a67df4b15ec7aee56a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FiniteCyclic/Variant5af93cf174c5ef7b2ccc11cfa1981336ab55dc8828e6e2a67df4b15ec7aee56a.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc06230dd9825c46f7e26a4eb0730207fd0037ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
