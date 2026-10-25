# refineWithDiseq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aa2ef35b50a5744d585fd615b5a8913c5a883a4d77e13a1bb5e1eb03c8c560b0",
  "kind": "def",
  "lexical_name": "refineWithDiseq",
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
  "slug": "refinewithdiseq--dab38b5f2a471b9bc97c86b1",
  "source": {
    "blob": "64113a2b7a75b6958a994baa69871052d6f8e57a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 92,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeCnstr/Varianted5d07272d617934c094e92a2f6289164f7db9424e25059b35506ca4395948fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dab38b5f2a471b9bc97c86b158084df73797e79dc1e5ebe7d084ffbc5698be50",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeCnstr/Varianted5d07272d617934c094e92a2f6289164f7db9424e25059b35506ca4395948fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aa2ef35b50a5744d585fd615b5a8913c5a883a4d77e13a1bb5e1eb03c8c560b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def refineWithDiseq (c : LeCnstr) : GoalM LeCnstr := do
  let .add _ x _ := c.p | c.throwUnexpected
  let mut c := c
  repeat
    let some c' ← refineWithDiseqStep? x c | return c
    c := c'
  return c
where
  refineWithDiseqStep? (x : Var) (c : LeCnstr) : GoalM (Option LeCnstr) := do
    let s ← get'
    let cs' := s.diseqs[x]!
    for c' in cs' do
      if c.p == c'.p || c.p.isNegEq c'.p then
        -- Remove `c'`
        modify' fun s => { s with diseqs := s.diseqs.modify x fun cs' => cs'.filter fun c => c.p != c'.p }
        return some { p := c.p.addConst 1, h := .ofLeDiseq c c' }
    return none

set_option compiler.ignoreBorrowAnnotation true in
@[export lean_grind_cutsat_assert_le]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeCnstr/Varianted5d07272d617934c094e92a2f6289164f7db9424e25059b35506ca4395948fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeCnstr/Varianted5d07272d617934c094e92a2f6289164f7db9424e25059b35506ca4395948fa.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64113a2b7a75b6958a994baa69871052d6f8e57a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
