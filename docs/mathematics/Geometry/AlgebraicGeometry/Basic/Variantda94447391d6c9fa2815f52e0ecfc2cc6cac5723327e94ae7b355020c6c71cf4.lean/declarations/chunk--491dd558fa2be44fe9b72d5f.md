# chunk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:90b5a70f4ffefaf3c265e5269c338f24e261d1c9b32886b6ce5c60f4b222c87e",
  "kind": "def",
  "lexical_name": "chunk",
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
  "slug": "chunk--491dd558fa2be44fe9b72d5f",
  "source": {
    "blob": "a807b52f77315902dc72ee9863aa1c723ef2c898",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 356,
    "line": 346,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variantda94447391d6c9fa2815f52e0ecfc2cc6cac5723327e94ae7b355020c6c71cf4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:491dd558fa2be44fe9b72d5fbb3babe51f4ee2d0275e49f2f2e74a3cf82d00f3",
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

Occurrence: `declaration:90b5a70f4ffefaf3c265e5269c338f24e261d1c9b32886b6ce5c60f4b222c87e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 346–356.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def chunk [Monad m] (L : MLList m α) (n : Nat) : MLList m (Array α) := go n #[] L where
  /-- Implementation of `MLList.chunk`. -/
  go (r : Nat) (acc : Array α) (M : MLList m α) : MLList m (Array α) :=
    match r with
    | 0 => cons acc (thunk fun _ => go n #[] M)
    | r+1 => squash fun _ => do
      match ← M.uncons with
      | none => return cons acc nil
      | some (a, M') => return go r (acc.push a) M'

/-- Add one element to the end of a monadic lazy list. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Basic/Variantda94447391d6c9fa2815f52e0ecfc2cc6cac5723327e94ae7b355020c6c71cf4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Basic/Variantda94447391d6c9fa2815f52e0ecfc2cc6cac5723327e94ae7b355020c6c71cf4.lean#L346).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a807b52f77315902dc72ee9863aa1c723ef2c898` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
