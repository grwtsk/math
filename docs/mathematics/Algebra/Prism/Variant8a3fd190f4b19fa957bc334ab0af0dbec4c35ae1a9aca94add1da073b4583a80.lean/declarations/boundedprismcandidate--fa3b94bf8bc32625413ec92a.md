# BoundedPrismCandidate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:612076d656343ce31d21bcc74f3cc6c945a5e1e14be8adeac8d334c3288e8be5",
  "kind": "structure",
  "lexical_name": "BoundedPrismCandidate",
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
  "slug": "boundedprismcandidate--fa3b94bf8bc32625413ec92a",
  "source": {
    "blob": "1f582cf3f60b9d8acf78dfb96ab3c46344b18e47",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 85,
    "path": "GRWTSK/Algebra/Prism/Variant8a3fd190f4b19fa957bc334ab0af0dbec4c35ae1a9aca94add1da073b4583a80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fa3b94bf8bc32625413ec92ab85e58f88ac243edc21f83feaf62dfb0066fb308",
  "verification": {
    "reference": "docs/verification/Algebra/Prism/Variant8a3fd190f4b19fa957bc334ab0af0dbec4c35ae1a9aca94add1da073b4583a80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:612076d656343ce31d21bcc74f3cc6c945a5e1e14be8adeac8d334c3288e8be5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure BoundedPrismCandidate
    (prime : CertifiedPrime) (A : Type u) [CommRing A] where
  deltaStructure : PrimeDeltaStructure prime A
  ideal : Ideal A
  distinguished : A
  cartier :
    PrincipalEffectiveCartierIdeal A ideal distinguished
  prism_condition :
    (prime.value : A) ∈
      ideal + ideal.map deltaStructure.frobenius
  classically_complete :
    ClassicallyAdicComplete A (primeIdeal A prime ideal)
  derivedCompletionObligation : StableId
  derivedCompletionObligation_valid :
    derivedCompletionObligation.Valid
  torsionBound : Nat
  bounded :
    BoundedPrimePowerTorsion A prime ideal torsionBound
  sourceDigest : Digest
  candidateAddress : ObjectAddress

namespace BoundedPrismCandidate

variable {A : Type u} [CommRing A] {prime : CertifiedPrime}

/-- The distinguished element belongs to the prism ideal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Prism/Variant8a3fd190f4b19fa957bc334ab0af0dbec4c35ae1a9aca94add1da073b4583a80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Prism/Variant8a3fd190f4b19fa957bc334ab0af0dbec4c35ae1a9aca94add1da073b4583a80.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f582cf3f60b9d8acf78dfb96ab3c46344b18e47` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
