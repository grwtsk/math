# combPairHoms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dfe282a4831c2d69512c275885dc8e220294fde9434c63bc4cc1e3991a9572ba",
  "kind": "abbrev",
  "lexical_name": "combPairHoms",
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
  "slug": "combpairhoms--f9d58f29bff60817ef7b947d",
  "source": {
    "blob": "644d68abced4024effca5279937e7401496aec2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 85,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CombinedProducts/Variantd386c450c179f8c353dfec4ce16540172a7030f5482f8d3cdc6ff80f4fe92c3f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f9d58f29bff60817ef7b947d121a95b1051fdd06ec96a180e83fd99fa55e03cc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CombinedProducts/Variantd386c450c179f8c353dfec4ce16540172a7030f5482f8d3cdc6ff80f4fe92c3f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dfe282a4831c2d69512c275885dc8e220294fde9434c63bc4cc1e3991a9572ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev combPairHoms : (i : ι₁ ⊕ ι₂) → Sum.elim f₁ f₂ i ⟶ bc.pt
  | .inl a => c₁.inj a ≫ bc.inl
  | .inr a => c₂.inj a ≫ bc.inr

variable {c₁ c₂ bc}

set_option backward.isDefEq.respectTransparency false in
/-- If `c₁` and `c₂` are colimit cofans and `bc` is a colimit binary cofan on their cocone
points, then the cofan constructed from `combPairHoms` is a colimit cocone. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CombinedProducts/Variantd386c450c179f8c353dfec4ce16540172a7030f5482f8d3cdc6ff80f4fe92c3f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CombinedProducts/Variantd386c450c179f8c353dfec4ce16540172a7030f5482f8d3cdc6ff80f4fe92c3f.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `644d68abced4024effca5279937e7401496aec2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
