# change_conserves

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:37622569-5345-7ad6-84b5-82298c1ef6d3",
  "kind": "theorem",
  "lexical_name": "change_conserves",
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
  "slug": "change-conserves--7ddc2ff4843293ace11ac6f0",
  "source": {
    "blob": "5c15e98bc719a5799e742195aa26fe0550b30e3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 239,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/StateTransition/ResearchState.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ddc2ff4843293ace11ac6f07dc0a49f7cab137afa67b729299f2e754d318849",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/StateTransition/ResearchState.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:37622569-5345-7ad6-84b5-82298c1ef6d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–265.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem change_conserves {s t : State catalog Core} (change : Change CoreMeaning s t) :
    Holds catalog t.frontier → Holds catalog s.frontier := by
  cases change with
  | selectTarget event claim allowed unselected declared =>
      intro holds old member
      exact holds old (by simp [advance, member])
  | introduce event claim allowed source =>
      intro holds old member
      exact holds old (by simp [advance, member])
  | transfer event rule allowed pending premises side =>
      intro holds old member
      by_cases same : old = rule.rule.conclusion
      · subst old
        apply rule.sound () side
        intro premise required
        exact holds premise (by simp [advance, required])
      · exact holds old (by simp [advance, member, same])
  | discharge event claim allowed pending proof =>
      intro holds old member
      by_cases same : old = claim
      · exact same.symm ▸ proof
      · exact holds old (by simp [advance, member, same])
  | revisePath event frontier allowed declared coverage => exact coverage
  | registerProof | conditional | counterexample | replaceCore | incorporateSource |
      reviseSpecification | observe => exact fun holds ↦ holds

/-- A selected target cannot be silently replaced, including during a path revision. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/StateTransition/ResearchState.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/StateTransition/ResearchState.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c15e98bc719a5799e742195aa26fe0550b30e3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
