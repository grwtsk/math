# cycleFromAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ad496e95cfdfbaa9dd93a7984993ae834194f2f6463b501218031bc6a71fc9cd",
  "kind": "def",
  "lexical_name": "cycleFromAux",
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
  "slug": "cyclefromaux--e9c4ed176b38a2f7289dcad5",
  "source": {
    "blob": "07e3c6d649bed3b2eab1d20a629a4b35e76e15dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 41,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attractor/Variant5462457529d28d7ac2ecdfa53ea7efca9a36a0481cf490c9542420ee8016203d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e9c4ed176b38a2f7289dcad51ebac311250cd4acb73cd8fd7f4b67f6d6cf9582",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attractor/Variant5462457529d28d7ac2ecdfa53ea7efca9a36a0481cf490c9542420ee8016203d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ad496e95cfdfbaa9dd93a7984993ae834194f2f6463b501218031bc6a71fc9cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def cycleFromAux {n : Nat}
    (N : BooleanNetwork.Network n) :
    Nat → List (Hypercube.Point n) → Hypercube.Point n →
      List (Hypercube.Point n)
  | 0, _seen, _x => []
  | fuel + 1, seen, x =>
      if BooleanNetwork.containsState x seen then
        BooleanNetwork.suffixFromState x seen
      else
        BooleanNetwork.cycleFromAux N fuel (seen ++ [x]) (N.step x)

/-- Cyclic attractor reached from `x`, represented as one cyclic state list. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attractor/Variant5462457529d28d7ac2ecdfa53ea7efca9a36a0481cf490c9542420ee8016203d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attractor/Variant5462457529d28d7ac2ecdfa53ea7efca9a36a0481cf490c9542420ee8016203d.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07e3c6d649bed3b2eab1d20a629a4b35e76e15dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
