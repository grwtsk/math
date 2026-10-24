# coinvariantsEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a376abbdbcf53c281b3052bdd8e0f0bc901c0b73d4f55c5496ac2ac0284392a3",
  "kind": "def",
  "lexical_name": "coinvariantsEquiv",
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
  "slug": "coinvariantsequiv--d486ec79a1adca87814b94cb",
  "source": {
    "blob": "a2fa10115db468c8bad3cd789c20a3049728dfcd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 69,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/FiniteCyclic/Variant8b1225ff9dd4f372fde232c59d5e6bc8e4cd95194f5d41228c5ff9b6a7c71fc2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d486ec79a1adca87814b94cb1fd31b4f11ab51d0d4db8b4140d880250a1a7251",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/FiniteCyclic/Variant8b1225ff9dd4f372fde232c59d5e6bc8e4cd95194f5d41228c5ff9b6a7c71fc2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a376abbdbcf53c281b3052bdd8e0f0bc901c0b73d4f55c5496ac2ac0284392a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def coinvariantsEquiv (hg : ∀ x, x ∈ Subgroup.zpowers g) :
    ρ.Coinvariants ≃ₗ[k] (_ ⧸ LinearMap.range (ρ g - LinearMap.id)) :=
  Submodule.quotEquivOfEq _ _ (coinvariantsKer_eq_range ρ g hg)

variable [Finite G] in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/FiniteCyclic/Variant8b1225ff9dd4f372fde232c59d5e6bc8e4cd95194f5d41228c5ff9b6a7c71fc2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/FiniteCyclic/Variant8b1225ff9dd4f372fde232c59d5e6bc8e4cd95194f5d41228c5ff9b6a7c71fc2.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2fa10115db468c8bad3cd789c20a3049728dfcd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
