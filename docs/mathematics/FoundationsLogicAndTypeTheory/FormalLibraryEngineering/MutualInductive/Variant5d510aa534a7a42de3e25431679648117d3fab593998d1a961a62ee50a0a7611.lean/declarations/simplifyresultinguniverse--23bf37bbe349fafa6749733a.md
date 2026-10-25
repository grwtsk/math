# simplifyResultingUniverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:99e2fd89c785ecde9f038aa7ac043aed751c1935249f204e656759dd56fc53c0",
  "kind": "def",
  "lexical_name": "simplifyResultingUniverse",
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
  "slug": "simplifyresultinguniverse--23bf37bbe349fafa6749733a",
  "source": {
    "blob": "2f896ef31359aad0ee273d30032f02e843781076",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 785,
    "line": 743,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualInductive/Variant5d510aa534a7a42de3e25431679648117d3fab593998d1a961a62ee50a0a7611.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:23bf37bbe349fafa6749733a2b6a33ce1bcd3fc0d83a41ca4227b9a9a73aa0d8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualInductive/Variant5d510aa534a7a42de3e25431679648117d3fab593998d1a961a62ee50a0a7611.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:99e2fd89c785ecde9f038aa7ac043aed751c1935249f204e656759dd56fc53c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 743–785.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def simplifyResultingUniverse (u : Level) (paramConst := false) : Level :=
  let varies (l : Level) := l.hasMVar || (!paramConst && l.hasParam)
  let simpAcc (acc : LevelMap Nat) : LevelMap Nat :=
    -- If there's a variable, then these dominate at infinity; constants can be eliminated
    if (acc.any fun l _ => varies l) then acc.filter (fun l _ => varies l) else acc
  let germMax (acc : LevelMap Nat) : Level :=
    (simpAcc acc).fold (init := Level.zero) fun u l offset => mkLevelMax' u (l.addOffset offset)
  let accInsert (acc : LevelMap Nat) (u : Level) (offset : Nat) : LevelMap Nat :=
    acc.alter u (fun offset? => some (max (offset?.getD 0) offset))
  -- Simplifies `u+offset`, accumulating `max` arguments in `acc`.
  let rec simp (u : Level) (offset : Nat) (acc : LevelMap Nat) : LevelMap Nat :=
    match u with
    | .zero | .mvar _ | .param _ => accInsert acc u offset
    | .succ _ => simp u.getLevelOffset (offset + u.getOffset) acc
    | .max a b => simp b offset (simp a offset acc)
    | .imax a b =>
      if b.isAlwaysZero then
        accInsert acc Level.zero offset
      else if a.isAlwaysZero || b.isNeverZero then
        simp b offset (simp a offset acc)
      else
        /- The remaining simplification we consider is when `a ≤ b` then `imax a b = b`.
        We can compute `a ≤ b` by checking `max a b = b`.
        We only need `max a b ≈ b` for this,
        since `b ≤ imax a b ≤ max a b ≈ b` implies `imax a b ≈ b`. -/
        let acca := simp a 0 {}
        let accb := simp b 0 {}
        let accab := simpAcc (acca.fold (init := accb) accInsert)
        if accab.all (fun l n => if let some m := accb[l]? then n ≤ m else false) then
          accb.fold (init := acc) fun acc l n => accInsert acc l (n + offset)
        else
          accInsert acc (Level.imax (germMax acca) (germMax accb)) offset
  germMax (simp u 0 {})

/--
Checks that `u` has at most one universe level metavariable.
If it has a level metavariable, then applies the `simplifyResultingUniverse`
procedure to it and checks that the result is of the form `?m + k`.
Returns the simplified universe — this is used as an upper bound when collecting constraints
to solve for a least `?m`.

Throws an exception if `u` has metavariables and isn't of the right form for inference.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualInductive/Variant5d510aa534a7a42de3e25431679648117d3fab593998d1a961a62ee50a0a7611.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualInductive/Variant5d510aa534a7a42de3e25431679648117d3fab593998d1a961a62ee50a0a7611.lean#L743).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f896ef31359aad0ee273d30032f02e843781076` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
