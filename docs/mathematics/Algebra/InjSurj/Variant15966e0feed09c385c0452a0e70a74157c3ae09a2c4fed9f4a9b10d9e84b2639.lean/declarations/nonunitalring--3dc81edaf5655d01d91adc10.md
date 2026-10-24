# nonUnitalRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9c44c69ddedad21d26d11b8b46a62c75bb42bd6cdecda666bc620fb59e491418",
  "kind": "abbrev",
  "lexical_name": "nonUnitalRing",
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
  "slug": "nonunitalring--3dc81edaf5655d01d91adc10",
  "source": {
    "blob": "62e4cc7aac358ab9c0e8edf8f289e0aa1eac7f6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 290,
    "line": 281,
    "path": "GRWTSK/Algebra/InjSurj/Variant15966e0feed09c385c0452a0e70a74157c3ae09a2c4fed9f4a9b10d9e84b2639.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3dc81edaf5655d01d91adc1090f8eed34163d3e9f434aa616baa9a0720739494",
  "verification": {
    "reference": "docs/verification/Algebra/InjSurj/Variant15966e0feed09c385c0452a0e70a74157c3ae09a2c4fed9f4a9b10d9e84b2639.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9c44c69ddedad21d26d11b8b46a62c75bb42bd6cdecda666bc620fb59e491418`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–290.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected abbrev nonUnitalRing [NonUnitalRing R] (zero : f 0 = 0)
    (add : ∀ x y, f (x + y) = f x + f y) (mul : ∀ x y, f (x * y) = f x * f y)
    (neg : ∀ x, f (-x) = -f x) (sub : ∀ x y, f (x - y) = f x - f y)
    (nsmul : ∀ (n : ℕ) (x), f (n • x) = n • f x) (zsmul : ∀ (n : ℤ) (x), f (n • x) = n • f x) :
    NonUnitalRing S where
  toNonUnitalNonAssocRing := hf.nonUnitalNonAssocRing f zero add mul neg sub nsmul zsmul
  __ := hf.nonUnitalSemiring f zero add mul nsmul

/-- Pushforward a `NonAssocRing` instance along a surjective function. -/
-- See note [reducible non-instances]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/InjSurj/Variant15966e0feed09c385c0452a0e70a74157c3ae09a2c4fed9f4a9b10d9e84b2639.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/InjSurj/Variant15966e0feed09c385c0452a0e70a74157c3ae09a2c4fed9f4a9b10d9e84b2639.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62e4cc7aac358ab9c0e8edf8f289e0aa1eac7f6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
