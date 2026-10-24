# HeckeCoset.setoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ffe187f1d963ce83eb5ff2b3566d507b003dbab7cb0624f22fbcb76fbd3333de",
  "kind": "abbrev",
  "lexical_name": "HeckeCoset.setoid",
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
  "slug": "heckecoset-setoid--42a12d04ba97ee883666c8cd",
  "source": {
    "blob": "738c107f82e5c55ce06ce6b76c3b17d26e9f81ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 152,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variantb574022a5b74ca8438b8b762b943101fd68af3f040fee222ef783a509189e7a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:42a12d04ba97ee883666c8cd93b4d05d3e8a97dc655ee5033a4d1b9d74de109b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variantb574022a5b74ca8438b8b762b943101fd68af3f040fee222ef783a509189e7a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ffe187f1d963ce83eb5ff2b3566d507b003dbab7cb0624f22fbcb76fbd3333de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev HeckeCoset.setoid (Δ : Submonoid G) (H₁ H₂ : Subgroup G) : Setoid Δ :=
  (DoubleCoset.setoid (H₁ : Set G) H₂).comap Subtype.val

/-- A Hecke double coset: an equivalence class of `Δ`-elements under `H₁gH₂ = H₁hH₂`. This is
the basis type for the `HeckeCosetModule`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variantb574022a5b74ca8438b8b762b943101fd68af3f040fee222ef783a509189e7a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variantb574022a5b74ca8438b8b762b943101fd68af3f040fee222ef783a509189e7a4.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `738c107f82e5c55ce06ce6b76c3b17d26e9f81ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
