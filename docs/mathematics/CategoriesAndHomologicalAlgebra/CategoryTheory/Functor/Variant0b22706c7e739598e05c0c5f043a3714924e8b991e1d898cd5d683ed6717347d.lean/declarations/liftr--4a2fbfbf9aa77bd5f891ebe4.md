# Liftr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e62cf61ab4a085dd9200503701e3a43e5d0ae61d0a24636b2cd12bb2ab2977fc",
  "kind": "def",
  "lexical_name": "Liftr",
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
  "slug": "liftr--4a2fbfbf9aa77bd5f891ebe4",
  "source": {
    "blob": "74c57d89e7c41a22b7afda60d837f3ed4e325f3f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 252,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant0b22706c7e739598e05c0c5f043a3714924e8b991e1d898cd5d683ed6717347d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4a2fbfbf9aa77bd5f891ebe4d564bb0eec53726ab8c5f2b5800866a9887b5e72",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant0b22706c7e739598e05c0c5f043a3714924e8b991e1d898cd5d683ed6717347d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e62cf61ab4a085dd9200503701e3a43e5d0ae61d0a24636b2cd12bb2ab2977fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Liftr {α : Type u} (r : α → α → Prop) (x y : F α) : Prop :=
  ∃ u : F { p : α × α // r p.fst p.snd },
    (fun t : { p : α × α // r p.fst p.snd } => t.val.fst) <$> u = x ∧
      (fun t : { p : α × α // r p.fst p.snd } => t.val.snd) <$> u = y

/-- If we consider `x : F α` to, in some sense, contain values of type `α`, then
`supp x` is the set of values of type `α` that `x` contains. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant0b22706c7e739598e05c0c5f043a3714924e8b991e1d898cd5d683ed6717347d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant0b22706c7e739598e05c0c5f043a3714924e8b991e1d898cd5d683ed6717347d.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74c57d89e7c41a22b7afda60d837f3ed4e325f3f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
