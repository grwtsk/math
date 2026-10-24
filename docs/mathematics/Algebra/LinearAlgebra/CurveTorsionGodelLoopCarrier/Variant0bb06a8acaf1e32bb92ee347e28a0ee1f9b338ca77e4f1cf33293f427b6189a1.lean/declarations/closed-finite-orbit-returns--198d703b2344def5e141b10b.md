# closed_finite_orbit_returns

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7ca1b5a9-5f21-5005-b2e4-4e3af97f1e77",
  "kind": "theorem",
  "lexical_name": "closed_finite_orbit_returns",
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
  "slug": "closed-finite-orbit-returns--198d703b2344def5e141b10b",
  "source": {
    "blob": "430021b2b5e5b5537129ec95438080178114db53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 59,
    "path": "GRWTSK/Algebra/LinearAlgebra/CurveTorsionGodelLoopCarrier/Variant0bb06a8acaf1e32bb92ee347e28a0ee1f9b338ca77e4f1cf33293f427b6189a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:198d703b2344def5e141b10bbbffd0e08cac789084955e1ad080acb0f2f865e1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CurveTorsionGodelLoopCarrier/Variant0bb06a8acaf1e32bb92ee347e28a0ee1f9b338ca77e4f1cf33293f427b6189a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ca1b5a9-5f21-5005-b2e4-4e3af97f1e77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closed_finite_orbit_returns
    {State : Type v} {T : State → State}
    (O : ClosedFiniteOrbit T) :
    transitionIterate T O.period O.start = O.start :=
  O.closed

/-- A finite-indexed transition carrier suitable for bitmatrix-style encodings. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CurveTorsionGodelLoopCarrier/Variant0bb06a8acaf1e32bb92ee347e28a0ee1f9b338ca77e4f1cf33293f427b6189a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CurveTorsionGodelLoopCarrier/Variant0bb06a8acaf1e32bb92ee347e28a0ee1f9b338ca77e4f1cf33293f427b6189a1.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `430021b2b5e5b5537129ec95438080178114db53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
