# rawCheck_spec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b94ff40f11346fd563fcc348adfe864a9941a850",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 508,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Variants/systems/taxonomy/integration/formal/lean/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FrontendCorrespondence/Basic.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:41832bdb-25d3-81e7-06ce-be19a0894bf6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3d47bb50-729b-8e6e-832d-12b8e258ac62",
  "kind": "theorem",
  "lexical_name": "rawCheck_spec",
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
  "slug": "rawcheck-spec--832bfbffd9aa27d8d426897f",
  "source": {
    "blob": "b94ff40f11346fd563fcc348adfe864a9941a850",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 531,
    "line": 508,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variantb45a1db3ba64dc2a7fb614a83b7af52dc15325569a3daa111f848a8221b5f82b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:832bfbffd9aa27d8d426897f442690959363b26c3f3561562867292296d57d37",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variantb45a1db3ba64dc2a7fb614a83b7af52dc15325569a3daa111f848a8221b5f82b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d47bb50-729b-8e6e-832d-12b8e258ac62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 508–531.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rawCheck_spec (plan expected observed : Raw) (data : ReplayData) :
    rawCheck plan expected observed data = true ↔
      ∃ p e o, decode plan = some p ∧ decode expected = some e ∧
        decode observed = some o ∧ project p e o = some data ∧ guardCheck p e o data = true ∧ data.accepts = true := by
  unfold rawCheck
  split
  · rename_i p e o hp he ho
    simp only [Bool.and_eq_true, decide_eq_true_eq]
    constructor
    · intro ⟨⟨projected, guarded⟩, accepted⟩
      exact ⟨p, e, o, hp, he, ho, projected, guarded, accepted⟩
    · rintro ⟨p', e', o', hp', he', ho', projected, guarded, accepted⟩
      have hpp : p' = p := Option.some.inj (hp'.symm.trans hp)
      have hee : e' = e := Option.some.inj (he'.symm.trans he)
      have hoo : o' = o := Option.some.inj (ho'.symm.trans ho)
      subst p'; subst e'; subst o'
      exact ⟨⟨projected, guarded⟩, accepted⟩
  · rename_i failure
    simp only [Bool.false_eq_true, false_iff]
    rintro ⟨p, e, o, hp, he, ho, _, _, _⟩
    exact failure p e o hp he ho

/-- The Python-generated data may be arbitrary. Acceptance establishes that
it is the independent projection of the uniquely decoded literal input bytes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variantb45a1db3ba64dc2a7fb614a83b7af52dc15325569a3daa111f848a8221b5f82b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variantb45a1db3ba64dc2a7fb614a83b7af52dc15325569a3daa111f848a8221b5f82b.lean#L508).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b94ff40f11346fd563fcc348adfe864a9941a850` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
