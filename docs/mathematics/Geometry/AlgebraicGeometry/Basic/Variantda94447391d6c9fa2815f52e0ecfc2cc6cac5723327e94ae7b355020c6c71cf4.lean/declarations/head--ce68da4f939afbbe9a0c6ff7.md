# head?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:92271a3cc6ef3f7435b0306a3b925a865356052c4a3a6249d77b07856447fe34",
  "kind": "def",
  "lexical_name": "head?",
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
  "slug": "head--ce68da4f939afbbe9a0c6ff7",
  "source": {
    "blob": "a807b52f77315902dc72ee9863aa1c723ef2c898",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 415,
    "line": 412,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variantda94447391d6c9fa2815f52e0ecfc2cc6cac5723327e94ae7b355020c6c71cf4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ce68da4f939afbbe9a0c6ff708bcc6aae3b3bfb74522ec00eca760fe699d2e21",
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

Occurrence: `declaration:92271a3cc6ef3f7435b0306a3b925a865356052c4a3a6249d77b07856447fe34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 412–415.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def head? [Monad m] (L : MLList m α) : m (Option α) := return (← L.uncons).map (·.1)

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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Basic/Variantda94447391d6c9fa2815f52e0ecfc2cc6cac5723327e94ae7b355020c6c71cf4.lean#L412).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a807b52f77315902dc72ee9863aa1c723ef2c898` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
