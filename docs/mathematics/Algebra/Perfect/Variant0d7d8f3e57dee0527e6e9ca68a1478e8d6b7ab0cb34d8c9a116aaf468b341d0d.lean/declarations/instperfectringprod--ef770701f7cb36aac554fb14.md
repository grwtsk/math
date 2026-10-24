# instPerfectRingProd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ce626d55992b65ac20a36cd3ef26014a4502f05d896c4c67faee1356475da6ec",
  "kind": "instance",
  "lexical_name": "instPerfectRingProd",
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
  "slug": "instperfectringprod--ef770701f7cb36aac554fb14",
  "source": {
    "blob": "a0d1b91e6f83832416a87ea3335241f4b483851a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 296,
    "line": 286,
    "path": "GRWTSK/Algebra/Perfect/Variant0d7d8f3e57dee0527e6e9ca68a1478e8d6b7ab0cb34d8c9a116aaf468b341d0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ef770701f7cb36aac554fb1473e98e71fb89c4301b5709a64f9d99527d7401d7",
  "verification": {
    "reference": "docs/verification/Algebra/Perfect/Variant0d7d8f3e57dee0527e6e9ca68a1478e8d6b7ab0cb34d8c9a116aaf468b341d0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ce626d55992b65ac20a36cd3ef26014a4502f05d896c4c67faee1356475da6ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 286–296.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instPerfectRingProd (S : Type*) [CommSemiring S] [ExpChar S p] [PerfectRing S p] :
    PerfectRing (R × S) p where
  bijective_frobenius := (bijective_frobenius R p).prodMap (bijective_frobenius S p)

end CommSemiring

end PerfectRing

/-- A perfect field.

See also `PerfectRing` for a generalisation in positive characteristic. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Perfect/Variant0d7d8f3e57dee0527e6e9ca68a1478e8d6b7ab0cb34d8c9a116aaf468b341d0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Perfect/Variant0d7d8f3e57dee0527e6e9ca68a1478e8d6b7ab0cb34d8c9a116aaf468b341d0d.lean#L286).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0d1b91e6f83832416a87ea3335241f4b483851a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
