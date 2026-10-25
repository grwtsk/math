# LCtx.eraseCode

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9fe4e73b3ae4b49027571b91ef171328dd588981fbc440f59277a0c29e4d35fb",
  "kind": "def",
  "lexical_name": "LCtx.eraseCode",
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
  "slug": "lctx-erasecode--90217f453510ba3e1f2a4c03",
  "source": {
    "blob": "be370cdb28ef26c703903e05db5c647e70b0f6fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 83,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LCtx/Variant99ef6c2ee74f85a438213002fd0f1c7d3e57c4054419f13f7f5174eb3022b3a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:90217f453510ba3e1f2a4c038c0861f578409f2dea8188a841ddaf1aba23f06c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LCtx/Variant99ef6c2ee74f85a438213002fd0f1c7d3e57c4054419f13f7f5174eb3022b3a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9fe4e73b3ae4b49027571b91ef171328dd588981fbc440f59277a0c29e4d35fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  partial def LCtx.eraseCode (code : Code pu) (lctx : LCtx) : LCtx :=
    match code with
    | .let decl k => eraseCode k <| lctx.eraseLetDecl decl
    | .jp decl k | .fun decl k _ => eraseCode k <| eraseFunDecl lctx decl
    | .cases c => eraseAlts c.alts lctx
    | .oset (k := k) .. | .uset (k := k) .. | .sset (k := k) .. | .inc (k := k) ..
    | .dec (k := k) .. | .del (k := k) .. | .setTag (k := k) .. =>
      eraseCode k lctx
    | .return .. | .jmp .. | .unreach .. => lctx
end

@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LCtx/Variant99ef6c2ee74f85a438213002fd0f1c7d3e57c4054419f13f7f5174eb3022b3a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LCtx/Variant99ef6c2ee74f85a438213002fd0f1c7d3e57c4054419f13f7f5174eb3022b3a0.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be370cdb28ef26c703903e05db5c647e70b0f6fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
