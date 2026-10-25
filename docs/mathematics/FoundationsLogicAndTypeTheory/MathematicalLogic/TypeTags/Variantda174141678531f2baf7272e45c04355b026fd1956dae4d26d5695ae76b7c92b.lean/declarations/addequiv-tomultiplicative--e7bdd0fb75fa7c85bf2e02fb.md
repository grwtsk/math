# AddEquiv.toMultiplicative''

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ff9c7ff96289bf54ae3a05898c61e681dcfb71b85382975b3a0daed3ffd54c1d",
  "kind": "def",
  "lexical_name": "AddEquiv.toMultiplicative''",
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
  "slug": "addequiv-tomultiplicative--e7bdd0fb75fa7c85bf2e02fb",
  "source": {
    "blob": "8034510259c23a86093e8e4c74ac2d587d7b0103",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 57,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TypeTags/Variantda174141678531f2baf7272e45c04355b026fd1956dae4d26d5695ae76b7c92b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e7bdd0fb75fa7c85bf2e02fb725b511c070dcc282788075e30a4f7f1d66bce47",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/TypeTags/Variantda174141678531f2baf7272e45c04355b026fd1956dae4d26d5695ae76b7c92b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ff9c7ff96289bf54ae3a05898c61e681dcfb71b85382975b3a0daed3ffd54c1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def AddEquiv.toMultiplicative'' [AddZeroClass G] [MulOneClass H] :
    G ≃+ Additive H ≃ (Multiplicative G ≃* H) where
  toFun f :=
    ⟨⟨AddMonoidHom.toMultiplicative'' f.toAddMonoidHom,
     AddMonoidHom.toMultiplicative' f.symm.toAddMonoidHom, f.1.3, f.1.4⟩, f.2⟩
  invFun f := ⟨⟨f.toMonoidHom, f.symm.toMonoidHom, f.1.3, f.1.4⟩, f.2⟩
  left_inv x := by ext; rfl
  right_inv x := by ext; rfl
#align add_equiv.to_multiplicative'' AddEquiv.toMultiplicative''

/-- Reinterpret `Multiplicative G ≃* H` as `G ≃+ Additive H` as. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/TypeTags/Variantda174141678531f2baf7272e45c04355b026fd1956dae4d26d5695ae76b7c92b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TypeTags/Variantda174141678531f2baf7272e45c04355b026fd1956dae4d26d5695ae76b7c92b.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8034510259c23a86093e8e4c74ac2d587d7b0103` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
