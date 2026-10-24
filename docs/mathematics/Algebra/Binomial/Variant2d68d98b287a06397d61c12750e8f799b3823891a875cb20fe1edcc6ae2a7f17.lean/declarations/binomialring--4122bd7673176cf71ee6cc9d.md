# BinomialRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b8e37fe4acb475618f5bf9ccc0d587bb5150f2ddb51e90f26eb45bdcd535999a",
  "kind": "class",
  "lexical_name": "BinomialRing",
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
  "slug": "binomialring--4122bd7673176cf71ee6cc9d",
  "source": {
    "blob": "bffdfec1bcb13c7bacf3f0ee595b226145cf0ca7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 78,
    "path": "GRWTSK/Algebra/Binomial/Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4122bd7673176cf71ee6cc9dcbe9027489e755b0c77cce096064975c81f649a0",
  "verification": {
    "reference": "docs/verification/Algebra/Binomial/Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b8e37fe4acb475618f5bf9ccc0d587bb5150f2ddb51e90f26eb45bdcd535999a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class BinomialRing (R : Type*) [AddCommMonoid R] [Pow R ℕ] extends IsAddTorsionFree R where
  /-- A multichoose function, giving the quotient of Pochhammer evaluations by factorials. -/
  multichoose : R → ℕ → R
  /-- The `n`th ascending Pochhammer polynomial evaluated at any element is divisible by `n!` -/
  factorial_nsmul_multichoose (r : R) (n : ℕ) :
    n.factorial • multichoose r n = (ascPochhammer ℕ n).smeval r

namespace Ring

variable {R : Type*} [AddCommMonoid R] [Pow R ℕ] [BinomialRing R]

@[deprecated (since := "2025-03-15")] protected alias nsmul_right_injective := nsmul_right_injective
@[deprecated (since := "2025-03-15")] protected alias nsmul_right_inj := nsmul_right_inj

/-- The multichoose function is the quotient of ascending Pochhammer evaluation by the corresponding
factorial. When applied to natural numbers, `multichoose k n` describes choosing a multiset of `n`
items from a type of size `k`, i.e., choosing with replacement. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Binomial/Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Binomial/Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bffdfec1bcb13c7bacf3f0ee595b226145cf0ca7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
