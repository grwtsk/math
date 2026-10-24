# floorRoot_pow_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4d488f86-2bee-9fd6-c4a9-51b1ae275208",
  "kind": "lemma",
  "lexical_name": "floorRoot_pow_dvd",
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
  "slug": "floorroot-pow-dvd--b29cc25ddc7e6c103673d57f",
  "source": {
    "blob": "2ed3b0a70f665b0f1deebb4b8dae22531948f328",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 103,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Root/Variant62fd893d5356b0846ca41e19681a864cfcc2a2f4d5ba78da2ffce386dc1fb47e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b29cc25ddc7e6c103673d57ff295f30206d17c0f64f1127fc6b69403c8eca508",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Root/Variant62fd893d5356b0846ca41e19681a864cfcc2a2f4d5ba78da2ffce386dc1fb47e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d488f86-2bee-9fd6-c4a9-51b1ae275208`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma floorRoot_pow_dvd : floorRoot n a ^ n ∣ a := pow_dvd_iff_dvd_floorRoot.2 dvd_rfl

/-- Ceiling root of a natural number. This divides the valuation of every prime number rounding up.

Eg if `n = 3`, `a = 2^4 * 3^2 * 5`, then `ceilRoot n a = 2^2 * 3 * 5`.

In order theory terms, this is the lower or left adjoint of the map `a ↦ a ^ n : ℕ → ℕ` where `ℕ`
is ordered by divisibility.

To ensure that the adjunction (`Nat.dvd_pow_iff_ceilRoot_dvd`) holds in as many cases as possible,
we special-case the following values:
* `ceilRoot 0 a = 0` (this one is not strictly necessary)
* `ceilRoot n 0 = 0`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Root/Variant62fd893d5356b0846ca41e19681a864cfcc2a2f4d5ba78da2ffce386dc1fb47e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Root/Variant62fd893d5356b0846ca41e19681a864cfcc2a2f4d5ba78da2ffce386dc1fb47e.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ed3b0a70f665b0f1deebb4b8dae22531948f328` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
