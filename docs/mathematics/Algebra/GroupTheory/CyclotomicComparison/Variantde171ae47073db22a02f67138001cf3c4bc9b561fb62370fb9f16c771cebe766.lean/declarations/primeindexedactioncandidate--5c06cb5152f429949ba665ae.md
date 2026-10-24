# PrimeIndexedActionCandidate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:976bd4263b3653382ebb5f7bc48cea68e56dfa2c9efc1247c97f4ef1db58a138",
  "kind": "structure",
  "lexical_name": "PrimeIndexedActionCandidate",
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
  "slug": "primeindexedactioncandidate--5c06cb5152f429949ba665ae",
  "source": {
    "blob": "72c0b8092416c1741b6846a99c9a0f55c6359683",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 30,
    "path": "GRWTSK/Algebra/GroupTheory/CyclotomicComparison/Variantde171ae47073db22a02f67138001cf3c4bc9b561fb62370fb9f16c771cebe766.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5c06cb5152f429949ba665ae10aa8c20f7aa2cf559228cf8bc7ad62328e49851",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/CyclotomicComparison/Variantde171ae47073db22a02f67138001cf3c4bc9b561fb62370fb9f16c771cebe766.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:976bd4263b3653382ebb5f7bc48cea68e56dfa2c9efc1247c97f4ef1db58a138`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PrimeIndexedActionCandidate
    (Symmetry : Type u)
    (Carrier : Type v)
    (PrimeTarget : CertifiedPrime → Type w)
    [Monoid Symmetry] where
  action : Symmetry → Carrier → Carrier
  one_action :
    ∀ value, action 1 value = value
  mul_action :
    ∀ left right value,
      action (left * right) value =
        action left (action right value)
  primeMap :
    (prime : CertifiedPrime) →
      Carrier → PrimeTarget prime
  actionDigest : Digest
  primeMapDigest : CertifiedPrime → Digest
  candidateAddress : ObjectAddress

/--
Candidate relative K/TC comparison under an explicit theorem hypothesis.  The
equivalence is real at the supplied carrier types, but this record does not by
itself prove that those types realize algebraic K-theory and TC.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/CyclotomicComparison/Variantde171ae47073db22a02f67138001cf3c4bc9b561fb62370fb9f16c771cebe766.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/CyclotomicComparison/Variantde171ae47073db22a02f67138001cf3c4bc9b561fb62370fb9f16c771cebe766.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72c0b8092416c1741b6846a99c9a0f55c6359683` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
