# simpAllOrSimpAtStarStx

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:82ca95021836dafb3f5fc052a3ce0df22927f11a62e51d6fa14fe202d05942a5",
  "kind": "def",
  "lexical_name": "simpAllOrSimpAtStarStx",
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
  "slug": "simpallorsimpatstarstx--c0445e0d143dced0b28d2534",
  "source": {
    "blob": "635f6f292c602b3b900169fa0492029389fd2bc2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 155,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant8a80db1f89f465d4a59bb6f3f24ea7c7712b658128b5c93e25539fce0cf60f9a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c0445e0d143dced0b28d2534d7da4b775a0732a2bdd83a600f64c048c79a3ddb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant8a80db1f89f465d4a59bb6f3f24ea7c7712b658128b5c93e25539fce0cf60f9a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:82ca95021836dafb3f5fc052a3ce0df22927f11a62e51d6fa14fe202d05942a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def simpAllOrSimpAtStarStx [Monad m] [MonadQuotation m] (simpAll : Bool)
    (configStx? : Option Term) : m (Syntax.Tactic) :=
  if simpAll then
    match configStx? with
    | none => `(tactic| simp_all)
    | some cfg => `(tactic| simp_all ($(mkIdent `config):ident := $cfg))
  else
    match configStx? with
    | none => `(tactic| simp at *)
    | some cfg => `(tactic| simp ($(mkIdent `config):ident := $cfg) at *)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant8a80db1f89f465d4a59bb6f3f24ea7c7712b658128b5c93e25539fce0cf60f9a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant8a80db1f89f465d4a59bb6f3f24ea7c7712b658128b5c93e25539fce0cf60f9a.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `635f6f292c602b3b900169fa0492029389fd2bc2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
