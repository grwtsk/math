# formatLemmas

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b4c2a79a49e7dcdc5cf86791dca1fa874c945f28f7fcee04c96c93bc1137549b",
  "kind": "def",
  "lexical_name": "formatLemmas",
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
  "slug": "formatlemmas--63b5cd78263d43ceb1072a56",
  "source": {
    "blob": "e09c4bdf3e81a14f1d05ebb37a524bbb80368faf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 117,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant3e84fcdc00aed39d17f193a8a15ac732defe4949a34eccdea317a3b98cc729cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:63b5cd78263d43ceb1072a567d30cfcc92b7bc556205a3266f32c0084e082f82",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant3e84fcdc00aed39d17f193a8a15ac732defe4949a34eccdea317a3b98cc729cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b4c2a79a49e7dcdc5cf86791dca1fa874c945f28f7fcee04c96c93bc1137549b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def formatLemmas (usedSimps : Simp.UsedSimps) (simpName : String) (higherOrder : Option Bool) :
    MetaM MessageData := do
  let mut args := if higherOrder == none then #[] else #[m!"*"]
  let env ← getEnv
  for (thm, _) in usedSimps.map.toArray.qsort (·.2 < ·.2) do
    if let .decl declName := thm then
      if env.contains declName && declName != ``eq_self then
        args := args.push m! "{← mkConstWithFreshMVarLevels declName}"
  let contextual? := if higherOrder == some true then " +contextual" else ""
  return m!"{simpName}{contextual?} only {args.toList}"

/-- A linter for simp lemmas whose lhs is not in simp-normal form, and which hence never fire. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant3e84fcdc00aed39d17f193a8a15ac732defe4949a34eccdea317a3b98cc729cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant3e84fcdc00aed39d17f193a8a15ac732defe4949a34eccdea317a3b98cc729cb.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e09c4bdf3e81a14f1d05ebb37a524bbb80368faf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
