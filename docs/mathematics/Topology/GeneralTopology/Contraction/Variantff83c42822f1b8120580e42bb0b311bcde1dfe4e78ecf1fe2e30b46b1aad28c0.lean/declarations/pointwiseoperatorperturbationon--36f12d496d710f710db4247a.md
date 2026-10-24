# PointwiseOperatorPerturbationOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9575584e6aa770fba3b71d600fc3ded2b1d297b61f33440d957759d13509a4e9",
  "kind": "structure",
  "lexical_name": "PointwiseOperatorPerturbationOn",
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
  "slug": "pointwiseoperatorperturbationon--36f12d496d710f710db4247a",
  "source": {
    "blob": "8832c4d41d55e98007937570871d54623c676088",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 193,
    "path": "GRWTSK/Topology/GeneralTopology/Contraction/Variantff83c42822f1b8120580e42bb0b311bcde1dfe4e78ecf1fe2e30b46b1aad28c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:36f12d496d710f710db4247a21d99bfe2d8e3f1dd46e504b70986c488ee57628",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Contraction/Variantff83c42822f1b8120580e42bb0b311bcde1dfe4e78ecf1fe2e30b46b1aad28c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9575584e6aa770fba3b71d600fc3ded2b1d297b61f33440d957759d13509a4e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PointwiseOperatorPerturbationOn
    (reference candidate : VersionedOperator State)
    (region : Set State) where
  reference_invariant :
    Set.MapsTo reference.rawMap region region
  candidate_invariant :
    Set.MapsTo candidate.rawMap region region
  magnitude :
    PerturbationMagnitude .pointwiseOperator
  pointwise :
    ∀ state ∈ region,
      dist (reference.rawMap state)
          (candidate.rawMap state) ≤
        magnitude.value

/--
A fixed point of a pointwise-perturbed operator moves by at most
`η / (1 - q)` inside the shared region.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Contraction/Variantff83c42822f1b8120580e42bb0b311bcde1dfe4e78ecf1fe2e30b46b1aad28c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Contraction/Variantff83c42822f1b8120580e42bb0b311bcde1dfe4e78ecf1fe2e30b46b1aad28c0.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8832c4d41d55e98007937570871d54623c676088` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
