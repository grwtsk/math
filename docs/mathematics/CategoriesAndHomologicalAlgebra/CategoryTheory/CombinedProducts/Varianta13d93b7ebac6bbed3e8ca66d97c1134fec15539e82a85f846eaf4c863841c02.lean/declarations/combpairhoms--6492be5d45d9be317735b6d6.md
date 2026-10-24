# combPairHoms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:526312aecf00c40509b6a0433e21852a13ca1bd1683ac597e3880c6cf584305e",
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
  "slug": "combpairhoms--6492be5d45d9be317735b6d6",
  "source": {
    "blob": "dc56fde04af48ea860af9424cc094aca5d7e50fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 41,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CombinedProducts/Varianta13d93b7ebac6bbed3e8ca66d97c1134fec15539e82a85f846eaf4c863841c02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6492be5d45d9be317735b6d627741af3650edcb6fc116b00ec63c0fc9b89951b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CombinedProducts/Varianta13d93b7ebac6bbed3e8ca66d97c1134fec15539e82a85f846eaf4c863841c02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:526312aecf00c40509b6a0433e21852a13ca1bd1683ac597e3880c6cf584305e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev combPairHoms : (i : ι₁ ⊕ ι₂) → bc.pt ⟶ Sum.elim f₁ f₂ i
  | .inl a => bc.fst ≫ c₁.proj a
  | .inr a => bc.snd ≫ c₂.proj a

variable {c₁ c₂ bc}

set_option backward.isDefEq.respectTransparency false in
/-- If `c₁` and `c₂` are limit fans and `bc` is a limit binary fan on their cone
points, then the fan constructed from `combPairHoms` is a limit cone. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CombinedProducts/Varianta13d93b7ebac6bbed3e8ca66d97c1134fec15539e82a85f846eaf4c863841c02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CombinedProducts/Varianta13d93b7ebac6bbed3e8ca66d97c1134fec15539e82a85f846eaf4c863841c02.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc56fde04af48ea860af9424cc094aca5d7e50fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
