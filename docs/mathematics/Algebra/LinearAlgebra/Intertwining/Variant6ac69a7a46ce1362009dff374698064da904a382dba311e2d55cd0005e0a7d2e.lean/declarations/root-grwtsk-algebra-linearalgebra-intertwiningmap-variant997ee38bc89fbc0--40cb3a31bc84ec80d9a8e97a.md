# _root_.GRWTSK.Algebra.LinearAlgebra.IntertwiningMap.Variant997ee38bc89fbc0e2462c76b479d8e098edef8af68cb57619d34923edb94bfb7.LinearEquiv.isIntertwining_symm_isIntertwining

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f0e11019-fc39-d095-052d-44451ef5b641",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.IntertwiningMap.Variant997ee38bc89fbc0e2462c76b479d8e098edef8af68cb57619d34923edb94bfb7.LinearEquiv.isIntertwining_symm_isIntertwining",
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
  "slug": "root-grwtsk-algebra-linearalgebra-intertwiningmap-variant997ee38bc89fbc0--40cb3a31bc84ec80d9a8e97a",
  "source": {
    "blob": "00d610e74d863d4d3d09c58b47baeafbe8d1d3e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 417,
    "line": 411,
    "path": "GRWTSK/Algebra/LinearAlgebra/Intertwining/Variant6ac69a7a46ce1362009dff374698064da904a382dba311e2d55cd0005e0a7d2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:40cb3a31bc84ec80d9a8e97a311a4ae585df97c4b0a1e9b8a73620a8d910e38c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Intertwining/Variant6ac69a7a46ce1362009dff374698064da904a382dba311e2d55cd0005e0a7d2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0e11019-fc39-d095-052d-44451ef5b641`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 411–417.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Algebra.LinearAlgebra.IntertwiningMap.Variant997ee38bc89fbc0e2462c76b479d8e098edef8af68cb57619d34923edb94bfb7.LinearEquiv.isIntertwining_symm_isIntertwining {e : V ≃ₗ[A] W}
    (he : ∀ g, e ∘ₗ (ρ g) = (σ g) ∘ₗ e) (g : G) :
    e.symm ∘ₗ (σ g) = (ρ g) ∘ₗ e.symm := by
  apply e.comp_toLinearMap_eq_iff _ _ |>.1
  rw [← comp_assoc, ← comp_assoc, he g, e.comp_symm, id_comp, comp_assoc, e.comp_symm, comp_id]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Intertwining/Variant6ac69a7a46ce1362009dff374698064da904a382dba311e2d55cd0005e0a7d2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Intertwining/Variant6ac69a7a46ce1362009dff374698064da904a382dba311e2d55cd0005e0a7d2e.lean#L411).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00d610e74d863d4d3d09c58b47baeafbe8d1d3e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
