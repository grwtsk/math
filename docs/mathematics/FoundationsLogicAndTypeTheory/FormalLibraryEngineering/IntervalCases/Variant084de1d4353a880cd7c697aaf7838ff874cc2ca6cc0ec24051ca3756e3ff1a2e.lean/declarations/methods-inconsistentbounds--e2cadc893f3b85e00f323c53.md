# Methods.inconsistentBounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0946cb2614d2c45c4791921c98031204532e5b77ea55ae23f6fc16295fa57361",
  "kind": "def",
  "lexical_name": "Methods.inconsistentBounds",
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
  "slug": "methods-inconsistentbounds--e2cadc893f3b85e00f323c53",
  "source": {
    "blob": "010740ceebf31650bfd954c627bfdd4d12b5a583",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 180,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant084de1d4353a880cd7c697aaf7838ff874cc2ca6cc0ec24051ca3756e3ff1a2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e2cadc893f3b85e00f323c536e2ba9ed3940bfbad92c87f2ffb9261bdae0c33e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant084de1d4353a880cd7c697aaf7838ff874cc2ca6cc0ec24051ca3756e3ff1a2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0946cb2614d2c45c4791921c98031204532e5b77ea55ae23f6fc16295fa57361`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Methods.inconsistentBounds (m : Methods)
    (z1 z2 : Bound) (e1 e2 p1 p2 e : Expr) : MetaM Expr := do
  match z1, z2 with
  | .le lo, .lt hi =>
    if lo == hi then return p2.app p1
    return p2.app (← mkAppM ``le_trans #[← m.proveLE e2 e1, p1])
  | .lt lo, .le hi =>
    if lo == hi then return p1.app p2
    return p1.app (← mkAppM ``le_trans #[p2, ← m.proveLE e2 e1])
  | .le _, .le _ => return (← m.proveLT e2 e1).app (← mkAppM ``le_trans #[p1, p2])
  | .lt lo, .lt hi =>
    if hi ≤ lo then return p1.app (← mkAppM ``le_of_not_le_of_le #[p2, ← m.proveLE e2 e1])
    let e3 ← m.mkNumeral (hi - 1)
    let p3 ← m.roundDown e e2 e3 p2
    return p1.app (← mkAppM ``le_trans #[p3, ← m.proveLE e3 e1])

/--
Given `(z1, e1, p1)` a lower bound on `e` and `(z2, e2, p2)` an upper bound on `e`, such that the
distance between the bounds matches the number of `cases` in the subarray (which must be positive),
proves the goal `g` using the metavariables in the array by recursive bisection.
This is the core of the tactic, producing a case tree of if statements which bottoms out
at the `cases`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant084de1d4353a880cd7c697aaf7838ff874cc2ca6cc0ec24051ca3756e3ff1a2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant084de1d4353a880cd7c697aaf7838ff874cc2ca6cc0ec24051ca3756e3ff1a2e.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `010740ceebf31650bfd954c627bfdd4d12b5a583` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
