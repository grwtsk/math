# _root_.GRWTSK.Algebra.FunctionEnd.Variant4540822a4384157e931d0bba440c4323dff66d55131bea1f2a9f3d160dadb28b.Equiv.permCongrHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:10e320ca195da289a2c1d51ad5de4b06747fdefc9d027fdacd1192f0d58128cc",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.Algebra.FunctionEnd.Variant4540822a4384157e931d0bba440c4323dff66d55131bea1f2a9f3d160dadb28b.Equiv.permCongrHom",
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
  "slug": "root-grwtsk-algebra-functionend-variant4540822a4384157e931d0bba440c4323d--cf122873637d534aa6c84f58",
  "source": {
    "blob": "9b08501934b229ffb231f623ec4a36304c2df230",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 297,
    "path": "GRWTSK/Algebra/End/Variantd747ecada0ba48321c1d31a73a59635804b474ea6a28037985ccc570b736df3a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cf122873637d534aa6c84f58397788c1aa87002acf2d5e4a53a09f267c4c1fc3",
  "verification": {
    "reference": "docs/verification/Algebra/End/Variantd747ecada0ba48321c1d31a73a59635804b474ea6a28037985ccc570b736df3a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:10e320ca195da289a2c1d51ad5de4b06747fdefc9d027fdacd1192f0d58128cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 297–304.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.Algebra.FunctionEnd.Variant4540822a4384157e931d0bba440c4323dff66d55131bea1f2a9f3d160dadb28b.Equiv.permCongrHom (e : α ≃ β) : Perm α ≃* Perm β where
  toEquiv := e.permCongr
  map_mul' p q := e.permCongr_mul p q

attribute [inherit_doc Equiv.permCongr] Equiv.permCongrHom
extend_docs Equiv.permCongrHom after "This is `Equiv.permCongr` as a `MulEquiv`."

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/End/Variantd747ecada0ba48321c1d31a73a59635804b474ea6a28037985ccc570b736df3a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/End/Variantd747ecada0ba48321c1d31a73a59635804b474ea6a28037985ccc570b736df3a.lean#L297).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b08501934b229ffb231f623ec4a36304c2df230` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
