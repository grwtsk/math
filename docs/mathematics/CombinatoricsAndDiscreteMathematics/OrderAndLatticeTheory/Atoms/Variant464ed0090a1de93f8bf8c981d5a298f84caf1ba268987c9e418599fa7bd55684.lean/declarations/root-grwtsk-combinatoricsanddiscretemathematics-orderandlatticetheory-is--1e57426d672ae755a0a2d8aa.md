# _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.IsAtomic.Variantd8a277e9c766880fdea7d4f148e38453a4a363c72bb6a2a17e36b75a9ad1bf13.OrderDual.instIsCoatomistic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0673f2dbb9a021f9517a704f37bb12cbae0d846446107613fc84f7eb4a7b24bc",
  "kind": "instance",
  "lexical_name": "_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.IsAtomic.Variantd8a277e9c766880fdea7d4f148e38453a4a363c72bb6a2a17e36b75a9ad1bf13.OrderDual.instIsCoatomistic",
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
  "slug": "root-grwtsk-combinatoricsanddiscretemathematics-orderandlatticetheory-is--1e57426d672ae755a0a2d8aa",
  "source": {
    "blob": "e64d376d689476a256f25723462d751d28b6b406",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 601,
    "line": 597,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Atoms/Variant464ed0090a1de93f8bf8c981d5a298f84caf1ba268987c9e418599fa7bd55684.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1e57426d672ae755a0a2d8aaa0e92c95734cbc3680d7bf3efc64e8023a4fea11",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Atoms/Variant464ed0090a1de93f8bf8c981d5a298f84caf1ba268987c9e418599fa7bd55684.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0673f2dbb9a021f9517a704f37bb12cbae0d846446107613fc84f7eb4a7b24bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 597–601.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.IsAtomic.Variantd8a277e9c766880fdea7d4f148e38453a4a363c72bb6a2a17e36b75a9ad1bf13.OrderDual.instIsCoatomistic [OrderBot α] [h : IsAtomistic α] : IsCoatomistic αᵒᵈ :=
  isCoatomistic_dual_iff_isAtomistic.2 h

variable [OrderBot α] [IsAtomistic α]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Atoms/Variant464ed0090a1de93f8bf8c981d5a298f84caf1ba268987c9e418599fa7bd55684.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Atoms/Variant464ed0090a1de93f8bf8c981d5a298f84caf1ba268987c9e418599fa7bd55684.lean#L597).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e64d376d689476a256f25723462d751d28b6b406` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
