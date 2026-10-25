# getSimpContext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cd7e7bfa233dbf4abdb26c3124a7b588914893d84871f53b4dae98be53a1b496",
  "kind": "def",
  "lexical_name": "getSimpContext",
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
  "slug": "getsimpcontext--9bd254af55a479832b073604",
  "source": {
    "blob": "2c7cfa824de083dacc2a2d73157b51d23aa33eb2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 142,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant7fcecd5d5eab26cf22253d8ac06d9b5f10453dc624738724bf53949ffcca0321.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9bd254af55a479832b073604d55ac151a79bb64462b0cc748c50f9356cd15cea",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant7fcecd5d5eab26cf22253d8ac06d9b5f10453dc624738724bf53949ffcca0321.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cd7e7bfa233dbf4abdb26c3124a7b588914893d84871f53b4dae98be53a1b496`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getSimpContext : MetaM Simp.Context := do
  let mut s : SimpTheorems := {}
  s ← s.addConst ``if_pos
  s ← s.addConst ``if_neg
  s ← s.addConst ``dif_pos
  s ← s.addConst ``dif_neg
  Simp.mkContext
   (simpTheorems  := #[s])
    (congrTheorems := (← getSimpCongrTheorems))
    (config        := { Simp.neutralConfig with dsimp := false, letToHave := true })

/--
Default `Simp.Context` for `simpIf` methods. It contains all congruence theorems, but
without rewriting rules. We use simprocs to reduce the if-then-else terms -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant7fcecd5d5eab26cf22253d8ac06d9b5f10453dc624738724bf53949ffcca0321.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant7fcecd5d5eab26cf22253d8ac06d9b5f10453dc624738724bf53949ffcca0321.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c7cfa824de083dacc2a2d73157b51d23aa33eb2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
