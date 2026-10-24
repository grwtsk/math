# piFinsetUnion_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9c3d70bf9b5e9300b633b834167854d872360a80",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 652,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/61/610233da92210bc5b2afc728468b5bb2c4894606286ded6628ac15f4dfec93b5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:536ae8a6-07b0-e1bf-13aa-58537a8a5f78",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b9a834b4-10c7-e17c-4947-931003c5781b",
  "kind": "lemma",
  "lexical_name": "piFinsetUnion_right",
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
  "slug": "pifinsetunion-right--64afb8f51d20540ab6faf630",
  "source": {
    "blob": "9c3d70bf9b5e9300b633b834167854d872360a80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 659,
    "line": 652,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant610233da92210bc5b2afc728468b5bb2c4894606286ded6628ac15f4dfec93b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:64afb8f51d20540ab6faf630559e54cea237dce7cc57e87b14f545c48b30471a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant610233da92210bc5b2afc728468b5bb2c4894606286ded6628ac15f4dfec93b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9a834b4-10c7-e17c-4947-931003c5781b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 652–659.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma piFinsetUnion_right {ι} [DecidableEq ι] (α : ι → Type*) {s t : Finset ι}
    (h : Disjoint s t) {f g} {i : ι} (hi : i ∈ t) (hi' : i ∈ s ∪ t) :
    Equiv.piFinsetUnion α h (f, g) ⟨i, hi'⟩ = g ⟨i, hi⟩ := by
  simp_rw [piFinsetUnion, sumPiEquivProdPi, piCongrLeft, piCongrLeft', trans_apply, coe_fn_symm_mk]
  rw! [Finset.union_symm_right h hi hi']
  rfl

/-- A finset is equivalent to its coercion as a set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant610233da92210bc5b2afc728468b5bb2c4894606286ded6628ac15f4dfec93b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant610233da92210bc5b2afc728468b5bb2c4894606286ded6628ac15f4dfec93b5.lean#L652).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c3d70bf9b5e9300b633b834167854d872360a80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
