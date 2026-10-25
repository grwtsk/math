# isSemilinearSet_formula_realize_semilinear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "da414992aa3fb9d85586b9d8f25f58d20e01b36e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 138,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a3/a3f36b872055ea49734d08d00516f38edd8d06272b79fc3c4032e6b4b0170b98.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cd74306f-da96-21ff-a1ff-1865074a370e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b05f98a9-e117-edd2-f167-97d8ba113d1d",
  "kind": "lemma",
  "lexical_name": "isSemilinearSet_formula_realize_semilinear",
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
  "slug": "issemilinearset-formula-realize-semilinear--12090885faccac7b9fd160ed",
  "source": {
    "blob": "da414992aa3fb9d85586b9d8f25f58d20e01b36e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 138,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Varianta3f36b872055ea49734d08d00516f38edd8d06272b79fc3c4032e6b4b0170b98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:12090885faccac7b9fd160edfa7763b0bce1fa3997f0d8c6d7b319636fd316ee",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Varianta3f36b872055ea49734d08d00516f38edd8d06272b79fc3c4032e6b4b0170b98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b05f98a9-e117-edd2-f167-97d8ba113d1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isSemilinearSet_formula_realize_semilinear (φ : presburger[[A]].Formula α) :
    IsSemilinearSet (Set.ofPred φ.Realize : Set (α → ℕ)) := by
  let e := Equiv.sumEmpty α (Fin 0)
  convert! (isSemilinearSet_boundedFormula_realize φ).image (LinearMap.funLeft ℕ ℕ e.symm)
  ext x
  simp only [mem_ofPred_eq, mem_image]
  rw [(e.arrowCongr (.refl ℕ)).exists_congr_left]
  simp [Formula.Realize, Unique.eq_default, Function.comp_def, LinearMap.funLeft, e]

/-- A set is Presburger definable in `ℕ` if and only if it is semilinear. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Varianta3f36b872055ea49734d08d00516f38edd8d06272b79fc3c4032e6b4b0170b98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Varianta3f36b872055ea49734d08d00516f38edd8d06272b79fc3c4032e6b4b0170b98.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da414992aa3fb9d85586b9d8f25f58d20e01b36e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
