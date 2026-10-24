# _root_.MulEquiv.withZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dc5f69dceb582f3053f4bf5042437b08a78d4a9907eb16a2d85ac52585fbcef7",
  "kind": "def",
  "lexical_name": "_root_.MulEquiv.withZero",
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
  "slug": "root-mulequiv-withzero--fb22d84813b912d5cf4bf486",
  "source": {
    "blob": "1321d50c04b4d1bba5b3bb4ad6ee0ab6f8b5dc3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 338,
    "line": 326,
    "path": "GRWTSK/Algebra/GroupTheory/WithZero/Variantdb2cfae21d1f8c23a8a27fc2fe1e910e315a2b5d3207b3604242bff3862b4b50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fb22d84813b912d5cf4bf486c6b772a41b0c2a45763da443a4bbb18d729401ce",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/WithZero/Variantdb2cfae21d1f8c23a8a27fc2fe1e910e315a2b5d3207b3604242bff3862b4b50.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dc5f69dceb582f3053f4bf5042437b08a78d4a9907eb16a2d85ac52585fbcef7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 326–338.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.MulEquiv.withZero [Group β] :
    (α ≃* β) ≃ (WithZero α ≃* WithZero β) where
  toFun e := ⟨⟨map' e, map' e.symm, (by induction · <;> simp), (by induction · <;> simp)⟩,
    (by induction · <;> induction · <;> simp)⟩
  invFun e := ⟨⟨
    fun x ↦ unzero (x := e x) (by simp [ne_eq, ← e.eq_symm_apply]),
    fun x ↦ unzero (x := e.symm x) (by simp [e.symm_apply_eq]),
    by intro; simp, by intro; simp⟩,
    by intro; simp [← coe_inj]⟩
  left_inv _ := by ext; simp
  right_inv _ := by ext x; cases x <;> simp

/-- The inverse of `MulEquiv.withZero`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/WithZero/Variantdb2cfae21d1f8c23a8a27fc2fe1e910e315a2b5d3207b3604242bff3862b4b50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/WithZero/Variantdb2cfae21d1f8c23a8a27fc2fe1e910e315a2b5d3207b3604242bff3862b4b50.lean#L326).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1321d50c04b4d1bba5b3bb4ad6ee0ab6f8b5dc3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
