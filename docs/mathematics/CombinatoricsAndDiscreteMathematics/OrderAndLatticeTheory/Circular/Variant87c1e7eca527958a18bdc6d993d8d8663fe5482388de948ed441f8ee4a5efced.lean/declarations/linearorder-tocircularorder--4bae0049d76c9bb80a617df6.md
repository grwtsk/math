# LinearOrder.toCircularOrder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2acccda2fd53aba24e0ce27ca47b4a00762f1003bfe136cbc77d039f6e05f067",
  "kind": "abbrev",
  "lexical_name": "LinearOrder.toCircularOrder",
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
  "slug": "linearorder-tocircularorder--4bae0049d76c9bb80a617df6",
  "source": {
    "blob": "195a95f14ad8958764877322b98e4d5f43d174d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 417,
    "line": 399,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Circular/Variant87c1e7eca527958a18bdc6d993d8d8663fe5482388de948ed441f8ee4a5efced.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4bae0049d76c9bb80a617df6160d50d9f6720d568a801e2bac27bc2a86988d62",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Circular/Variant87c1e7eca527958a18bdc6d993d8d8663fe5482388de948ed441f8ee4a5efced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2acccda2fd53aba24e0ce27ca47b4a00762f1003bfe136cbc77d039f6e05f067`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 399–417.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev LinearOrder.toCircularOrder (α : Type*) [LinearOrder α] : CircularOrder α :=
  { PartialOrder.toCircularPartialOrder α with
    btw_total := fun a b c => by
      rcases le_total a b with hab | hba <;> rcases le_total b c with hbc | hcb <;>
        rcases le_total c a with hca | hac
      · exact Or.inl (Or.inl ⟨hab, hbc⟩)
      · exact Or.inl (Or.inl ⟨hab, hbc⟩)
      · exact Or.inl (Or.inr <| Or.inr ⟨hca, hab⟩)
      · exact Or.inr (Or.inr <| Or.inr ⟨hac, hcb⟩)
      · exact Or.inl (Or.inr <| Or.inl ⟨hbc, hca⟩)
      · exact Or.inr (Or.inr <| Or.inl ⟨hba, hac⟩)
      · exact Or.inr (Or.inl ⟨hcb, hba⟩)
      · exact Or.inr (Or.inr <| Or.inl ⟨hba, hac⟩) }

/-! ### Dual constructions -/


namespace OrderDual

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Circular/Variant87c1e7eca527958a18bdc6d993d8d8663fe5482388de948ed441f8ee4a5efced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Circular/Variant87c1e7eca527958a18bdc6d993d8d8663fe5482388de948ed441f8ee4a5efced.lean#L399).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `195a95f14ad8958764877322b98e4d5f43d174d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
