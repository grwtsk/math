# Function.Surjective.monoidWithZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:786b716e38424076a2c0a57d1d07c65f4c63dba7909aea4f7b85bfbe9dab609c",
  "kind": "def",
  "lexical_name": "Function.Surjective.monoidWithZero",
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
  "slug": "function-surjective-monoidwithzero--2c8a7df42d507589221f1c97",
  "source": {
    "blob": "3cad54b262db1124ac76e3f210fb047e4ee1f38d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 140,
    "path": "GRWTSK/Algebra/GroupTheory/InjSurj/Variantd75558abaa6e9cac92497818a0b049ae0059e884e966cd12baa1b6b9ef7640be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2c8a7df42d507589221f1c979a690da04fb5e2c3be6c8abf704b4636394b6229",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/InjSurj/Variantd75558abaa6e9cac92497818a0b049ae0059e884e966cd12baa1b6b9ef7640be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:786b716e38424076a2c0a57d1d07c65f4c63dba7909aea4f7b85bfbe9dab609c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def Function.Surjective.monoidWithZero [Zero M₀'] [Mul M₀'] [One M₀'] [Pow M₀' ℕ]
    [MonoidWithZero M₀] (f : M₀ → M₀') (hf : Surjective f) (zero : f 0 = 0) (one : f 1 = 1)
    (mul : ∀ x y, f (x * y) = f x * f y) (npow : ∀ (x) (n : ℕ), f (x ^ n) = f x ^ n) :
    MonoidWithZero M₀' :=
  { hf.monoid f one mul npow, hf.mulZeroClass f zero mul with }
#align function.surjective.monoid_with_zero Function.Surjective.monoidWithZero

/-- Pull back a `CommMonoidWithZero` along an injective function.
See note [reducible non-instances]. -/
@[reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/InjSurj/Variantd75558abaa6e9cac92497818a0b049ae0059e884e966cd12baa1b6b9ef7640be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/InjSurj/Variantd75558abaa6e9cac92497818a0b049ae0059e884e966cd12baa1b6b9ef7640be.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3cad54b262db1124ac76e3f210fb047e4ee1f38d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
