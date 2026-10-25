# stale_premise_counterexample

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:36a77d15-2ea4-fa27-fb33-10d616e37a9d",
  "kind": "theorem",
  "lexical_name": "stale_premise_counterexample",
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
  "slug": "stale-premise-counterexample--bf415f878b631baeb48e6a75",
  "source": {
    "blob": "32ebaa0270ec25ea3646ebe7375462396f05e346",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 98,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/DecisionCertificate.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf415f878b631baeb48e6a75d185dcc8570c01daf9e84048bd6337b22d27ea26",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/DecisionCertificate__SourceOccurrence7f144f5856406fa72a53873f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36a77d15-2ea4-fa27-fb33-10d616e37a9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stale_premise_counterexample :
    ∃ original revised : Packed Nat Nat,
      original.references = revised.references ∧
      original.references.length = revised.references.length ∧
      original.dictionary.length = revised.dictionary.length ∧
      Valid original ∧ Valid revised ∧
      DecodesSatisfying original (fun entries => ∀ entry ∈ entries, entry.2 ≤ 7) ∧
      ¬ DecodesSatisfying revised (fun entries => ∀ entry ∈ entries, entry.2 ≤ 7) := by
  refine ⟨pack [(11, 7)], ⟨[8], [(11, 0)]⟩, rfl, rfl, rfl, pack_valid _, ?_, ?_, ?_⟩
  · simp [Valid]
  · exact ⟨[(11, 7)], unpack_pack _, by simp⟩
  · rintro ⟨decoded, hdecoded, hpredicate⟩
    have hentries : decoded = [(11, 8)] :=
      Option.some.inj (hdecoded.symm.trans (by rfl))
    subst decoded
    simp at hpredicate

end GRWTSK.Logic.FiniteSequences.DecisionCertificate
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/DecisionCertificate__SourceOccurrence7f144f5856406fa72a53873f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/DecisionCertificate.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32ebaa0270ec25ea3646ebe7375462396f05e346` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
