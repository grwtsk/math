# mkAndIntroN

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8070255cb670dfa8a7de1eefbc485fa26f64c15dc52c9ebcd37152b841077976",
  "kind": "def",
  "lexical_name": "mkAndIntroN",
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
  "slug": "mkandintron--bc2f859cd5352d103cafbc01",
  "source": {
    "blob": "badc98ea274a8f09f3678220a28462f71e927671",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 784,
    "line": 775,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AppBuilder/Variant7d8b45360bc016cdae3c9872d71ee499b96a94e88409ea9115d9202d1ab734e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bc2f859cd5352d103cafbc01d6d3a69b8d3a0e4673171bfbcb0bea9b6d9f9585",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AppBuilder/Variant7d8b45360bc016cdae3c9872d71ee499b96a94e88409ea9115d9202d1ab734e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8070255cb670dfa8a7de1eefbc485fa26f64c15dc52c9ebcd37152b841077976`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 775–784.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkAndIntroN (hs : List Expr) : MetaM Expr := (·.1) <$> go hs
  where
    go : List Expr → MetaM (Expr × Expr)
      | [] => return (mkConst ``True.intro, mkConst ``True)
      | [h] => return (h, ← inferType h)
      | h :: hs => do
        let (h', p') ← go hs
        let p ← inferType h
        return (mkApp4 (mkConst ``And.intro) p p' h h', mkApp2 (mkConst ``And) p p')

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AppBuilder/Variant7d8b45360bc016cdae3c9872d71ee499b96a94e88409ea9115d9202d1ab734e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AppBuilder/Variant7d8b45360bc016cdae3c9872d71ee499b96a94e88409ea9115d9202d1ab734e2.lean#L775).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `badc98ea274a8f09f3678220a28462f71e927671` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
