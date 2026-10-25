# MulEquiv.toAdditive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b04006771faf26c5781bee226761e3bc1fc6c06779ed3daddc556b1fa41f20e3",
  "kind": "def",
  "lexical_name": "MulEquiv.toAdditive",
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
  "slug": "mulequiv-toadditive--c32f95784e049a12df0a5f97",
  "source": {
    "blob": "8034510259c23a86093e8e4c74ac2d587d7b0103",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 30,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TypeTags/Variantda174141678531f2baf7272e45c04355b026fd1956dae4d26d5695ae76b7c92b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c32f95784e049a12df0a5f9714eec69103e86613408c6b842ab43ef42ec08290",
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

Occurrence: `declaration:b04006771faf26c5781bee226761e3bc1fc6c06779ed3daddc556b1fa41f20e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def MulEquiv.toAdditive [MulOneClass G] [MulOneClass H] :
    G ≃* H ≃ (Additive G ≃+ Additive H) where
  toFun f := ⟨⟨MonoidHom.toAdditive f.toMonoidHom,
              MonoidHom.toAdditive f.symm.toMonoidHom, f.1.3, f.1.4⟩, f.2⟩
  invFun f := ⟨⟨f.toAddMonoidHom, f.symm.toAddMonoidHom, f.1.3, f.1.4⟩, f.2⟩
  left_inv x := by ext; rfl
  right_inv x := by ext; rfl
#align mul_equiv.to_additive MulEquiv.toAdditive

/-- Reinterpret `Additive G ≃+ H` as `G ≃* Multiplicative H`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/TypeTags/Variantda174141678531f2baf7272e45c04355b026fd1956dae4d26d5695ae76b7c92b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TypeTags/Variantda174141678531f2baf7272e45c04355b026fd1956dae4d26d5695ae76b7c92b.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8034510259c23a86093e8e4c74ac2d587d7b0103` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
