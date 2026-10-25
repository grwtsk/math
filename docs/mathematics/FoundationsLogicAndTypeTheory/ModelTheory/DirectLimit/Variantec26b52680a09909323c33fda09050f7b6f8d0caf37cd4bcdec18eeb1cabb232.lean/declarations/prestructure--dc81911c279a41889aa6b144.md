# prestructure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:45c9544ac501c16a4ebb3343763a1cb2ef2b2644c8c1c69a42c1ca35908eea53",
  "kind": "instance",
  "lexical_name": "prestructure",
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
  "slug": "prestructure--dc81911c279a41889aa6b144",
  "source": {
    "blob": "7b50ab0f3ee9643076321f1ca8698fdd722f902e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 231,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantec26b52680a09909323c33fda09050f7b6f8d0caf37cd4bcdec18eeb1cabb232.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dc81911c279a41889aa6b1440c0d2557cf048b63339f8aabf72cfce06cd973cd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantec26b52680a09909323c33fda09050f7b6f8d0caf37cd4bcdec18eeb1cabb232.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:45c9544ac501c16a4ebb3343763a1cb2ef2b2644c8c1c69a42c1ca35908eea53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance prestructure : L.Prestructure (DirectLimit.setoid G f) where
  toStructure := sigmaStructure G f
  fun_equiv {n} {F} x y xy := by
    obtain ⟨i, hx, hy, h⟩ := exists_unify_eq G f xy
    refine'
      Setoid.trans (funMap_equiv_unify G f F x i hx)
        (Setoid.trans _ (Setoid.symm (funMap_equiv_unify G f F y i hy)))
    rw [h]
  rel_equiv {n} {R} x y xy := by
    obtain ⟨i, hx, hy, h⟩ := exists_unify_eq G f xy
    refine' _root_.trans (relMap_equiv_unify G f R x i hx)
      (_root_.trans _ (symm (relMap_equiv_unify G f R y i hy)))
    rw [h]
#align first_order.language.direct_limit.prestructure FirstOrder.Language.DirectLimit.prestructure

/-- The `L.Structure` on a direct limit of `L.Structure`s. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantec26b52680a09909323c33fda09050f7b6f8d0caf37cd4bcdec18eeb1cabb232.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantec26b52680a09909323c33fda09050f7b6f8d0caf37cd4bcdec18eeb1cabb232.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b50ab0f3ee9643076321f1ca8698fdd722f902e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
