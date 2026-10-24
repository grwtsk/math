# iSup_induction'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "49b32bd83e8a3d594078fad84215f0c3e76463cf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 210,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/41/41c93f7e16c218dacf0708bf0c1895cf5cfed779587161cd32e78bb750744815.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:019a3fca-19b2-6c09-1560-c9e92e8bac67",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b4d02ee6-1dba-94b4-e91d-101de5d2bc5c",
  "kind": "theorem",
  "lexical_name": "iSup_induction'",
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
  "slug": "isup-induction--b64fa8d7cec7c89cf4d202a4",
  "source": {
    "blob": "49b32bd83e8a3d594078fad84215f0c3e76463cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 210,
    "path": "GRWTSK/Algebra/Lattice/Variant41c93f7e16c218dacf0708bf0c1895cf5cfed779587161cd32e78bb750744815.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b64fa8d7cec7c89cf4d202a48f5895c9437813ad5f19a8fa5d28679ec558eeeb",
  "verification": {
    "reference": "docs/verification/Algebra/Lattice/Variant41c93f7e16c218dacf0708bf0c1895cf5cfed779587161cd32e78bb750744815.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b4d02ee6-1dba-94b4-e91d-101de5d2bc5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iSup_induction' {ι : Sort*} (S : ι → Subalgebra R A) {motive : ∀ x, (x ∈ ⨆ i, S i) → Prop}
    {x : A} (mem : x ∈ ⨆ i, S i)
    (basic : ∀ (i) (x) (hx : x ∈ S i), motive x (mem_iSup_of_mem i hx))
    (zero : motive 0 (zero_mem _)) (one : motive 1 (one_mem _))
    (add : ∀ x y hx hy, motive x hx → motive y hy → motive (x + y) (add_mem ‹_› ‹_›))
    (mul : ∀ x y hx hy, motive x hx → motive y hy → motive (x * y) (mul_mem ‹_› ‹_›))
    (algebraMap : ∀ r, motive (algebraMap R A r) (Subalgebra.algebraMap_mem _ ‹_›)) :
    motive x mem := by
  refine Exists.elim ?_ fun (hx : x ∈ ⨆ i, S i) (hc : motive x hx) ↦ hc
  exact iSup_induction S (motive := fun x' ↦ ∃ h, motive x' h) mem
    (fun _ _ h ↦ ⟨_, basic _ _ h⟩) ⟨_, zero⟩ ⟨_, one⟩ (fun _ _ h h' ↦ ⟨_, add _ _ _ _ h.2 h'.2⟩)
    (fun _ _ h h' ↦ ⟨_, mul _ _ _ _ h.2 h'.2⟩) fun _ ↦ ⟨_, algebraMap _⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Lattice/Variant41c93f7e16c218dacf0708bf0c1895cf5cfed779587161cd32e78bb750744815.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Lattice/Variant41c93f7e16c218dacf0708bf0c1895cf5cfed779587161cd32e78bb750744815.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49b32bd83e8a3d594078fad84215f0c3e76463cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
