# applicableByHypRules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:00db9440af0e3aff1873ca8f98a3335c072282d1db81aa6945ea477c18b70588",
  "kind": "def",
  "lexical_name": "applicableByHypRules",
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
  "slug": "applicablebyhyprules--e0ba83aea14e2ab02affbee1",
  "source": {
    "blob": "e9c783b92b58bedec3339b5489282421c34fd2eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 120,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Index/Variant73ba89f43c49e504125af055afbb78e26f25aa07cd5a59fe474bc500476f90f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e0ba83aea14e2ab02affbee1f69fc878d67651f8e87b9070277f0d6f19b4a053",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Index/Variant73ba89f43c49e504125af055afbb78e26f25aa07cd5a59fe474bc500476f90f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:00db9440af0e3aff1873ca8f98a3335c072282d1db81aa6945ea477c18b70588`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def applicableByHypRules (ri : Index α) (goal : MVarId)
    (include? : Rule α → Bool) :
    MetaM (Array (Rule α × Array IndexMatchLocation)) :=
  goal.withContext do
    let mut rs := #[]
    for localDecl in ← getLCtx do
      if localDecl.isImplementationDetail then
        continue
      let rules ← getUnify ri.byHyp localDecl.type
      for r in rules do
        if include? r then
          rs := rs.push (r, #[.hyp localDecl])
    return rs

-- May return duplicate `IndexMatchLocation`s.
@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Index/Variant73ba89f43c49e504125af055afbb78e26f25aa07cd5a59fe474bc500476f90f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Index/Variant73ba89f43c49e504125af055afbb78e26f25aa07cd5a59fe474bc500476f90f0.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9c783b92b58bedec3339b5489282421c34fd2eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
