# iff_existsUnique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:376f335a-4d27-83f9-ae92-8a0b2b3f9b10",
  "kind": "theorem",
  "lexical_name": "iff_existsUnique",
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
  "slug": "iff-existsunique--297e01a3c2638ea6ae23f496",
  "source": {
    "blob": "074cebd676f901c0f12936539ceed0ba23529cd1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 103,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueProds/Variant1b0a599475968caa3684d6a8db509c032cb87d31fbbe50d64a4fdc16180f110b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:297e01a3c2638ea6ae23f496693425eca210172a6c826c6f9ca7b046bc347fe0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueProds/Variant1b0a599475968caa3684d6a8db509c032cb87d31fbbe50d64a4fdc16180f110b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:376f335a-4d27-83f9-ae92-8a0b2b3f9b10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iff_existsUnique (aA : a0 ∈ A) (bB : b0 ∈ B) :
    UniqueMul A B a0 b0 ↔ ∃! (ab : _) (_ : ab ∈ A ×ˢ B), ab.1 * ab.2 = a0 * b0 :=
  ⟨fun _ ↦ ⟨(a0, b0), ⟨Finset.mem_product.mpr ⟨aA, bB⟩, rfl, by simp⟩, by simpa⟩,
    fun h ↦ h.elim₂
      (by
        rintro ⟨x1, x2⟩ _ _ J x y hx hy l
        rcases Prod.mk.inj_iff.mp (J (a0, b0) (Finset.mk_mem_product aA bB) rfl) with ⟨rfl, rfl⟩
        exact Prod.mk.inj_iff.mp (J (x, y) (Finset.mk_mem_product hx hy) l))⟩
#align unique_mul.iff_exists_unique UniqueMul.iff_existsUnique
#align unique_add.iff_exists_unique UniqueAdd.iff_existsUnique

-- Porting note: mathport warning: expanding binder collection
--  (ab «expr ∈ » [finset.product/multiset.product/set.prod/list.product](A, B)) -/
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueProds/Variant1b0a599475968caa3684d6a8db509c032cb87d31fbbe50d64a4fdc16180f110b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueProds/Variant1b0a599475968caa3684d6a8db509c032cb87d31fbbe50d64a4fdc16180f110b.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `074cebd676f901c0f12936539ceed0ba23529cd1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
