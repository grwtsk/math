# _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SimpTheoremInfo.Variant3e84fcdc00aed39d17f193a8a15ac732defe4949a34eccdea317a3b98cc729cb.Lean.Meta.DiscrTree.elements

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9831dda4ab8a226d670ae0ace447d656178be68e01e9accbbd7c34a33b02cb67",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SimpTheoremInfo.Variant3e84fcdc00aed39d17f193a8a15ac732defe4949a34eccdea317a3b98cc729cb.Lean.Meta.DiscrTree.elements",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-simpt--105c54a2b42c65853c27952c",
  "source": {
    "blob": "958785cbd78c2dd6e71ca6ae9af50cb3888cfd49",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 112,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant4b6e51033fe43d776aec3fcdd191d1296d9e0274e9620c448ce1de97abee333e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:105c54a2b42c65853c27952c379785bdc4dc5c2f2e72b2a998207efdcb71bb40",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant4b6e51033fe43d776aec3fcdd191d1296d9e0274e9620c448ce1de97abee333e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9831dda4ab8a226d670ae0ace447d656178be68e01e9accbbd7c34a33b02cb67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SimpTheoremInfo.Variant3e84fcdc00aed39d17f193a8a15ac732defe4949a34eccdea317a3b98cc729cb.Lean.Meta.DiscrTree.elements (d : DiscrTree α) : Array α :=
  d.root.foldl (init := #[]) fun arr _ => trieElements arr
where
  /-- Returns the list of elements in the trie. -/
  trieElements (arr)
  | Trie.node vs children =>
    children.foldl (init := arr ++ vs) fun arr (_, child) => trieElements arr child

/-- Add message `msg` to any errors thrown inside `k`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant4b6e51033fe43d776aec3fcdd191d1296d9e0274e9620c448ce1de97abee333e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant4b6e51033fe43d776aec3fcdd191d1296d9e0274e9620c448ce1de97abee333e.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `958785cbd78c2dd6e71ca6ae9af50cb3888cfd49` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
