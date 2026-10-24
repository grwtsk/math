# diophFn_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4bafb41ad3fbd84e81c28b2c57cd586917fef0a7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 482,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1f/1fdfc58ad924e8dc4a6a3beadcecfd943dc6b9f9d8f9534a0ad535c41bcd0590.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2571122f-3d9b-8720-3f12-15803b7ffd96",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6612c110-dfa5-b561-9aef-b15fa93721a7",
  "kind": "theorem",
  "lexical_name": "diophFn_comp",
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
  "slug": "diophfn-comp--d74f8e1a96556e9c26c7ae3b",
  "source": {
    "blob": "4bafb41ad3fbd84e81c28b2c57cd586917fef0a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 500,
    "line": 482,
    "path": "GRWTSK/NumberTheory/DiophantineEquations/Dioph/Variant1fdfc58ad924e8dc4a6a3beadcecfd943dc6b9f9d8f9534a0ad535c41bcd0590.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d74f8e1a96556e9c26c7ae3b0582007f0b299c5a64bb759c508bc34412264b4e",
  "verification": {
    "reference": "docs/verification/NumberTheory/DiophantineEquations/Dioph/Variant1fdfc58ad924e8dc4a6a3beadcecfd943dc6b9f9d8f9534a0ad535c41bcd0590.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6612c110-dfa5-b561-9aef-b15fa93721a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 482–500.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem diophFn_comp {f : Vector3 ℕ n → ℕ} (df : DiophFn f) (g : Vector3 ((α → ℕ) → ℕ) n)
    (dg : VectorAllP DiophFn g) : DiophFn fun v => f fun i => g i v :=
  dioph_comp ((diophFn_vec _).1 df) ((fun v ↦ v none) :: fun i v ↦ g i (v ∘ some)) <| by
    simp only [vectorAllP_cons]
    exact ⟨proj_dioph none, (vectorAllP_iff_forall _ _).2 fun i =>
          reindex_diophFn _ <| (vectorAllP_iff_forall _ _).1 dg _⟩

@[inherit_doc]
scoped notation:35 x " D∧ " y => Dioph.inter x y

@[inherit_doc]
scoped notation:35 x " D∨ " y => Dioph.union x y

@[inherit_doc]
scoped notation:30 "D∃" => Dioph.vec_ex1_dioph

/-- Local abbreviation for `Fin2.ofNat'` -/
scoped prefix:arg "&" => Fin2.ofNat'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/DiophantineEquations/Dioph/Variant1fdfc58ad924e8dc4a6a3beadcecfd943dc6b9f9d8f9534a0ad535c41bcd0590.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/DiophantineEquations/Dioph/Variant1fdfc58ad924e8dc4a6a3beadcecfd943dc6b9f9d8f9534a0ad535c41bcd0590.lean#L482).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bafb41ad3fbd84e81c28b2c57cd586917fef0a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
