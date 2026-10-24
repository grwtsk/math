# ArchimedeanBalanceNaturality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8ab29a8a7022827e60692d5ff8c4992229e87528d06dbe6a13f39a9500d1965b",
  "kind": "structure",
  "lexical_name": "ArchimedeanBalanceNaturality",
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
  "slug": "archimedeanbalancenaturality--a4a69057349188251300aaee",
  "source": {
    "blob": "d368045f4d8c057bd028b8998b6a5911bd6b9f24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 63,
    "path": "GRWTSK/Algebra/GroupTheory/Balance/Variant1a63f021af68b13a9997916c0c16d06401673fd9843120691b95b897b43a8581.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a4a69057349188251300aaee83668e93674f2d86d3408e421880f9bf88c1f423",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Balance/Variant1a63f021af68b13a9997916c0c16d06401673fd9843120691b95b897b43a8581.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8ab29a8a7022827e60692d5ff8c4992229e87528d06dbe6a13f39a9500d1965b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ArchimedeanBalanceNaturality
    {Prime : Type uPrime}
    {Symbol : Type uSymbol}
    [CommGroup Symbol]
    [DecidableEq Prime]
    {profile :
      SemiLocalSymbolProfile Prime Symbol}
    {quasiInner : QuasiInnerClass Symbol}
    {source target : Finset Prime}
    (sourceBalance :
      ArchimedeanBalance
        profile quasiInner source)
    (targetBalance :
      ArchimedeanBalance
        profile quasiInner target) where
  source_subset : source ⊆ target
  retainedPairingCompatible :
    ∀ prime ∈ source,
      sourceBalance.allocation prime =
        targetBalance.allocation prime
  residualTransition : Prop
  residualTransitionProof :
    residualTransition

end Mathematics.SemiLocalDefect.Hardy
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Balance/Variant1a63f021af68b13a9997916c0c16d06401673fd9843120691b95b897b43a8581.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Balance/Variant1a63f021af68b13a9997916c0c16d06401673fd9843120691b95b897b43a8581.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d368045f4d8c057bd028b8998b6a5911bd6b9f24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
