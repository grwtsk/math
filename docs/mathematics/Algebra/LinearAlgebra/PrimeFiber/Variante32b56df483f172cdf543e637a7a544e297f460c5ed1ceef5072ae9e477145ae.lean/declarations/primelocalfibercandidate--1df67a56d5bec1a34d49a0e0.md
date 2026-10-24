# PrimeLocalFiberCandidate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b81e4e4f7be97e0d3664117cce640cd033f15d24ae0f817b1e858b36072822f9",
  "kind": "structure",
  "lexical_name": "PrimeLocalFiberCandidate",
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
  "slug": "primelocalfibercandidate--1df67a56d5bec1a34d49a0e0",
  "source": {
    "blob": "2e3d2c4612e073053444efa5f79f38c09cbf2203",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 63,
    "path": "GRWTSK/Algebra/LinearAlgebra/PrimeFiber/Variante32b56df483f172cdf543e637a7a544e297f460c5ed1ceef5072ae9e477145ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1df67a56d5bec1a34d49a0e0a333580bd56644df2abde52be7eb7f8cc87338e3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PrimeFiber/Variante32b56df483f172cdf543e637a7a544e297f460c5ed1ceef5072ae9e477145ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b81e4e4f7be97e0d3664117cce640cd033f15d24ae0f817b1e858b36072822f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PrimeLocalFiberCandidate
    (prime : CertifiedPrime)
    (A : Type u) (Cohomology : Type v)
    (Level : Nat → Type w)
    [CommRing A]
    [AddCommGroup Cohomology] [Module A Cohomology]
    [∀ level, AddCommGroup (Level level)]
    [∀ level, Fintype (Level level)] where
  prism : BoundedPrismCandidate prime A
  frobeniusAction : Cohomology →+ Cohomology
  frobeniusSemilinear :
    ∀ (scalar : A) (value : Cohomology),
      frobeniusAction (scalar • value) =
        prism.deltaStructure.frobenius scalar •
          frobeniusAction value
  nygaard :
    NygaardFiltrationCandidate
      prime A Cohomology frobeniusAction
  torsionTower : PrimePowerTorsionTower prime Level
  localEulerCandidate : Option (FrobeniusEulerCandidate ℤ)
  comparisonObligationIds : List StableId
  candidateDigest : Digest
  evidenceAddress : ObjectAddress

/-!
## Kernel-bound local fibers

`PrimeLocalFiberCandidate` remains a proposal because its comparison and
derived-completion obligations are still explicit.  A finite certified state
must therefore retain the complete typed candidate and a kernel certificate
for the fixed integrity statement below.  It cannot replace that data with an
address.
-/

/--
The complete typed realization retained by a certified finite-prime state.
The algebra, cohomology carrier, finite torsion levels, and all of their type
class dictionaries remain part of the value, so no address lookup is needed
to recover the local mathematical object.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PrimeFiber/Variante32b56df483f172cdf543e637a7a544e297f460c5ed1ceef5072ae9e477145ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PrimeFiber/Variante32b56df483f172cdf543e637a7a544e297f460c5ed1ceef5072ae9e477145ae.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e3d2c4612e073053444efa5f79f38c09cbf2203` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
