# processConstructors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d6f6d342af1ea1f34c0b5b4ca4d9e57a9b9838578fcd28c892b0742432090d46",
  "kind": "def",
  "lexical_name": "processConstructors",
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
  "slug": "processconstructors--be8451ae6826eed53beda5a2",
  "source": {
    "blob": "77ea0577850a57144aa89b9217bf41e1eed024a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 346,
    "line": 329,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RCases/Variant7aced9eec6fbfad41d5b8469e598701c9b232593963b4e85252cbde3d02b7c80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:be8451ae6826eed53beda5a2b5a97742a6291eeb7257cd6420a21877df94082a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RCases/Variant7aced9eec6fbfad41d5b8469e598701c9b232593963b4e85252cbde3d02b7c80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d6f6d342af1ea1f34c0b5b4ca4d9e57a9b9838578fcd28c892b0742432090d46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 329–346.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def processConstructors (ref : Syntax) (params : Nat) (altVarNames : Array AltVarNames := #[]) :
    ListΣ Name → ListΣ RCasesPatt → MetaM (Array AltVarNames × ListΣ (Name × ListΠ RCasesPatt))
  | [], _ => pure (altVarNames, [])
  | c :: cs, ps => do
    let info := (← getFunInfo (← mkConstWithLevelParams c)).paramInfo
    let p := ps.headD default
    let t := ps.tailD []
    let ((explicit, h), t) := match cs, t with
    | [], _ :: _ => ((false, [RCasesPatt.alts ref ps]), [])
    | _,  _      => (p.asTuple, t)
    let (ns, ps) := processConstructor p.ref info explicit params h
    let (altVarNames, r) ← processConstructors ref params (altVarNames.push ⟨true, ns⟩) cs t
    pure (altVarNames, (c, ps) :: r)

open Elab Tactic

-- TODO(Mario): this belongs in core
/-- Like `Lean.Meta.subst`, but preserves the `FVarSubst`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RCases/Variant7aced9eec6fbfad41d5b8469e598701c9b232593963b4e85252cbde3d02b7c80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RCases/Variant7aced9eec6fbfad41d5b8469e598701c9b232593963b4e85252cbde3d02b7c80.lean#L329).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77ea0577850a57144aa89b9217bf41e1eed024a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
