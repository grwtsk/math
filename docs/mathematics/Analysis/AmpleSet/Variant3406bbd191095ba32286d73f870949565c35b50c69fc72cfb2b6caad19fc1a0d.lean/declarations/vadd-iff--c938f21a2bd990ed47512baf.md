# vadd_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:71eaa326-0663-dfd7-5951-11b9a282890d",
  "kind": "theorem",
  "lexical_name": "vadd_iff",
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
  "slug": "vadd-iff--c938f21a2bd990ed47512baf",
  "source": {
    "blob": "8d22d4f940c0ad87f4a1233cda93cf0d62259cbd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 120,
    "path": "GRWTSK/Analysis/AmpleSet/Variant3406bbd191095ba32286d73f870949565c35b50c69fc72cfb2b6caad19fc1a0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c938f21a2bd990ed47512baf75473aaeb9d8030f21e0ce0d829c425a921803bb",
  "verification": {
    "reference": "docs/verification/Analysis/AmpleSet/Variant3406bbd191095ba32286d73f870949565c35b50c69fc72cfb2b6caad19fc1a0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71eaa326-0663-dfd7-5951-11b9a282890d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem vadd_iff [ContinuousAdd E] {s : Set E} {y : E} :
    AmpleSet (y +ᵥ s) ↔ AmpleSet s :=
  AmpleSet.image_iff (ContinuousAffineEquiv.constVAdd ℝ E y)

/-! ## Subspaces of codimension at least two have ample complement -/
section Codimension

/-- Let `E` be a linear subspace in a real vector space.
If `E` has codimension at least two, its complement is ample. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/AmpleSet/Variant3406bbd191095ba32286d73f870949565c35b50c69fc72cfb2b6caad19fc1a0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AmpleSet/Variant3406bbd191095ba32286d73f870949565c35b50c69fc72cfb2b6caad19fc1a0d.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d22d4f940c0ad87f4a1233cda93cf0d62259cbd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
