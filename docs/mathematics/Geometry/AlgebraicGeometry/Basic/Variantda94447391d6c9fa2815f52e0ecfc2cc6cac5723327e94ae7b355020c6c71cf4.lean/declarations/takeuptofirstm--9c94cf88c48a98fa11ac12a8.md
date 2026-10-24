# takeUpToFirstM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5cdc1420a3dacb70b0bf6ed47ee8c0e99149fbb3303436f063a097b7d713ce85",
  "kind": "def",
  "lexical_name": "takeUpToFirstM",
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
  "slug": "takeuptofirstm--9c94cf88c48a98fa11ac12a8",
  "source": {
    "blob": "a807b52f77315902dc72ee9863aa1c723ef2c898",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 421,
    "line": 416,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variantda94447391d6c9fa2815f52e0ecfc2cc6cac5723327e94ae7b355020c6c71cf4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9c94cf88c48a98fa11ac12a8978017fa674ff02a547bd8987f98b86afbb6adac",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Basic/Variantda94447391d6c9fa2815f52e0ecfc2cc6cac5723327e94ae7b355020c6c71cf4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5cdc1420a3dacb70b0bf6ed47ee8c0e99149fbb3303436f063a097b7d713ce85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 416–421.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def takeUpToFirstM [Monad m] (L : MLList m α) (f : α → m (ULift Bool)) : MLList m α :=
  L.casesM (fun _ => pure nil) fun x xs =>
    return cons x <| if (← (f x)).down then nil else xs.takeUpToFirstM f

/-- Take the initial segment of the lazy list,
up to and including the first place where `f` gives `true`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Basic/Variantda94447391d6c9fa2815f52e0ecfc2cc6cac5723327e94ae7b355020c6c71cf4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Basic/Variantda94447391d6c9fa2815f52e0ecfc2cc6cac5723327e94ae7b355020c6c71cf4.lean#L416).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a807b52f77315902dc72ee9863aa1c723ef2c898` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
