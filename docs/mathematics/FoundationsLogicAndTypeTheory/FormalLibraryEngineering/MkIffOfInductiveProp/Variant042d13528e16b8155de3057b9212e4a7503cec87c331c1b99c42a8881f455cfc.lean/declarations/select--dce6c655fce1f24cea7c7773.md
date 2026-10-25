# select

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bb26018bc2594571173f57528568b9467d8c6d278f551774c10a60990a143f9d",
  "kind": "def",
  "lexical_name": "select",
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
  "slug": "select--dce6c655fce1f24cea7c7773",
  "source": {
    "blob": "7d1cde6ec90f81dff0899d0aba353cae044540d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 34,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant042d13528e16b8155de3057b9212e4a7503cec87c331c1b99c42a8881f455cfc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dce6c655fce1f24cea7c7773a821c4e698c55300ac81732e3886f9186183f26b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant042d13528e16b8155de3057b9212e4a7503cec87c331c1b99c42a8881f455cfc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bb26018bc2594571173f57528568b9467d8c6d278f551774c10a60990a143f9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def select (m n : Nat) (goal : MVarId) : MetaM MVarId :=
  match m,n with
  | 0, 0             => pure goal
  | 0, (_ + 1)       => do
    let [new_goal] ← goal.nthConstructor `left 0 (some 2)
      | throwError "expected only one new goal"
    pure new_goal
  | (m + 1), (n + 1) => do
    let [new_goal] ← goal.nthConstructor `right 1 (some 2)
      | throwError "expected only one new goal"
    select m n new_goal
  | _, _             => failure

/-- `compactRelation bs as_ps`: Produce a relation of the form:
```lean
R := fun as ↦ ∃ bs, ⋀_i a_i = p_i[bs]
```
This relation is user-visible, so we compact it by removing each `b_j` where a `p_i = b_j`, and
hence `a_i = b_j`. We need to take care when there are `p_i` and `p_j` with `p_i = p_j = b_k`.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant042d13528e16b8155de3057b9212e4a7503cec87c331c1b99c42a8881f455cfc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant042d13528e16b8155de3057b9212e4a7503cec87c331c1b99c42a8881f455cfc.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d1cde6ec90f81dff0899d0aba353cae044540d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
