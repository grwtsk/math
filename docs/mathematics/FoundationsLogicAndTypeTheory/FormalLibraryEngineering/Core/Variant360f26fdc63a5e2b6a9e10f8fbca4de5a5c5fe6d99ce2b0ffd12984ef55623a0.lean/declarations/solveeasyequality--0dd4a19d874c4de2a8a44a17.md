# solveEasyEquality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2c5b8ea67c87ca73673b0e7c95c0355943eb635a615fb0f650ad62742dd0b527",
  "kind": "def",
  "lexical_name": "solveEasyEquality",
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
  "slug": "solveeasyequality--0dd4a19d874c4de2a8a44a17",
  "source": {
    "blob": "a79450ed09eccb18156b2f46b604fda60a4f157a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 347,
    "line": 324,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant360f26fdc63a5e2b6a9e10f8fbca4de5a5c5fe6d99ce2b0ffd12984ef55623a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0dd4a19d874c4de2a8a44a17ec542098bacd694ea850d2c657bf9aac2cfa4080",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant360f26fdc63a5e2b6a9e10f8fbca4de5a5c5fe6d99ce2b0ffd12984ef55623a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2c5b8ea67c87ca73673b0e7c95c0355943eb635a615fb0f650ad62742dd0b527`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 324–347.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def solveEasyEquality (p : Problem) (c : Coeffs) : Problem :=
  let i := c.findIdx? (·.natAbs = 1) |>.getD 0 -- findIdx? is always some
  let sign := c.get i |> Int.sign
  match p.constraints[c]? with
  | some f =>
    let init :=
    { assumptions := p.assumptions
      eliminations := (f, i, sign) :: p.eliminations }
    p.constraints.fold (init := init) fun p' coeffs g =>
      match Coeffs.get coeffs i with
      | 0 =>
        p'.addConstraint g
      | ci =>
        let k := -1 * sign * ci
        p'.addConstraint (Fact.combo k f 1 g).tidy
  | _ => p -- unreachable

open Lean in
/--
We deal with a hard equality by introducing a new easy equality.

After solving the easy equality,
the minimum lexicographic value of `(c.minNatAbs, c.maxNatAbs)` will have been reduced.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant360f26fdc63a5e2b6a9e10f8fbca4de5a5c5fe6d99ce2b0ffd12984ef55623a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant360f26fdc63a5e2b6a9e10f8fbca4de5a5c5fe6d99ce2b0ffd12984ef55623a0.lean#L324).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a79450ed09eccb18156b2f46b604fda60a4f157a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
