# SimpResult

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c792cafabd72cb00cf3314a3efffa1a91c1d82ce0607b0054f84133f7130101e",
  "kind": "structure",
  "lexical_name": "SimpResult",
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
  "slug": "simpresult--b258e197367e03cee91ca99e",
  "source": {
    "blob": "3264f215a7b2737b1af72913b3f93a966aef1703",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 144,
    "path": "GRWTSK/Algebra/SafePoly/Variant0bacb3263503365ec3b86ca1e41e6864d5d49dc1d53adeb5b216f9938e211e9a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b258e197367e03cee91ca99e0d6248d500aebf7f4433a7d3a8a8cd8332fcbf5b",
  "verification": {
    "reference": "docs/verification/Algebra/SafePoly/Variant0bacb3263503365ec3b86ca1e41e6864d5d49dc1d53adeb5b216f9938e211e9a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c792cafabd72cb00cf3314a3efffa1a91c1d82ce0607b0054f84133f7130101e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SimpResult where
  /-- The resulting simplified polynomial after rewriting. -/
  p  : Poly := .num 0
  /-- The integer coefficient multiplied with polynomial `p₁` in the rewriting step. -/
  k₁ : Int  := 0
  /-- The integer coefficient multiplied with polynomial `p₂` during rewriting. -/
  k₂ : Int  := 0
  /-- The monomial factor applied to polynomial `p₂`. -/
  m₂ : Mon  := .unit

/--
Simplifies polynomial `p₁` using polynomial `p₂` by rewriting.

This function attempts to rewrite `p₁` by eliminating the first occurrence of
the leading monomial of `p₂`.

If `checkCoeffDvd` is `true` (and the ring does not implement `NoNatZeroDivisors`),
a monomial is rewritten only if its coefficient is divisible by the leading
coefficient of `p₂`, i.e., only if the rewrite does not multiply `p₁` by a
constant `k₁ ≠ ±1`. See `RingM.Context.checkCoeffDvd`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/SafePoly/Variant0bacb3263503365ec3b86ca1e41e6864d5d49dc1d53adeb5b216f9938e211e9a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SafePoly/Variant0bacb3263503365ec3b86ca1e41e6864d5d49dc1d53adeb5b216f9938e211e9a.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3264f215a7b2737b1af72913b3f93a966aef1703` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
