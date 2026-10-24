# fintypeHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:71f282da21369017890a8fa9fcf92a67f30bdf33a190612db15e7f5aeff20d39",
  "kind": "instance",
  "lexical_name": "fintypeHom",
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
  "slug": "fintypehom--7cc9f255b3e81e6b9d92671c",
  "source": {
    "blob": "bc1a78ed7f76212449ab9d5b4d86d799c4ac349b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 170,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant1a34a7597d9cccfb8d25f43654f84be0bf14f2c1c71696bf2558ebdf16148ba1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7cc9f255b3e81e6b9d92671c43e4a4e95f2c80e0e037aacd2cf00c2f297b7244",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant1a34a7597d9cccfb8d25f43654f84be0bf14f2c1c71696bf2558ebdf16148ba1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:71f282da21369017890a8fa9fcf92a67f30bdf33a190612db15e7f5aeff20d39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance fintypeHom (j j' : WidePullbackShape J) : Fintype (j ⟶ j') where
  elems := by
    obtain - | j' := j'
    · obtain - | j := j
      · exact {Hom.id none}
      · exact {Hom.term j}
    · by_cases h : some j' = j
      · rw [h]
        exact {Hom.id j}
      · exact ∅
  complete := by
    rintro (_ | _)
    · cases j <;> simp
    · simp

end WidePullbackShape

namespace WidePushoutShape

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant1a34a7597d9cccfb8d25f43654f84be0bf14f2c1c71696bf2558ebdf16148ba1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant1a34a7597d9cccfb8d25f43654f84be0bf14f2c1c71696bf2558ebdf16148ba1.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc1a78ed7f76212449ab9d5b4d86d799c4ac349b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
