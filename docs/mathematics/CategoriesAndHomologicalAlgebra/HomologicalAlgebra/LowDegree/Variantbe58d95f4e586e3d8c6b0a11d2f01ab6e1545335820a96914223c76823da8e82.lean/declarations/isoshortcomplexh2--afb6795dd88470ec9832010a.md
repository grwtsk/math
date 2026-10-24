# isoShortComplexH2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c66663d7cb1b5c7289a08beda39c627dd73e706ec59251004942711ea3561da3",
  "kind": "def",
  "lexical_name": "isoShortComplexH2",
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
  "slug": "isoshortcomplexh2--afb6795dd88470ec9832010a",
  "source": {
    "blob": "8dd456866147588b348a0b16b5ea928e6ab81586",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 811,
    "line": 806,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/LowDegree/Variantbe58d95f4e586e3d8c6b0a11d2f01ab6e1545335820a96914223c76823da8e82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:afb6795dd88470ec9832010a5c89d9cf92293de77a29bcc494582c4ef143e511",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/LowDegree/Variantbe58d95f4e586e3d8c6b0a11d2f01ab6e1545335820a96914223c76823da8e82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c66663d7cb1b5c7289a08beda39c627dd73e706ec59251004942711ea3561da3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 806–811.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isoShortComplexH2 : (inhomogeneousChains A).sc 2 ≅ shortComplexH2 A :=
  (inhomogeneousChains A).isoSc' 3 2 1 (by simp) (by simp) ≪≫
    isoMk (chainsIso₃ A) (chainsIso₂ A) (chainsIso₁ A) (comp_d₃₂_eq A) (comp_d₂₁_eq A)

/-- The 2-cycles of the complex of inhomogeneous chains of `A` are isomorphic to
`cycles₂ A`, which is a simpler type. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/LowDegree/Variantbe58d95f4e586e3d8c6b0a11d2f01ab6e1545335820a96914223c76823da8e82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/LowDegree/Variantbe58d95f4e586e3d8c6b0a11d2f01ab6e1545335820a96914223c76823da8e82.lean#L806).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8dd456866147588b348a0b16b5ea928e6ab81586` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
