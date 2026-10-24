# map_map_freeMonic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:88632130-16fa-f356-beaf-4e0283749719",
  "kind": "lemma",
  "lexical_name": "map_map_freeMonic",
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
  "slug": "map-map-freemonic--d636118c2a66bcf42c4f8111",
  "source": {
    "blob": "56a1041889cc9095ca7ab293316e7658cdf2bfe1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 81,
    "path": "GRWTSK/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d636118c2a66bcf42c4f8111bfaca9592bcdf5d6946544a46067b3dd4ce57f8d",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88632130-16fa-f356-beaf-4e0283749719`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map_map_freeMonic (f : R →+* S) :
    (freeMonic R n).map (MvPolynomial.map f) = freeMonic S n := by
  simp [freeMonic, Polynomial.map_sum]

open Polynomial (MonicDegreeEq)

/-- The free monic polynomial of degree `n`, as a `MonicDegreeEq` in `R[X₁,...,Xₙ][X]`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56a1041889cc9095ca7ab293316e7658cdf2bfe1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
