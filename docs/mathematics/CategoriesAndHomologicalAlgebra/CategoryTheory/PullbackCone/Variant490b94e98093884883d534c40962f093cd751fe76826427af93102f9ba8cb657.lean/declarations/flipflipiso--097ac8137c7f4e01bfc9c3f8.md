# flipFlipIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f5c622b660ea632da6b1bb74d67bf1c84c8cee7be7e077406b648b05fa64671e",
  "kind": "def",
  "lexical_name": "flipFlipIso",
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
  "slug": "flipflipiso--097ac8137c7f4e01bfc9c3f8",
  "source": {
    "blob": "26cdecb8a6fed35e4f8d3e8dcca27713c499e730",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 490,
    "line": 485,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PullbackCone/Variant490b94e98093884883d534c40962f093cd751fe76826427af93102f9ba8cb657.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:097ac8137c7f4e01bfc9c3f8550d6caff370c0860736ed01b14293634ebb952a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PullbackCone/Variant490b94e98093884883d534c40962f093cd751fe76826427af93102f9ba8cb657.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f5c622b660ea632da6b1bb74d67bf1c84c8cee7be7e077406b648b05fa64671e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 485–490.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def flipFlipIso : t.flip.flip ≅ t := PushoutCocone.ext (Iso.refl _) (by simp) (by simp)

variable {t}

set_option backward.isDefEq.respectTransparency false in
/-- The flip of a pushout square is a pushout square. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PullbackCone/Variant490b94e98093884883d534c40962f093cd751fe76826427af93102f9ba8cb657.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PullbackCone/Variant490b94e98093884883d534c40962f093cd751fe76826427af93102f9ba8cb657.lean#L485).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26cdecb8a6fed35e4f8d3e8dcca27713c499e730` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
