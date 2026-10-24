# isMittagLeffler_of_exists_finite_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f4b7ce61-ab82-34f6-fd4f-3a69a50b9db1",
  "kind": "theorem",
  "lexical_name": "isMittagLeffler_of_exists_finite_range",
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
  "slug": "ismittagleffler-of-exists-finite-range--61a535a17c4133b2e97e98e9",
  "source": {
    "blob": "08c5d6ceed1884c90345672370ca04b311ffe423",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 238,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantb9fc8d07a847c6641d10f950e818785d5a2cf00af2c96c23bb26831e0bf7408b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61a535a17c4133b2e97e98e9139cac04da3cb46d623e1769b99ae51fae5d175c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantb9fc8d07a847c6641d10f950e818785d5a2cf00af2c96c23bb26831e0bf7408b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f4b7ce61-ab82-34f6-fd4f-3a69a50b9db1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isMittagLeffler_of_exists_finite_range
    (h : ∀ j : J, ∃ (i : _) (f : i ⟶ j), (range <| F.map f).Finite) : F.IsMittagLeffler := by
  intro j
  obtain ⟨i, hi, hf⟩ := h j
  obtain ⟨m, ⟨i, f, hm⟩, hmin⟩ := Finset.wellFoundedLT.has_min
    { s : Finset (F.obj j) | ∃ (i : _) (f : i ⟶ j), ↑s = range (F.map f) }
    ⟨_, i, hi, hf.coe_toFinset⟩
  refine ⟨i, f, fun k g =>
    (F.ranges_directed j).directedOn_range.is_bot_of_is_min ⟨⟨i, f⟩, rfl⟩ ?_ _ ⟨⟨k, g⟩, rfl⟩⟩
  rintro _ ⟨⟨k', g'⟩, rfl⟩ hl
  refine (eq_of_le_of_not_lt hl ?_).ge
  have := hmin _ ⟨k', g', (m.finite_toSet.subset <| hm.substr hl).coe_toFinset⟩
  rwa [← Finset.coe_ssubset, Set.Finite.coe_toFinset, hm] at this

/-- The subfunctor of `F` obtained by restricting to the eventual range at each index. -/
@[simps obj map]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantb9fc8d07a847c6641d10f950e818785d5a2cf00af2c96c23bb26831e0bf7408b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantb9fc8d07a847c6641d10f950e818785d5a2cf00af2c96c23bb26831e0bf7408b.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08c5d6ceed1884c90345672370ca04b311ffe423` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
