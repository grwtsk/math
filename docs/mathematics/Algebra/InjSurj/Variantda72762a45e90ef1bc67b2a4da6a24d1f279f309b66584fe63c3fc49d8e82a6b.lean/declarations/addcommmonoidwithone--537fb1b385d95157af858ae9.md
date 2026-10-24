# addCommMonoidWithOne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:959ce58c11cc75e22a26e7505760f02423c38bd01d039b0e588d49243dc2b392",
  "kind": "abbrev",
  "lexical_name": "addCommMonoidWithOne",
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
  "slug": "addcommmonoidwithone--537fb1b385d95157af858ae9",
  "source": {
    "blob": "560da9c3b7abcf55ff42c2337f8bb163f35f7f68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 82,
    "path": "GRWTSK/Algebra/InjSurj/Variantda72762a45e90ef1bc67b2a4da6a24d1f279f309b66584fe63c3fc49d8e82a6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:537fb1b385d95157af858ae92ca2091ce513f5b2a6434be65791bcfc657edd55",
  "verification": {
    "reference": "docs/verification/Algebra/InjSurj/Variantda72762a45e90ef1bc67b2a4da6a24d1f279f309b66584fe63c3fc49d8e82a6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:959ce58c11cc75e22a26e7505760f02423c38bd01d039b0e588d49243dc2b392`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected abbrev addCommMonoidWithOne {S} [Zero S] [One S] [Add S] [SMul ℕ S] [NatCast S]
    [AddCommMonoidWithOne R] (f : S → R) (hf : Injective f) (zero : f 0 = 0) (one : f 1 = 1)
    (add : ∀ x y, f (x + y) = f x + f y) (nsmul : ∀ (n : ℕ) (x), f (n • x) = n • f x)
    (natCast : ∀ n : ℕ, f n = n) : AddCommMonoidWithOne S where
  __ := hf.addMonoidWithOne f zero one add nsmul natCast
  __ := hf.addCommMonoid _ zero add (swap nsmul)

/-- A type endowed with `0`, `1` and `+` is an additive group with one, if it admits an injective
map that preserves `0`, `1` and `+` to an additive group with one.  See note
[reducible non-instances]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/InjSurj/Variantda72762a45e90ef1bc67b2a4da6a24d1f279f309b66584fe63c3fc49d8e82a6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/InjSurj/Variantda72762a45e90ef1bc67b2a4da6a24d1f279f309b66584fe63c3fc49d8e82a6b.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `560da9c3b7abcf55ff42c2337f8bb163f35f7f68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
