# DiseqCnstr.split

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e1e42d8b11e724f1bc425cc1f57d94f06b350348624fe121ed0be9bf89503c12",
  "kind": "def",
  "lexical_name": "DiseqCnstr.split",
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
  "slug": "diseqcnstr-split--71a14fa3f00fa31059cc56a9",
  "source": {
    "blob": "8c050938a5134c7c12942150d1c4136f35332e88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 364,
    "line": 349,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Varianta2ef553eab7fe93b06d9c39239c1b543c6849d0fe27a7cc77a235a044fd0603c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:71a14fa3f00fa31059cc56a99dc947187ede078317ed513a2650bfc738f14ded",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Varianta2ef553eab7fe93b06d9c39239c1b543c6849d0fe27a7cc77a235a044fd0603c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e1e42d8b11e724f1bc425cc1f57d94f06b350348624fe121ed0be9bf89503c12`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 349–364.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def DiseqCnstr.split (c : DiseqCnstr) : SearchM LeCnstr := do
  let fvarId ← if let some fvarId := (← get').diseqSplits.find? c.p then
    trace[grind.debug.lia.search.split] "{← c.pp}, reusing {fvarId.name}"
    pure fvarId
  else
    let fvarId ← mkCase (.diseq c)
    trace[grind.debug.lia.search.split] "{← c.pp}, {fvarId.name}"
    modify' fun s => { s with diseqSplits := s.diseqSplits.insert c.p fvarId }
    pure fvarId
  let p₂ := c.p.addConst 1
  return { p := p₂, h := .dec fvarId }

/--
Given `c₁` of the form `a₁*x + p₁ ≠ 0`, and `c₂` of the form `b*x + p ≤ 0`
splits `c₁` and resolve with `c₂`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Varianta2ef553eab7fe93b06d9c39239c1b543c6849d0fe27a7cc77a235a044fd0603c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Varianta2ef553eab7fe93b06d9c39239c1b543c6849d0fe27a7cc77a235a044fd0603c.lean#L349).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c050938a5134c7c12942150d1c4136f35332e88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
