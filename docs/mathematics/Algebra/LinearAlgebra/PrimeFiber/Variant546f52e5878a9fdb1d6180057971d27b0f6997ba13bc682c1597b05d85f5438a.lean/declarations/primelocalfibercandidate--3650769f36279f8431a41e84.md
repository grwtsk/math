# PrimeLocalFiberCandidate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a49a2d578d83e122ea62855730fa6660b6a8ec137e1bb8fae917dad82ff61367",
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
  "slug": "primelocalfibercandidate--3650769f36279f8431a41e84",
  "source": {
    "blob": "171d26b6d4f11896d9e2ae826cc0de3e0977608d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 55,
    "path": "GRWTSK/Algebra/LinearAlgebra/PrimeFiber/Variant546f52e5878a9fdb1d6180057971d27b0f6997ba13bc682c1597b05d85f5438a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3650769f36279f8431a41e84f2ca87fe492cd3d5123bbf00cae3a70b476354b7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PrimeFiber/Variant546f52e5878a9fdb1d6180057971d27b0f6997ba13bc682c1597b05d85f5438a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a49a2d578d83e122ea62855730fa6660b6a8ec137e1bb8fae917dad82ff61367`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–94.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PrimeFiber/Variant546f52e5878a9fdb1d6180057971d27b0f6997ba13bc682c1597b05d85f5438a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PrimeFiber/Variant546f52e5878a9fdb1d6180057971d27b0f6997ba13bc682c1597b05d85f5438a.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `171d26b6d4f11896d9e2ae826cc0de3e0977608d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
