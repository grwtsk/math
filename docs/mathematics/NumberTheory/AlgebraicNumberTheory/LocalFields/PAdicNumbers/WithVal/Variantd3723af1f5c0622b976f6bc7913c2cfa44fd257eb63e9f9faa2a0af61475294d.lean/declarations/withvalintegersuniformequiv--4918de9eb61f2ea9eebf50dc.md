# withValIntegersUniformEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a6cde8ed4ae21bd945b182e7c5ce3ea68a93a6dae9de3cd8876ad5ec42048a9e",
  "kind": "def",
  "lexical_name": "withValIntegersUniformEquiv",
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
  "slug": "withvalintegersuniformequiv--4918de9eb61f2ea9eebf50dc",
  "source": {
    "blob": "fcd5640ee02e45dcea57a76f9a7b40d8baf83c2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 206,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/WithVal/Variantd3723af1f5c0622b976f6bc7913c2cfa44fd257eb63e9f9faa2a0af61475294d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4918de9eb61f2ea9eebf50dcdb5fb01440571ce43c377fd23b5d37d4585498b6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/WithVal/Variantd3723af1f5c0622b976f6bc7913c2cfa44fd257eb63e9f9faa2a0af61475294d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a6cde8ed4ae21bd945b182e7c5ce3ea68a93a6dae9de3cd8876ad5ec42048a9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def withValIntegersUniformEquiv : 𝒪[(Rat.padicValuation p).Completion] ≃ᵤ ℤ_[p] :=
  withValUniformEquiv.subtype fun _ ↦ (withValUniformEquiv_norm_le_one_iff _).symm

end PadicInt
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/WithVal/Variantd3723af1f5c0622b976f6bc7913c2cfa44fd257eb63e9f9faa2a0af61475294d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/WithVal/Variantd3723af1f5c0622b976f6bc7913c2cfa44fd257eb63e9f9faa2a0af61475294d.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcd5640ee02e45dcea57a76f9a7b40d8baf83c2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
