# starRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:59ef983a55994f5f31db4950c9f500589a978acd03a0178b3ccc2c4b8dd02c8e",
  "kind": "abbrev",
  "lexical_name": "starRing",
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
  "slug": "starring--cb11b604080fd0a3621a03ba",
  "source": {
    "blob": "7c112e307be585e6f8423ffeb1482d6bbab67908",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 580,
    "line": 573,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant4ce946e9ba0306d69fdafda4b218702fc69f9bd0abca2e35eb194ee0a2f387f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cb11b604080fd0a3621a03ba429bd61c15704df9e4d36e3ebd5a6b47147745ac",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant4ce946e9ba0306d69fdafda4b218702fc69f9bd0abca2e35eb194ee0a2f387f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:59ef983a55994f5f31db4950c9f500589a978acd03a0178b3ccc2c4b8dd02c8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 573–580.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected abbrev starRing [Star R] [NonUnitalNonAssocSemiring R] [NonUnitalNonAssocSemiring S]
    [StarRing S] (hf : Injective f) (star : ∀ x, f (star x) = star (f x))
    (add : ∀ x y, f (x + y) = f x + f y) (mul : ∀ x y, f (x * y) = f x * f y) :
    StarRing R :=
  { hf.starMul f star mul, hf.starAddMonoid f star add with }

/-- A type endowed with `star` is a star module over some other type with `star` if it admits an
injective map that preserves `star` and `•` to a star module. See note [reducible non-instances]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant4ce946e9ba0306d69fdafda4b218702fc69f9bd0abca2e35eb194ee0a2f387f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant4ce946e9ba0306d69fdafda4b218702fc69f9bd0abca2e35eb194ee0a2f387f0.lean#L573).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c112e307be585e6f8423ffeb1482d6bbab67908` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
