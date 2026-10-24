# iterate_stepEntry_get_eq_spec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "60f98f76ca23c341bb414c078924844019b84c61",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 65,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6e/6ec03462ae30011c5481b01f2b789abcaea729208c914d6031259b2606229cc3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7594be59-6958-beef-91a6-cb4b8be587f7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1125ea82-a059-6b7a-cbbb-1a0341f6098b",
  "kind": "theorem",
  "lexical_name": "iterate_stepEntry_get_eq_spec",
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
  "slug": "iterate-stepentry-get-eq-spec--ffcbca0f04bd01848097c45b",
  "source": {
    "blob": "60f98f76ca23c341bb414c078924844019b84c61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 65,
    "path": "GRWTSK/Algebra/LinearAlgebra/Correctness/Variant6ec03462ae30011c5481b01f2b789abcaea729208c914d6031259b2606229cc3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ffcbca0f04bd01848097c45b508a4fd8ce85ea17baec88c3597bc5a522b8e7bd",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Correctness/Variant6ec03462ae30011c5481b01f2b789abcaea729208c914d6031259b2606229cc3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1125ea82-a059-6b7a-cbbb-1a0341f6098b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iterate_stepEntry_get_eq_spec (A : Array R) (hA : A.size = n * n) (t : ℕ) (i j : Fin n) :
    ((stepEntry n A)^[t] (BirdDet.get n A)) i.val j.val =
      (Spec.stepEntry (.ofArray A hA))^[t] (.ofArray A hA) i j := by
  rw [Matrix.ofArray_eq_of_getD]
  induction t generalizing i j with
  | zero => simp [get_eq]
  | succ t ih =>
    simp_rw [iterate_succ_apply', stepEntry_eq, Spec.stepEntry_eq, sumFrom_fin_tail, ih,
      Matrix.of_apply, get_eq]

/-- The flat-array algorithm `BirdDet.birdDet` computes the same determinant as
  `BirdDet.Spec.birdDet`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Correctness/Variant6ec03462ae30011c5481b01f2b789abcaea729208c914d6031259b2606229cc3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Correctness/Variant6ec03462ae30011c5481b01f2b789abcaea729208c914d6031259b2606229cc3.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60f98f76ca23c341bb414c078924844019b84c61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
