# Fan.IsLimit.mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0ca49c22c50e991308e53488470637bbd3886245b471bc2d0edd344a62cce05d",
  "kind": "def",
  "lexical_name": "Fan.IsLimit.mk",
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
  "slug": "fan-islimit-mk--79f37496c98fad7f1851a149",
  "source": {
    "blob": "7fc68ad1cd44a9e31166371073f80e6f2f493b0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 95,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantb9651ff9397cf58446f5c98353449254018c6d4b69bf83ced693ce1df3e2d541.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:79f37496c98fad7f1851a149b12f684b58eb434c85fc200bc6742ff6f4c09b3e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantb9651ff9397cf58446f5c98353449254018c6d4b69bf83ced693ce1df3e2d541.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0ca49c22c50e991308e53488470637bbd3886245b471bc2d0edd344a62cce05d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Fan.IsLimit.mk {f : β → C} (t : Fan f) (lift : ∀ s : Fan f, s.pt ⟶ t.pt)
    (fac : ∀ (s : Fan f) (j : β), lift s ≫ t.proj j = s.proj j := by cat_disch)
    (uniq : ∀ (s : Fan f) (m : s.pt ⟶ t.pt) (_ : ∀ j : β, m ≫ t.proj j = s.proj j),
      m = lift s := by cat_disch) :
    IsLimit t :=
  { lift }

@[deprecated (since := "2026-05-19")]
alias mkFanLimit := Fan.IsLimit.mk

/-- Constructor for morphisms to the point of a limit fan. -/
@[to_dual desc
/-- Constructor for morphisms from the point of a colimit cofan. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantb9651ff9397cf58446f5c98353449254018c6d4b69bf83ced693ce1df3e2d541.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantb9651ff9397cf58446f5c98353449254018c6d4b69bf83ced693ce1df3e2d541.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fc68ad1cd44a9e31166371073f80e6f2f493b0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
