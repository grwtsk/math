# pushCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:69412ffb1f1cdb8d081144bf3f70b8e7f1f8740c40da287142ff9dc6af81fb0b",
  "kind": "def",
  "lexical_name": "pushCore",
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
  "slug": "pushcore--53191edffd18cb8eb6865de1",
  "source": {
    "blob": "734a5a1ab956d0a0a9362e968e54dc8231910429",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 134,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Push/Varianta0cd34f313ca746cc04a59a9c3cd13ac40b4728048af4d8e8a42386b7f66c1f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:53191edffd18cb8eb6865de1102bbf7c60ce2b93bd74c615a1bc5b7923ff88d5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Push/Varianta0cd34f313ca746cc04a59a9c3cd13ac40b4728048af4d8e8a42386b7f66c1f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:69412ffb1f1cdb8d081144bf3f70b8e7f1f8740c40da287142ff9dc6af81fb0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pushCore (head : Head) (cfg : Config) (disch? : Option Simp.Discharge) (tgt : Expr) :
    MetaM Simp.Result := do
  let ctx : Simp.Context ← Simp.mkContext pushSimpConfig
      (simpTheorems := #[])
      (congrTheorems := ← getSimpCongrTheorems)
  let methods := match disch? with
    | none => { pre := pushStep head cfg, post _ := return .continue }
    | some disch => {
      pre := pushStep head cfg,
      post _ := return .continue,
      discharge? := disch,
      wellBehavedDischarge := false }
  (·.1) <$> Simp.main tgt ctx (methods := methods)

/-- Try to rewrite using a `pull` lemma. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Push/Varianta0cd34f313ca746cc04a59a9c3cd13ac40b4728048af4d8e8a42386b7f66c1f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Push/Varianta0cd34f313ca746cc04a59a9c3cd13ac40b4728048af4d8e8a42386b7f66c1f5.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `734a5a1ab956d0a0a9362e968e54dc8231910429` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
