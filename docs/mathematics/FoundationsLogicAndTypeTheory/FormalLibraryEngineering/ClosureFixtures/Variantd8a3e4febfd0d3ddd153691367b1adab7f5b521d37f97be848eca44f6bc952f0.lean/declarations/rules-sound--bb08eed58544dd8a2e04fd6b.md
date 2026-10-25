# rules_sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dd8a7c8d5ff112d1097d1b44ad04db9286baca9b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 24,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d8/d8a3e4febfd0d3ddd153691367b1adab7f5b521d37f97be848eca44f6bc952f0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:40f057d6-2549-e89c-05d9-4fe66f5e0c02",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7e622b24-e36c-d5cf-392b-9e7f2f92c223",
  "kind": "theorem",
  "lexical_name": "rules_sound",
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
  "slug": "rules-sound--bb08eed58544dd8a2e04fd6b",
  "source": {
    "blob": "dd8a7c8d5ff112d1097d1b44ad04db9286baca9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 24,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClosureFixtures/Variantd8a3e4febfd0d3ddd153691367b1adab7f5b521d37f97be848eca44f6bc952f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb08eed58544dd8a2e04fd6bc36d23984b5171829eec6b6ce95826b8d9a4a34c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClosureFixtures/Variantd8a3e4febfd0d3ddd153691367b1adab7f5b521d37f97be848eca44f6bc952f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e622b24-e36c-d5cf-392b-9e7f2f92c223`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rules_sound (P Q : Prop) :
    ∀ rule ∈ rules, (∀ x ∈ rule.premises, meaning P Q x) → meaning P Q rule.conclusion := by
  intro rule hrule hpremises
  simp only [rules, Finset.mem_insert, Finset.mem_singleton] at hrule
  rcases hrule with rfl | rfl
  · have h := hpremises 0 (by simp)
    simpa [meaning] using (show P ∧ Q from by simpa [meaning] using h).1
  · have h := hpremises 1 (by simp)
    have hp : P := by simpa [meaning] using h
    simpa [meaning] using (Or.inl hp : P ∨ Q)

/-- Starting from a proof of the shared carrier, every computed consequence is true. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClosureFixtures/Variantd8a3e4febfd0d3ddd153691367b1adab7f5b521d37f97be848eca44f6bc952f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClosureFixtures/Variantd8a3e4febfd0d3ddd153691367b1adab7f5b521d37f97be848eca44f6bc952f0.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd8a7c8d5ff112d1097d1b44ad04db9286baca9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
