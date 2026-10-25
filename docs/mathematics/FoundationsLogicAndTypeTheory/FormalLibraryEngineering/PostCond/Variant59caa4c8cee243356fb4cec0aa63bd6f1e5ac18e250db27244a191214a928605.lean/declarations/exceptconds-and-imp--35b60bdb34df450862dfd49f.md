# ExceptConds.and_imp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bcd0b065-a480-a3d2-ec28-b6af039f0a2d",
  "kind": "theorem",
  "lexical_name": "ExceptConds.and_imp",
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
  "slug": "exceptconds-and-imp--35b60bdb34df450862dfd49f",
  "source": {
    "blob": "f64f9c0b07722e346fce05f277ea13625593d257",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 324,
    "line": 308,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostCond/Variant59caa4c8cee243356fb4cec0aa63bd6f1e5ac18e250db27244a191214a928605.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35b60bdb34df450862dfd49fa0b762d377dba0c40fd05a56a6442200091a5de9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostCond/Variant59caa4c8cee243356fb4cec0aa63bd6f1e5ac18e250db27244a191214a928605.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bcd0b065-a480-a3d2-ec28-b6af039f0a2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 308–324.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
theorem ExceptConds.and_imp {x₁ x₂ : ExceptConds ps} : (x₁ ∧ₑ (x₁ →ₑ x₂)) ⊢ₑ x₁ ∧ₑ x₂ := by
  induction ps
  case pure => trivial
  case arg ih => exact ih
  case except ε ps ih => simp_all [and, imp, entails, SPred.and_imp]

/--
A postcondition for the given predicate shape, with one `Assertion` for the terminating case and
one `Assertion` for each `.except` layer in the predicate shape.
```
variable (α σ ε : Type)
example : PostCond α (.arg σ .pure) = ((α → σ → ULift Prop) × PUnit) := rfl
example : PostCond α (.except ε .pure) = ((α → ULift Prop) × (ε → ULift Prop) × PUnit) := rfl
example : PostCond α (.arg σ (.except ε .pure)) = ((α → σ → ULift Prop) × (ε → ULift Prop) × PUnit) := rfl
example : PostCond α (.except ε (.arg σ .pure)) = ((α → σ → ULift Prop) × (ε → σ → ULift Prop) × PUnit) := rfl
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostCond/Variant59caa4c8cee243356fb4cec0aa63bd6f1e5ac18e250db27244a191214a928605.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostCond/Variant59caa4c8cee243356fb4cec0aa63bd6f1e5ac18e250db27244a191214a928605.lean#L308).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f64f9c0b07722e346fce05f277ea13625593d257` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
