# cokernelSequenceCyclesE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1c8cb32dc2721133852ec6c786698076e56504892ace5dc82a46a209b6fbeffd",
  "kind": "def",
  "lexical_name": "cokernelSequenceCyclesE",
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
  "slug": "cokernelsequencecyclese--f1a959bc786de25623a6be0b",
  "source": {
    "blob": "38e5039fe04a8009e8f6cf3db2214f912b9023f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 255,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Page/Variant53ba1a8f46c69a8e5106e2906f53f686bd904dbb4c9296359d89e5a6e0f3a0c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f1a959bc786de25623a6be0bff781e1fb0ebbfe6b81dff802e2da9a7c1fb74e4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Page/Variant53ba1a8f46c69a8e5106e2906f53f686bd904dbb4c9296359d89e5a6e0f3a0c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1c8cb32dc2721133852ec6c786698076e56504892ace5dc82a46a209b6fbeffd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def cokernelSequenceCyclesE
    (hn₁ : n₀ + 1 = n₁ := by lia) (hn₂ : n₁ + 1 = n₂ := by lia) :
    ShortComplex C :=
  ShortComplex.mk _ _ (X.δToCycles_πE f₁ f₂ f₃ n₀ n₁ n₂ hn₁ hn₂)

set_option backward.isDefEq.respectTransparency false in
/-- The short complex `H^{n-1}(f₃) ⟶ Z^n(f₁, f₂) ⟶ E^n(f₁, f₂, f₃)` identifies
to the cokernel sequence of the definition of the homology of the short
complex `shortComplex` as a cokernel of `ShortComplex.toCycles`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Page/Variant53ba1a8f46c69a8e5106e2906f53f686bd904dbb4c9296359d89e5a6e0f3a0c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Page/Variant53ba1a8f46c69a8e5106e2906f53f686bd904dbb4c9296359d89e5a6e0f3a0c4.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38e5039fe04a8009e8f6cf3db2214f912b9023f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
