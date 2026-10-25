# cleanupCtx

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8b3dc245c5ee7a4ffa691a3341329d4d2012b293bc4ec18b986b2442d55f87d2",
  "kind": "def",
  "lexical_name": "cleanupCtx",
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
  "slug": "cleanupctx--13be3454eacc2fb19df27a26",
  "source": {
    "blob": "ab795a37326d0cb000699c8c1cf48af07e038dd0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 160,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModuleNF/Variant4f5c8e5a751f6f1841f6e930ed21ae2b854bd57207f34ddcdcf1d019e97716fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:13be3454eacc2fb19df27a26a7a572906f00895ef503baf13402e02125db6edc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModuleNF/Variant4f5c8e5a751f6f1841f6e930ed21ae2b854bd57207f34ddcdcf1d019e97716fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8b3dc245c5ee7a4ffa691a3341329d4d2012b293bc4ec18b986b2442d55f87d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def cleanupCtx : MetaM Simp.Context := do
  let thms ← [``one_smul, ``zero_smul, ``add_zero, ``zero_add, ``mul_one,
    ``one_mul, ``neg_one_smul, ``algebraMap_smul].foldlM (·.addConst ·) ({} : SimpTheorems)
  Simp.mkContext { failIfUnchanged := false }
    (simpTheorems := #[thms]) (congrTheorems := ← getSimpCongrTheorems)

/-- Clean up a rewritten expression with the `cleanupCtx` lemmas. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModuleNF/Variant4f5c8e5a751f6f1841f6e930ed21ae2b854bd57207f34ddcdcf1d019e97716fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModuleNF/Variant4f5c8e5a751f6f1841f6e930ed21ae2b854bd57207f34ddcdcf1d019e97716fa.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab795a37326d0cb000699c8c1cf48af07e038dd0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
