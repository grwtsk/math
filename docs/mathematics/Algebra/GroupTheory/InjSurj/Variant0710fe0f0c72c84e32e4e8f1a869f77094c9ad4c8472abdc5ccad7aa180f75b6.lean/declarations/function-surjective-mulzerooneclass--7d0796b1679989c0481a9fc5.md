# Function.Surjective.mulZeroOneClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c022ec24de38fe9bff0e906fa7b2e6a987cc22470ce6224d5dddf76a7801af92",
  "kind": "abbrev",
  "lexical_name": "Function.Surjective.mulZeroOneClass",
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
  "slug": "function-surjective-mulzerooneclass--7d0796b1679989c0481a9fc5",
  "source": {
    "blob": "fa97f2c4a8d63a4d86ecb79c4ec0e24172e031d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 102,
    "path": "GRWTSK/Algebra/GroupTheory/InjSurj/Variant0710fe0f0c72c84e32e4e8f1a869f77094c9ad4c8472abdc5ccad7aa180f75b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7d0796b1679989c0481a9fc5fc4966076b567b59cb0b4138d8f8a531304d0160",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/InjSurj/Variant0710fe0f0c72c84e32e4e8f1a869f77094c9ad4c8472abdc5ccad7aa180f75b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c022ec24de38fe9bff0e906fa7b2e6a987cc22470ce6224d5dddf76a7801af92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected abbrev Function.Surjective.mulZeroOneClass [Mul M₀'] [Zero M₀'] [One M₀'] (f : M₀ → M₀')
    (hf : Surjective f) (zero : f 0 = 0) (one : f 1 = 1) (mul : ∀ a b, f (a * b) = f a * f b) :
    MulZeroOneClass M₀' :=
  { hf.mulZeroClass f zero mul, hf.mulOneClass f one mul with }

end MulZeroOneClass

section SemigroupWithZero

/-- Pull back a `SemigroupWithZero` along an injective function.
See note [reducible non-instances]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/InjSurj/Variant0710fe0f0c72c84e32e4e8f1a869f77094c9ad4c8472abdc5ccad7aa180f75b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/InjSurj/Variant0710fe0f0c72c84e32e4e8f1a869f77094c9ad4c8472abdc5ccad7aa180f75b6.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa97f2c4a8d63a4d86ecb79c4ec0e24172e031d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
