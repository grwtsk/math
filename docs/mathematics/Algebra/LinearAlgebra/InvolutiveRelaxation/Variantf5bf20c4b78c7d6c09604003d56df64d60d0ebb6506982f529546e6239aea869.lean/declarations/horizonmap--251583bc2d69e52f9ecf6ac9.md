# horizonMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:19e7ea5faf9ea8e2d9590b9286a9c08da599871c8c623bfb5f4cdf7bb2a993b7",
  "kind": "def",
  "lexical_name": "horizonMap",
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
  "slug": "horizonmap--251583bc2d69e52f9ecf6ac9",
  "source": {
    "blob": "bd8108b85598229273c7eabd964a6b9ecfd0be11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 206,
    "path": "GRWTSK/Algebra/LinearAlgebra/InvolutiveRelaxation/Variantf5bf20c4b78c7d6c09604003d56df64d60d0ebb6506982f529546e6239aea869.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:251583bc2d69e52f9ecf6ac9b1d8fd370802c116a76a62b3cc1b3433f96f30ae",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/InvolutiveRelaxation/Variantf5bf20c4b78c7d6c09604003d56df64d60d0ebb6506982f529546e6239aea869.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:19e7ea5faf9ea8e2d9590b9286a9c08da599871c8c623bfb5f4cdf7bb2a993b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def horizonMap
    (trajectory : PositiveRelaxationTrajectory State cone J) :
    State →ₗ[ℝ] State :=
  (List.ofFn fun time => J.relax (trajectory.weightAt time)).foldl
    (fun accumulated next => next.comp accumulated) LinearMap.id

/-- The complete finite-horizon operator obeys the two real-linear laws. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/InvolutiveRelaxation/Variantf5bf20c4b78c7d6c09604003d56df64d60d0ebb6506982f529546e6239aea869.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/InvolutiveRelaxation/Variantf5bf20c4b78c7d6c09604003d56df64d60d0ebb6506982f529546e6239aea869.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd8108b85598229273c7eabd964a6b9ecfd0be11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
