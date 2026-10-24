# eq_of_one_to_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b607233fb0ad67c341d8ed799bfe1e25faf6413a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 485,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/61/618f11ad48cadbf36ad3f0e8f7b234946212d52874dc42874e30138b7372e2eb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c7e557cd-55ca-0b7d-543d-cc63ffab562d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:beffca46-b054-8bd3-ae87-7ed14217714d",
  "kind": "theorem",
  "lexical_name": "eq_of_one_to_two",
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
  "slug": "eq-of-one-to-two--2745e999d1abfa6e0440b347",
  "source": {
    "blob": "b607233fb0ad67c341d8ed799bfe1e25faf6413a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 516,
    "line": 485,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant618f11ad48cadbf36ad3f0e8f7b234946212d52874dc42874e30138b7372e2eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2745e999d1abfa6e0440b347bf4a17b4f1d8e366f3e3c32dd8dfa89f1890b6a2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant618f11ad48cadbf36ad3f0e8f7b234946212d52874dc42874e30138b7372e2eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:beffca46-b054-8bd3-ae87-7ed14217714d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 485–516.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_of_one_to_two (f : ⦋1⦌ ⟶ ⦋2⦌) :
    (∃ i, f = (δ (n := 1) i)) ∨ ∃ a, f = SimplexCategory.const _ _ a := by
  have : f.toOrderHom 0 ≤ f.toOrderHom 1 := f.toOrderHom.monotone (by decide : (0 : Fin 2) ≤ 1)
  match e0 : f.toOrderHom 0, e1 : f.toOrderHom 1 with
  | 1, 2 =>
    refine .inl ⟨0, ?_⟩
    ext i : 3
    match i with
    | 0 => exact e0
    | 1 => exact e1
  | 0, 2 =>
    refine .inl ⟨1, ?_⟩
    ext i : 3
    match i with
    | 0 => exact e0
    | 1 => exact e1
  | 0, 1 =>
    refine .inl ⟨2, ?_⟩
    ext i : 3
    match i with
    | 0 => exact e0
    | 1 => exact e1
  | 0, 0 | 1, 1 | 2, 2 =>
    refine .inr ⟨f.toOrderHom 0, ?_⟩
    ext i : 3
    match i with
    | 0 => rfl
    | 1 => exact e1.trans e0.symm
  | 1, 0 | 2, 0 | 2, 1 =>
    rw [e0, e1] at this
    exact Not.elim (by decide) this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant618f11ad48cadbf36ad3f0e8f7b234946212d52874dc42874e30138b7372e2eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant618f11ad48cadbf36ad3f0e8f7b234946212d52874dc42874e30138b7372e2eb.lean#L485).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b607233fb0ad67c341d8ed799bfe1e25faf6413a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
