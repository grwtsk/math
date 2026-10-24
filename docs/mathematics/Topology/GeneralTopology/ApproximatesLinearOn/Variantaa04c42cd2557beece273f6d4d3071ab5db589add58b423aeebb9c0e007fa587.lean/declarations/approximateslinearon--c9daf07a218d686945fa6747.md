# ApproximatesLinearOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:86213bf36ee7fc6755d35d47cd3d15721d33a36ad2e553aaf604661de0e3a4f0",
  "kind": "def",
  "lexical_name": "ApproximatesLinearOn",
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
  "slug": "approximateslinearon--c9daf07a218d686945fa6747",
  "source": {
    "blob": "eb31e17cf426f33c74a6f72555a5a1dfa202e6a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 80,
    "path": "GRWTSK/Topology/GeneralTopology/ApproximatesLinearOn/Variantaa04c42cd2557beece273f6d4d3071ab5db589add58b423aeebb9c0e007fa587.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c9daf07a218d686945fa6747f386c6d365ffad0119bcc3fa9bde95d7aee51eb0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ApproximatesLinearOn/Variantaa04c42cd2557beece273f6d4d3071ab5db589add58b423aeebb9c0e007fa587.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:86213bf36ee7fc6755d35d47cd3d15721d33a36ad2e553aaf604661de0e3a4f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ApproximatesLinearOn (f : E → F) (f' : E →L[𝕜] F) (s : Set E) (c : ℝ≥0) : Prop :=
  ∀ x ∈ s, ∀ y ∈ s, ‖f x - f y - f' (x - y)‖ ≤ c * ‖x - y‖

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ApproximatesLinearOn/Variantaa04c42cd2557beece273f6d4d3071ab5db589add58b423aeebb9c0e007fa587.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ApproximatesLinearOn/Variantaa04c42cd2557beece273f6d4d3071ab5db589add58b423aeebb9c0e007fa587.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb31e17cf426f33c74a6f72555a5a1dfa202e6a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
