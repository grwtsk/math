# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b0fc80f62d939697a660f99252733a4b2a014c32c8cd683ae169262e637696ad",
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
  "slug": "instance--96a1843f4113fc0a31dd0ce5",
  "source": {
    "blob": "5166c21a4483803cbbc9ef563dd19952c2143832",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 143,
    "path": "GRWTSK/Algebra/Galois/Variantac45fb2a652e33b7ad25dcc17b80947f86eb79bddf1bfe1772f524356b81aabc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:96a1843f4113fc0a31dd0ce580e7fb0e0e3398743bc1a0991a5fd4b8ab1b014b",
  "verification": {
    "reference": "docs/verification/Algebra/Galois/Variantac45fb2a652e33b7ad25dcc17b80947f86eb79bddf1bfe1772f524356b81aabc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b0fc80f62d939697a660f99252733a4b2a014c32c8cd683ae169262e637696ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [IsGalois K L] : MulAction.IsPretransitive (L ≃ₐ[K] L) (primesOver p B) where
  exists_smul_eq := by
    intro ⟨P, _, _⟩ ⟨Q, _, _⟩
    rcases exists_map_eq_of_isGalois p P Q K L with ⟨σ, hs⟩
    exact ⟨(galRestrict A K L B).symm σ, Subtype.val_inj.mp <|
      (congrFun (congrArg map ((galRestrict A K L B).apply_symm_apply σ)) P).trans hs⟩

/-- All the `ramificationIdx` over a fixed maximal ideal are the same. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Galois/Variantac45fb2a652e33b7ad25dcc17b80947f86eb79bddf1bfe1772f524356b81aabc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Galois/Variantac45fb2a652e33b7ad25dcc17b80947f86eb79bddf1bfe1772f524356b81aabc.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5166c21a4483803cbbc9ef563dd19952c2143832` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
