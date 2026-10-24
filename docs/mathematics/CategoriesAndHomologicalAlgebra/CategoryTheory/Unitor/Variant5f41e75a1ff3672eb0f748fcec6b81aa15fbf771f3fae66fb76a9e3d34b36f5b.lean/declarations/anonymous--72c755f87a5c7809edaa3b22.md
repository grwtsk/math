# ρ₁₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:158ac8185a9f5afb16081e478e6e5b1cd392de3b702d2cdea1839411389703fa",
  "kind": "def",
  "lexical_name": "ρ₁₂",
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
  "slug": "anonymous--72c755f87a5c7809edaa3b22",
  "source": {
    "blob": "1df233085203accb0ce7483f7e7717bbee037dd2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 305,
    "line": 298,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant5f41e75a1ff3672eb0f748fcec6b81aa15fbf771f3fae66fb76a9e3d34b36f5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:72c755f87a5c7809edaa3b2243a85f69cbd187079556c0c8f38bf061a3718f74",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant5f41e75a1ff3672eb0f748fcec6b81aa15fbf771f3fae66fb76a9e3d34b36f5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:158ac8185a9f5afb16081e478e6e5b1cd392de3b702d2cdea1839411389703fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 298–305.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ρ₁₂ : BifunctorComp₁₂IndexData r where
  I₁₂ := I₁
  p := τ.p₁₂
  q := π
  hpq := τ.hp₁₂

/-- The `BifunctorComp₂₃IndexData r` attached to a `TriangleIndexData r π`. -/
@[reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant5f41e75a1ff3672eb0f748fcec6b81aa15fbf771f3fae66fb76a9e3d34b36f5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant5f41e75a1ff3672eb0f748fcec6b81aa15fbf771f3fae66fb76a9e3d34b36f5b.lean#L298).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1df233085203accb0ce7483f7e7717bbee037dd2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
