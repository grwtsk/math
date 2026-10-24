# cokernelCocone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a176ad00dda4018f21ee555561488620780222f35e57f2218879a070c45106cd",
  "kind": "def",
  "lexical_name": "cokernelCocone",
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
  "slug": "cokernelcocone--9fdabfa02e5d476c05bb0299",
  "source": {
    "blob": "8f71cfb96260d98a8a25693c00b06bd60db2b920",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 44,
    "path": "GRWTSK/Analysis/Kernels/Variant6d7f85100a47389f78f8a08138ef9280f2b06787848697a25f49cf3a1c278c98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9fdabfa02e5d476c05bb02995c5411ae80e4c51d887c1e339ebaf8d9d185d107",
  "verification": {
    "reference": "docs/verification/Analysis/Kernels/Variant6d7f85100a47389f78f8a08138ef9280f2b06787848697a25f49cf3a1c278c98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a176ad00dda4018f21ee555561488620780222f35e57f2218879a070c45106cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def cokernelCocone {X Y : SemiNormedGrp₁.{u}} (f : X ⟶ Y) : Cofork f 0 :=
  Cofork.ofπ
    (@SemiNormedGrp₁.mkHom _ (Y ⧸ NormedAddGroupHom.range f.1) _ _
      f.hom.1.range.normedMk (NormedAddGroupHom.isQuotientQuotient _).norm_le)
    (by
      ext x
      -- Porting note(https://github.com/leanprover-community/mathlib4/issues/5026): was
      -- simp only [ConcreteCategory.comp_apply, Limits.zero_comp, NormedAddGroupHom.zero_apply,
      -- SemiNormedGrp₁.mkHom_apply, SemiNormedGrp₁.zero_apply,
      -- ← NormedAddGroupHom.mem_ker, f.1.range.ker_normedMk, f.1.mem_range]
      rw [Limits.zero_comp, comp_apply, SemiNormedGrp₁.mkHom_apply,
        SemiNormedGrp₁.zero_apply, ← NormedAddGroupHom.mem_ker, f.hom.1.range.ker_normedMk,
        f.hom.1.mem_range]
      use x)

/-- Auxiliary definition for `HasCokernels SemiNormedGrp₁`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Kernels/Variant6d7f85100a47389f78f8a08138ef9280f2b06787848697a25f49cf3a1c278c98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Kernels/Variant6d7f85100a47389f78f8a08138ef9280f2b06787848697a25f49cf3a1c278c98.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f71cfb96260d98a8a25693c00b06bd60db2b920` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
