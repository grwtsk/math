# coprodCon

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:86995d10a3ae6b84bd61b5145f73d666621773dae55f3d10acad72e7dfe6c20e",
  "kind": "def",
  "lexical_name": "coprodCon",
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
  "slug": "coprodcon--05f9b74c51c1bbf3ec440778",
  "source": {
    "blob": "89b6a0a71b0943a43266b42849e9d28bef10283b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 140,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant8d1852bf12eb6e7500f720378b396b84670850f04be8b8ff3d385a935165e6d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:05f9b74c51c1bbf3ec4407788214e56f35cd1c5cf789e3eb24599e1c2bc97455",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant8d1852bf12eb6e7500f720378b396b84670850f04be8b8ff3d385a935165e6d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:86995d10a3ae6b84bd61b5145f73d666621773dae55f3d10acad72e7dfe6c20e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coprodCon (M N : Type*) [MulOneClass M] [MulOneClass N] : Con (FreeMonoid (M ⊕ N)) :=
  sInf {c |
    (∀ x y : M, c (of (Sum.inl (x * y))) (of (Sum.inl x) * of (Sum.inl y)))
    ∧ (∀ x y : N, c (of (Sum.inr (x * y))) (of (Sum.inr x) * of (Sum.inr y)))
    ∧ c (of <| Sum.inl 1) 1 ∧ c (of <| Sum.inr 1) 1}

/-- Coproduct of two monoids or groups. -/
@[to_additive "Coproduct of two additive monoids or groups."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant8d1852bf12eb6e7500f720378b396b84670850f04be8b8ff3d385a935165e6d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant8d1852bf12eb6e7500f720378b396b84670850f04be8b8ff3d385a935165e6d5.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89b6a0a71b0943a43266b42849e9d28bef10283b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
