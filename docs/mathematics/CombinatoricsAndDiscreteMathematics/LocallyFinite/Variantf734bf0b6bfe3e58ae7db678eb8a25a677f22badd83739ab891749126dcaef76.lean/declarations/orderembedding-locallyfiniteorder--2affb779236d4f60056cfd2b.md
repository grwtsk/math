# OrderEmbedding.locallyFiniteOrder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1d78a97d04c8de9bd8f7b3fa7d4ffe2eb22e558e651135a0583115472e15bc6a",
  "kind": "def",
  "lexical_name": "OrderEmbedding.locallyFiniteOrder",
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
  "slug": "orderembedding-locallyfiniteorder--2affb779236d4f60056cfd2b",
  "source": {
    "blob": "ae1a8ffefd868ee71f35fb7c8bf904344e32aecc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 822,
    "line": 798,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/LocallyFinite/Variantf734bf0b6bfe3e58ae7db678eb8a25a677f22badd83739ab891749126dcaef76.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2affb779236d4f60056cfd2b9c82a823daa154d6fb469052e86e8fdeda2ee7fd",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/LocallyFinite/Variantf734bf0b6bfe3e58ae7db678eb8a25a677f22badd83739ab891749126dcaef76.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1d78a97d04c8de9bd8f7b3fa7d4ffe2eb22e558e651135a0583115472e15bc6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 798–822.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
protected noncomputable def OrderEmbedding.locallyFiniteOrder [LocallyFiniteOrder β] (f : α ↪o β) :
    LocallyFiniteOrder α where
  finsetIcc a b := (Icc (f a) (f b)).preimage f (f.toEmbedding.injective.injOn _)
  finsetIco a b := (Ico (f a) (f b)).preimage f (f.toEmbedding.injective.injOn _)
  finsetIoc a b := (Ioc (f a) (f b)).preimage f (f.toEmbedding.injective.injOn _)
  finsetIoo a b := (Ioo (f a) (f b)).preimage f (f.toEmbedding.injective.injOn _)
  finset_mem_Icc a b x := by rw [mem_preimage, mem_Icc, f.le_iff_le, f.le_iff_le]
  finset_mem_Ico a b x := by rw [mem_preimage, mem_Ico, f.le_iff_le, f.lt_iff_lt]
  finset_mem_Ioc a b x := by rw [mem_preimage, mem_Ioc, f.lt_iff_lt, f.le_iff_le]
  finset_mem_Ioo a b x := by rw [mem_preimage, mem_Ioo, f.lt_iff_lt, f.lt_iff_lt]
#align order_embedding.locally_finite_order OrderEmbedding.locallyFiniteOrder

open OrderDual

section LocallyFiniteOrder

variable [LocallyFiniteOrder α] (a b : α)

/-- Note we define `Icc (toDual a) (toDual b)` as `Icc α _ _ b a` (which has type `Finset α` not
`Finset αᵒᵈ`!) instead of `(Icc b a).map toDual.toEmbedding` as this means the
following is defeq:
```
lemma this : (Icc (toDual (toDual a)) (toDual (toDual b)) : _) = (Icc a b : _) := rfl
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/LocallyFinite/Variantf734bf0b6bfe3e58ae7db678eb8a25a677f22badd83739ab891749126dcaef76.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/LocallyFinite/Variantf734bf0b6bfe3e58ae7db678eb8a25a677f22badd83739ab891749126dcaef76.lean#L798).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae1a8ffefd868ee71f35fb7c8bf904344e32aecc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
