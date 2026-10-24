# descendsThroughOn_iff_subtype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca586274-5780-0a66-1922-b66012424d82",
  "kind": "theorem",
  "lexical_name": "descendsThroughOn_iff_subtype",
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
  "slug": "descendsthroughon-iff-subtype--06134aaa00ec5c9ecb9b9d2b",
  "source": {
    "blob": "3c9fb8c12ef74ae36659aa8e5b14b102342d838d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 32,
    "path": "GRWTSK/Analysis/SurfaceScope/Varianted3d66fc8ac31082393a7f6c072ae8b7e6e5a9a38bc011ea478838a5be992940.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:06134aaa00ec5c9ecb9b9d2b4d3fef2f473e24ba0aff1012e656b32cc6a3ea01",
  "verification": {
    "reference": "docs/verification/Analysis/SurfaceScope/Varianted3d66fc8ac31082393a7f6c072ae8b7e6e5a9a38bc011ea478838a5be992940.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca586274-5780-0a66-1922-b66012424d82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem descendsThroughOn_iff_subtype {X Q Y : Type*} (scope : Set X)
    (carrier : X → Q) (target : X → Y) :
    DescendsThroughOn scope carrier target ↔
      DescendsThrough (fun x : scope => carrier x) (fun x : scope => target x) := by
  constructor
  · intro h x y equal
    exact h x.property y.property equal
  · intro h x y hx hy equal
    exact h (x := ⟨x, hx⟩) (y := ⟨y, hy⟩) equal

/-- Restricting admissible states preserves a scoped descent proof. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/SurfaceScope/Varianted3d66fc8ac31082393a7f6c072ae8b7e6e5a9a38bc011ea478838a5be992940.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SurfaceScope/Varianted3d66fc8ac31082393a7f6c072ae8b7e6e5a9a38bc011ea478838a5be992940.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c9fb8c12ef74ae36659aa8e5b14b102342d838d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
