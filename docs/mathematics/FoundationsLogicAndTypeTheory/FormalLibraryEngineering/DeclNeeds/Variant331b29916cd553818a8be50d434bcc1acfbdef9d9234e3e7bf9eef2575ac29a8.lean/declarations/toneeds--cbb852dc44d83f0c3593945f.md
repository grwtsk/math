# toNeeds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ae7a9c52d2cf41b7ccbba8812f1d7ebd6bce6295a4b10183f5deee748207ebce",
  "kind": "def",
  "lexical_name": "toNeeds",
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
  "slug": "toneeds--cbb852dc44d83f0c3593945f",
  "source": {
    "blob": "fa42e630e9f72637f0213ee564c99d66349ebfec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 189,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclNeeds/Variant331b29916cd553818a8be50d434bcc1acfbdef9d9234e3e7bf9eef2575ac29a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cbb852dc44d83f0c3593945fc415542185e3e556ccecc2db23b4ef47bf2ce526",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclNeeds/Variant331b29916cd553818a8be50d434bcc1acfbdef9d9234e3e7bf9eef2575ac29a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ae7a9c52d2cf41b7ccbba8812f1d7ebd6bce6295a4b10183f5deee748207ebce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toNeeds (useMeta : Bool := false) (imp : ImportNeeds) : Needs where
  pub := if useMeta then imp.pub else imp.pub ∪ imp.allowMetaPub
  priv := if useMeta then imp.priv else imp.priv ∪ imp.allowMetaPriv
  privOfPriv := if useMeta then imp.privOfPriv else imp.privOfPriv ∪ imp.allowMetaPrivOfPriv
  metaPub := if !useMeta then imp.metaPub else imp.metaPub ∪ imp.allowMetaPub
  metaPriv := if !useMeta then imp.metaPriv else imp.metaPriv ∪ imp.allowMetaPriv
  metaPrivOfPriv :=
    if !useMeta then imp.metaPrivOfPriv else imp.metaPrivOfPriv ∪ imp.allowMetaPrivOfPriv

/-- Assumes that `Provides` is well-formed, i.e. is linearized and transitively closed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclNeeds/Variant331b29916cd553818a8be50d434bcc1acfbdef9d9234e3e7bf9eef2575ac29a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclNeeds/Variant331b29916cd553818a8be50d434bcc1acfbdef9d9234e3e7bf9eef2575ac29a8.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa42e630e9f72637f0213ee564c99d66349ebfec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
