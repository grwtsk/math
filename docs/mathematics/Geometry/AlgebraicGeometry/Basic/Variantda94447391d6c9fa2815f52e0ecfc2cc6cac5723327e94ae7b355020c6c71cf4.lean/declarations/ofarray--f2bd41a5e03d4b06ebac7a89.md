# ofArray

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:febc9047b411ba22cba3f5c847754354384a2b00639038be1493e78923076966",
  "kind": "def",
  "lexical_name": "ofArray",
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
  "slug": "ofarray--f2bd41a5e03d4b06ebac7a89",
  "source": {
    "blob": "a807b52f77315902dc72ee9863aa1c723ef2c898",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 345,
    "line": 339,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variantda94447391d6c9fa2815f52e0ecfc2cc6cac5723327e94ae7b355020c6c71cf4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f2bd41a5e03d4b06ebac7a89c2572bbf0d20e0ed6f4bafda4b058eda96ee05de",
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

Occurrence: `declaration:febc9047b411ba22cba3f5c847754354384a2b00639038be1493e78923076966`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 339–345.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def ofArray {α : Type} (L : Array α) : MLList m α := go 0 where
  /-- Implementation of `MLList.ofArray`. -/
  go (i : Nat) : MLList m α :=
    if h : i < L.size then cons L[i] (thunk fun _ => go (i+1)) else nil

/-- Group the elements of a lazy list into chunks of a given size.
If the lazy list is finite, the last chunk may be smaller (possibly even length 0). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Basic/Variantda94447391d6c9fa2815f52e0ecfc2cc6cac5723327e94ae7b355020c6c71cf4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Basic/Variantda94447391d6c9fa2815f52e0ecfc2cc6cac5723327e94ae7b355020c6c71cf4.lean#L339).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a807b52f77315902dc72ee9863aa1c723ef2c898` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
