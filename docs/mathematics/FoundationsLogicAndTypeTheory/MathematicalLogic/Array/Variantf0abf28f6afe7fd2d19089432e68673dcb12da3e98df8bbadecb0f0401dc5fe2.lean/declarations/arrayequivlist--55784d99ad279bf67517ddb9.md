# arrayEquivList

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:36c11d65cd15b694b03f74025222b35a94804d610169f52cdf1a0ade8d5f3bbd",
  "kind": "def",
  "lexical_name": "arrayEquivList",
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
  "slug": "arrayequivlist--55784d99ad279bf67517ddb9",
  "source": {
    "blob": "0b5bab9b7c7e9db8f37ceb10c16e4d888199450d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 50,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Array/Variantf0abf28f6afe7fd2d19089432e68673dcb12da3e98df8bbadecb0f0401dc5fe2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:55784d99ad279bf67517ddb997beb750a96d0f98b2df933b12263210fc303ea9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Array/Variantf0abf28f6afe7fd2d19089432e68673dcb12da3e98df8bbadecb0f0401dc5fe2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:36c11d65cd15b694b03f74025222b35a94804d610169f52cdf1a0ade8d5f3bbd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def arrayEquivList (α : Type*) : Array α ≃ List α :=
  ⟨Array.data, Array.mk, fun _ => rfl, fun _ => rfl⟩

end Equiv

/- Porting note: removed instances for what would be ported as `Traversable (Array α)` and
`LawfulTraversable (Array α)`. These would

1. be implemented directly in terms of `Array` functionality for efficiency, rather than being the
traversal of some other type transported along an equivalence to `Array α` (as the traversable
instance for `array` was)

2. belong in `Mathlib.Control.Traversable.Instances` instead of this file. -/

-- namespace Array'

-- open Function

-- variable {n : ℕ}

-- instance : Traversable (Array' n) :=
--   @Equiv.traversable (flip Vector n) _ (fun α => Equiv.vectorEquivArray α n) _

-- instance : LawfulTraversable (Array' n) :=
--   @Equiv.isLawfulTraversable (flip Vector n) _ (fun α => Equiv.vectorEquivArray α n) _ _

-- end Array'

/-- If `α` is encodable, then so is `Array α`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Array/Variantf0abf28f6afe7fd2d19089432e68673dcb12da3e98df8bbadecb0f0401dc5fe2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Array/Variantf0abf28f6afe7fd2d19089432e68673dcb12da3e98df8bbadecb0f0401dc5fe2.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b5bab9b7c7e9db8f37ceb10c16e4d888199450d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
