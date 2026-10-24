# prime_not_dvd_div_of_squarefree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f3b20de-4c14-c13a-5b56-5b7528c3ed99",
  "kind": "theorem",
  "lexical_name": "prime_not_dvd_div_of_squarefree",
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
  "slug": "prime-not-dvd-div-of-squarefree--87da859cf20c4e64b16ce876",
  "source": {
    "blob": "1d1c1c9a3b76f1a435acc2d07786bd0cf1ca016d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 81,
    "path": "GRWTSK/NumberTheory/Moebius/SquareDivisorMobiusNonsquarefreeCancellation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87da859cf20c4e64b16ce8767b1c474f89ee23d5470ea2e839be91c547779fe5",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/SquareDivisorMobiusNonsquarefreeCancellation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f3b20de-4c14-c13a-5b56-5b7528c3ed99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_not_dvd_div_of_squarefree
    {p d : ℕ} (hp : p.Prime) (hsq : Squarefree d)
    (hpd : p ∣ d) :
    ¬ p ∣ d / p := by
  intro hq
  have hpp : p * p ∣ d := by
    exact (Nat.dvd_div_iff_mul_dvd hpd).1 hq
  have hu : IsUnit p := hsq p hpp
  exact hp.ne_one (Nat.isUnit_iff.mp hu)

/-- Toggling a prime whose square divides `m` preserves the squarefree
square-divisor support. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/SquareDivisorMobiusNonsquarefreeCancellation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/SquareDivisorMobiusNonsquarefreeCancellation.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d1c1c9a3b76f1a435acc2d07786bd0cf1ca016d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
