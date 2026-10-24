# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:67e70fa6c84b0a179daef467941ebde4f65013f39d0ce2d7aafe58e2720cedbb",
  "kind": "example",
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
  "slug": "example--90d0e9987962d8bab9b3ba01",
  "source": {
    "blob": "1ab26fd50d7f60d5eed884295f4c918114919dd1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 462,
    "line": 449,
    "path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantd8b7f34cf8a05d40d0006923394300e19e8582c5f222a4b74a6125dc44cdfc62.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:90d0e9987962d8bab9b3ba01929a0a4b445a1ca43a67791d8a7970f841925371",
  "verification": {
    "reference": "docs/verification/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantd8b7f34cf8a05d40d0006923394300e19e8582c5f222a4b74a6125dc44cdfc62.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:67e70fa6c84b0a179daef467941ebde4f65013f39d0ce2d7aafe58e2720cedbb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 449–462.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (Γ : Subgroup SL(2, ℤ)) : Algebra ℂ (⨁ i, ModularForm Γ i) := inferInstance

end GradedRing

end ModularForm

section translate
open ModularForm

variable {k : ℤ} {Γ : Subgroup SL(2, ℤ)} {F : Type*} [FunLike F ℍ ℂ] (f : F) (g : SL(2, ℤ))

/-- Translating a `ModularForm` by `SL(2, ℤ)`, to obtain a new `ModularForm`.

(TODO : Define this more generally for `GL(2, ℚ)`.) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantd8b7f34cf8a05d40d0006923394300e19e8582c5f222a4b74a6125dc44cdfc62.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantd8b7f34cf8a05d40d0006923394300e19e8582c5f222a4b74a6125dc44cdfc62.lean#L449).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ab26fd50d7f60d5eed884295f4c918114919dd1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
