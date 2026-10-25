# toCanonicalLocal_reduce

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:11e38635-2335-a2f3-0f29-f288c64dd72f",
  "kind": "theorem",
  "lexical_name": "toCanonicalLocal_reduce",
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
  "slug": "tocanonicallocal-reduce--4ec86bfe7dfe98dc11775fdb",
  "source": {
    "blob": "520d6f4d0b37c9a244c7e7726fc500565a567212",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 390,
    "line": 381,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ObserverFactor/Variant5c1da2a7fd4b64ec53fac4f8626adf7d224b1a1362ed19bf5166f806eb6caae0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ec86bfe7dfe98dc11775fdb04f2e6467096f500677e7851f882a2147e280136",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ObserverFactor/Variant5c1da2a7fd4b64ec53fac4f8626adf7d224b1a1362ed19bf5166f806eb6caae0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11e38635-2335-a2f3-0f29-f288c64dd72f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 381–390.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toCanonicalLocal_reduce
    (R : ObserverReducer M ρ)
    (x : State) :
    R.toCanonicalLocal (R.reduce x) =
      toLocalCausal M ρ x := by
  apply Quotient.sound
  apply R.reduce_eq_implies_localCausalEquivalent
  exact Classical.choose_spec (R.reduce_surjective (R.reduce x))

/-- Every canonical localState class is represented by a reducer state. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ObserverFactor/Variant5c1da2a7fd4b64ec53fac4f8626adf7d224b1a1362ed19bf5166f806eb6caae0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ObserverFactor/Variant5c1da2a7fd4b64ec53fac4f8626adf7d224b1a1362ed19bf5166f806eb6caae0.lean#L381).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `520d6f4d0b37c9a244c7e7726fc500565a567212` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
