# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4b4aa725fca36d210f519d1bf17f23c54f65a60b90e451f7c353fb1cfaa0cafc",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--afff9fbebdf5386b5ed1e6d8",
  "source": {
    "blob": "2144c65ecf08d5c4a3d68152d38d997816769f90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 91,
    "path": "GRWTSK/Algebra/GroupTheory/ArchimedeanDensely/Variantff03da17c387def47c8551e5728e3c7bc77207328e49fcdff7a16264829cb29a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:afff9fbebdf5386b5ed1e6d855ac9190192c09007ac9e6003cb1daf944d5252e",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/ArchimedeanDensely/Variantff03da17c387def47c8551e5728e3c7bc77207328e49fcdff7a16264829cb29a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4b4aa725fca36d210f519d1bf17f23c54f65a60b90e451f7c353fb1cfaa0cafc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : Unique (ℤ ≃+o ℤᵒᵈ) where
  default := ⟨AddEquiv.neg ℤ |>.trans ⟨toDual, toDual_add⟩, by simp⟩
  uniq e := OrderAddMonoidIso.toAddEquiv_injective <| by
    simp only [OrderAddMonoidIso.toAddEquiv_eq_coe]
    refine Int.addEquiv_eq_refl_or_neg ((e : ℤ ≃+ ℤᵒᵈ).trans ⟨toDual, toDual_add⟩)
        |>.resolve_left fun H => by
      replace H : e 1 = 1 := congr($H 1)
      have h1 : 0 < e 1 := by
        rw [← map_zero e, map_lt_map_iff]
        simp
      simp [H, ← ofDual_lt_ofDual] at h1

open Subgroup in
/-- In two linearly ordered groups, the closure of an element of one group
is isomorphic (and order-isomorphic) to the closure of an element in the other group. -/
@[to_additive /-- In two linearly ordered additive groups, the closure of an element of one group
is isomorphic (and order-isomorphic) to the closure of an element in the other group. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/ArchimedeanDensely/Variantff03da17c387def47c8551e5728e3c7bc77207328e49fcdff7a16264829cb29a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/ArchimedeanDensely/Variantff03da17c387def47c8551e5728e3c7bc77207328e49fcdff7a16264829cb29a.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2144c65ecf08d5c4a3d68152d38d997816769f90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
