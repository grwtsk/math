# ColorTorusView.normalizedPoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:620b62d13dddd783742766f58f1fdce5cd7b60a5c8a85d37d0d68932d23c9834",
  "kind": "def",
  "lexical_name": "ColorTorusView.normalizedPoint",
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
  "slug": "colortorusview-normalizedpoint--aba2ab94077e7721df6ea7f0",
  "source": {
    "blob": "d10a9b30f8626d9f9b862de11a712763a976892d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 120,
    "path": "GRWTSK/Analysis/XYZColorTorus/Variant55bafd2d96bb19f0a82e37a526d6a5e615511bea33892f5281a3b6d1578344ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aba2ab94077e7721df6ea7f085b9e0076e78c1650ef00202d20a583cf461a20f",
  "verification": {
    "reference": "docs/verification/Analysis/XYZColorTorus/Variant55bafd2d96bb19f0a82e37a526d6a5e615511bea33892f5281a3b6d1578344ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:620b62d13dddd783742766f58f1fdce5cd7b60a5c8a85d37d0d68932d23c9834`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ColorTorusView.normalizedPoint
    (view : ColorTorusView) : NormalizedXYZPoint :=
  ⟨view.xyz.value, view.invariant⟩

/-- Reuse the canonical quotient-torus adapter.  This is not a second torus
coordinate convention. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/XYZColorTorus/Variant55bafd2d96bb19f0a82e37a526d6a5e615511bea33892f5281a3b6d1578344ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/XYZColorTorus/Variant55bafd2d96bb19f0a82e37a526d6a5e615511bea33892f5281a3b6d1578344ff.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d10a9b30f8626d9f9b862de11a712763a976892d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
