# _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PolyIsZero.Variant6b0d2d3ba0e2443890d5e1a5b6ac563d6e58b5e5bbe848a0c1eaf28087cbb6d2.Int.Internal.Linear.Poly.findVarToSubst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:df046e01bc812a6472238e0e65af3bcb0a3985d8d1960810dccbe42f6197994c",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PolyIsZero.Variant6b0d2d3ba0e2443890d5e1a5b6ac563d6e58b5e5bbe848a0c1eaf28087cbb6d2.Int.Internal.Linear.Poly.findVarToSubst",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-polyi--cb11c131fe545ebaae410007",
  "source": {
    "blob": "9d78ef952cbc364735b7e3b55131bc22f92763d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 245,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant77ce5c10da4e0163f9d9654b057821c584963a30768502ff19044841b0334eec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cb11c131fe545ebaae4100073906df4e1a295ffe303b0f5ef7e17e7f292f5047",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant77ce5c10da4e0163f9d9654b057821c584963a30768502ff19044841b0334eec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:df046e01bc812a6472238e0e65af3bcb0a3985d8d1960810dccbe42f6197994c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PolyIsZero.Variant6b0d2d3ba0e2443890d5e1a5b6ac563d6e58b5e5bbe848a0c1eaf28087cbb6d2.Int.Internal.Linear.Poly.findVarToSubst (p : Poly) : GoalM (Option (Int × Var × EqCnstr)) := do
  match p with
  | .num _ => return none
  | .add k x p =>
    if let some c := (← get').elimEqs[x]! then
      return some (k, x, c)
    else
      findVarToSubst p

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant77ce5c10da4e0163f9d9654b057821c584963a30768502ff19044841b0334eec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant77ce5c10da4e0163f9d9654b057821c584963a30768502ff19044841b0334eec.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d78ef952cbc364735b7e3b55131bc22f92763d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
