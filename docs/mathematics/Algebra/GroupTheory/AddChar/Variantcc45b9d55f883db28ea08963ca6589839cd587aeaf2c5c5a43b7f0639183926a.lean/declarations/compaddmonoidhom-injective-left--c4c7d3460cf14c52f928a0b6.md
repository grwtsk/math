# compAddMonoidHom_injective_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c51b9a66-7482-44a9-3ef1-a0be65419e24",
  "kind": "lemma",
  "lexical_name": "compAddMonoidHom_injective_left",
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
  "slug": "compaddmonoidhom-injective-left--c4c7d3460cf14c52f928a0b6",
  "source": {
    "blob": "6de0f5c3dcb009649a6bba8d19d9105c83f24cf3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 250,
    "path": "GRWTSK/Algebra/GroupTheory/AddChar/Variantcc45b9d55f883db28ea08963ca6589839cd587aeaf2c5c5a43b7f0639183926a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4c7d3460cf14c52f928a0b64c58597990d2fe4d74cda1d4e6e861ff5c733595",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/AddChar/Variantcc45b9d55f883db28ea08963ca6589839cd587aeaf2c5c5a43b7f0639183926a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c51b9a66-7482-44a9-3ef1-a0be65419e24`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma compAddMonoidHom_injective_left (f : A →+ B) (hf : Surjective f) :
    Injective fun ψ : AddChar B M ↦ ψ.compAddMonoidHom f := by
  rintro ψ χ h; rw [DFunLike.ext'_iff] at h ⊢; exact hf.injective_comp_right h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/AddChar/Variantcc45b9d55f883db28ea08963ca6589839cd587aeaf2c5c5a43b7f0639183926a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/AddChar/Variantcc45b9d55f883db28ea08963ca6589839cd587aeaf2c5c5a43b7f0639183926a.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6de0f5c3dcb009649a6bba8d19d9105c83f24cf3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
