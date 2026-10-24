# Function.Injective.mulZeroClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b98ed9cff78a82ade7171d8a55159cb6dec20905465b87bff51dd4b4590f0e67",
  "kind": "def",
  "lexical_name": "Function.Injective.mulZeroClass",
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
  "slug": "function-injective-mulzeroclass--7f85b46ed9c22c1ba76a8777",
  "source": {
    "blob": "cef88b19cd6ae9593f9215b934b6c493e02fa859",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 36,
    "path": "GRWTSK/Algebra/GroupTheory/InjSurj/Variant5d5a9515d50328a98df66768d7ccd6cc3bd091a3411c72ac5687e70118eed9fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7f85b46ed9c22c1ba76a8777ef7464d3cb7a8619efc49c8ac1d5b85834c3bd7e",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/InjSurj/Variant5d5a9515d50328a98df66768d7ccd6cc3bd091a3411c72ac5687e70118eed9fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b98ed9cff78a82ade7171d8a55159cb6dec20905465b87bff51dd4b4590f0e67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def Function.Injective.mulZeroClass [Mul M₀'] [Zero M₀'] (f : M₀' → M₀) (hf : Injective f)
    (zero : f 0 = 0) (mul : ∀ a b, f (a * b) = f a * f b) : MulZeroClass M₀' where
  mul := (· * ·)
  zero := 0
  zero_mul a := hf <| by simp only [mul, zero, zero_mul]
  mul_zero a := hf <| by simp only [mul, zero, mul_zero]
#align function.injective.mul_zero_class Function.Injective.mulZeroClass

/-- Push forward a `MulZeroClass` instance along a surjective function.
See note [reducible non-instances]. -/
@[reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/InjSurj/Variant5d5a9515d50328a98df66768d7ccd6cc3bd091a3411c72ac5687e70118eed9fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/InjSurj/Variant5d5a9515d50328a98df66768d7ccd6cc3bd091a3411c72ac5687e70118eed9fb.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cef88b19cd6ae9593f9215b934b6c493e02fa859` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
