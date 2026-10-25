# change_preserves_valid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4b40b4ba-3bb9-e3cd-81fd-ec1aff39ef69",
  "kind": "theorem",
  "lexical_name": "change_preserves_valid",
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
  "slug": "change-preserves-valid--317a178a897b1e1472f1aca8",
  "source": {
    "blob": "5c15e98bc719a5799e742195aa26fe0550b30e3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 354,
    "line": 281,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/StateTransition/ResearchState.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:317a178a897b1e1472f1aca820d5db393f530795072dc01089dd763785ef91ae",
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

Occurrence: `result:4b40b4ba-3bb9-e3cd-81fd-ec1aff39ef69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–354.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem change_preserves_valid {s t : State catalog Core} (change : Change CoreMeaning s t)
    (valid : Valid catalog CoreMeaning s) : Valid catalog CoreMeaning t := by
  have conserve := change_conserves change
  cases change with
  | selectTarget event claim allowed unselected declared =>
      refine { valid with frontier_declared := ?_, target_declared := ?_, route := ?_ }
      · intro q member
        simp only [advance, Finset.mem_insert] at member
        rcases member with rfl | member
        · exact declared
        · exact valid.frontier_declared member
      · intro q target
        have same : claim = q := Option.some.inj target
        exact same ▸ declared
      · intro q target holds
        have same : claim = q := Option.some.inj target
        exact same ▸ holds claim (by simp [advance])
  | introduce event claim allowed source =>
      refine { valid with frontier_declared := ?_, proved_declared := ?_, sources_bound := ?_, target_declared := ?_, route := ?_ }
      · intro q member
        simp only [advance, Finset.mem_insert] at member ⊢
        exact member.imp_right (fun member ↦ valid.frontier_declared member)
      · intro q member
        exact Finset.mem_insert_of_mem (valid.proved_declared member)
      · intro q member
        simp only [advance, Finset.mem_insert] at member
        rcases member with rfl | member
        · exact source
        · exact valid.sources_bound q member
      · intro q target
        exact Finset.mem_insert_of_mem (valid.target_declared q target)
      · intro q target holds
        exact valid.route q target (conserve holds)
  | registerProof event claim allowed declared proof =>
      refine { valid with proved_declared := ?_, proved_sound := ?_ }
      · intro q member
        simp only [advance, Finset.mem_insert] at member
        rcases member with rfl | member
        · exact declared
        · exact valid.proved_declared member
      · intro q member
        simp only [advance, Finset.mem_insert] at member
        rcases member with rfl | member
        · exact proof
        · exact valid.proved_sound q member
  | transfer event rule allowed pending premises side =>
      refine { valid with frontier_declared := ?_, route := ?_ }
      · intro q member
        simp only [advance, Finset.mem_union, Finset.mem_erase] at member
        rcases member with ⟨_, member⟩ | member
        · exact valid.frontier_declared member
        · exact premises member
      · intro q target holds
        exact valid.route q target (conserve holds)
  | discharge event claim allowed pending proof =>
      refine { valid with frontier_declared := ?_, route := ?_ }
      · intro q member
        exact valid.frontier_declared (Finset.mem_of_mem_erase member)
      · intro q target holds
        exact valid.route q target (conserve holds)
  | replaceCore event core allowed compatible =>
      exact { valid with core_sound := compatible.mp valid.core_sound }
  | revisePath event frontier allowed declared coverage =>
      refine { valid with frontier_declared := declared, route := ?_ }
      intro q target holds
      exact valid.route q target (coverage holds)
  | incorporateSource event source allowed =>
      refine { valid with sources_bound := ?_ }
      intro q member
      exact List.mem_append_left _ (valid.sources_bound q member)
  | conditional | counterexample | reviseSpecification | observe => exact { valid with }

omit [DecidableEq Claim] in
/-- The empty unselected state is valid whenever its chosen core specification holds. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/StateTransition/ResearchState.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/StateTransition/ResearchState.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c15e98bc719a5799e742195aa26fe0550b30e3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
