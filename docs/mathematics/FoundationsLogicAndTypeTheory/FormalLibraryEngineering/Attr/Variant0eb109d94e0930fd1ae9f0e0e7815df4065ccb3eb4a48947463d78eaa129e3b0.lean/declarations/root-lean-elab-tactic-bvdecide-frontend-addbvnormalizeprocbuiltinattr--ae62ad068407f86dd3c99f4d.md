# _root_.Lean.Elab.Tactic.BVDecide.Frontend.addBVNormalizeProcBuiltinAttr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3f35bb87064da0e4411b936855d574d4d59078f9374563178c7291a1063e6cf7",
  "kind": "def",
  "lexical_name": "_root_.Lean.Elab.Tactic.BVDecide.Frontend.addBVNormalizeProcBuiltinAttr",
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
  "slug": "root-lean-elab-tactic-bvdecide-frontend-addbvnormalizeprocbuiltinattr--ae62ad068407f86dd3c99f4d",
  "source": {
    "blob": "f25b26138ddc215e1820dc941c75f9cdaffbf6b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 82,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant0eb109d94e0930fd1ae9f0e0e7815df4065ccb3eb4a48947463d78eaa129e3b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ae62ad068407f86dd3c99f4d2cc8440ac3031ea3e62b7e36617d6eb4bd223592",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant0eb109d94e0930fd1ae9f0e0e7815df4065ccb3eb4a48947463d78eaa129e3b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3f35bb87064da0e4411b936855d574d4d59078f9374563178c7291a1063e6cf7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.Lean.Elab.Tactic.BVDecide.Frontend.addBVNormalizeProcBuiltinAttr (declName : Name)
    (post : Bool) (proc : Sum Simproc DSimproc) : IO Unit :=
  addSimprocBuiltinAttrCore builtinBVNormalizeSimprocsRef declName post proc



```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant0eb109d94e0930fd1ae9f0e0e7815df4065ccb3eb4a48947463d78eaa129e3b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant0eb109d94e0930fd1ae9f0e0e7815df4065ccb3eb4a48947463d78eaa129e3b0.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f25b26138ddc215e1820dc941c75f9cdaffbf6b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
