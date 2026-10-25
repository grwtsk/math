# IsUnit.mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7afddb31-382a-ad97-8b46-c29afaf52d9e",
  "kind": "theorem",
  "lexical_name": "IsUnit.mul",
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
  "slug": "isunit-mul--ff212da111b1ce945973c521",
  "source": {
    "blob": "d1e6f0ca0aa1726c564c4812e096fc5896550357",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 676,
    "line": 668,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Units/Variant0413b02ef9f0b9304e53713d9bac9adccbd7b0444809a538d9202ec3a83db038.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff212da111b1ce945973c521273f14cdc5273f11cdf3de5b2899b665a55ac438",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Units/Variant0413b02ef9f0b9304e53713d9bac9adccbd7b0444809a538d9202ec3a83db038.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7afddb31-382a-ad97-8b46-c29afaf52d9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 668–676.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsUnit.mul [Monoid M] {x y : M} : IsUnit x → IsUnit y → IsUnit (x * y) := by
  rintro ⟨x, rfl⟩ ⟨y, rfl⟩
  exact ⟨x * y, Units.val_mul _ _⟩
#align is_unit.mul IsUnit.mul
#align is_add_unit.add IsAddUnit.add

/-- Multiplication by a `u : Mˣ` on the right doesn't affect `IsUnit`. -/
@[to_additive (attr := simp)
"Addition of a `u : AddUnits M` on the right doesn't affect `IsAddUnit`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Units/Variant0413b02ef9f0b9304e53713d9bac9adccbd7b0444809a538d9202ec3a83db038.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Units/Variant0413b02ef9f0b9304e53713d9bac9adccbd7b0444809a538d9202ec3a83db038.lean#L668).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1e6f0ca0aa1726c564c4812e096fc5896550357` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
