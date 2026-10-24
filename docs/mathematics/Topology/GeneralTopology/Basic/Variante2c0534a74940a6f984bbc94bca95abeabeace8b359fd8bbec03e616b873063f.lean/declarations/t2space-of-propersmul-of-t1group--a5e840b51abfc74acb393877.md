# t2Space_of_properSMul_of_t1Group

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5e92fbab7d6c6c84ce2c088ede757cd93040b9aa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 127,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e2c0534a74940a6f984bbc94bca95abeabeace8b359fd8bbec03e616b873063f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0d4b406d-94df-f8b7-8f8c-323597cc6e25",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5051fff6-4c43-5722-c7e8-cbc85fba727d",
  "kind": "theorem",
  "lexical_name": "t2Space_of_properSMul_of_t1Group",
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
  "slug": "t2space-of-propersmul-of-t1group--a5e840b51abfc74acb393877",
  "source": {
    "blob": "5e92fbab7d6c6c84ce2c088ede757cd93040b9aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 127,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variante2c0534a74940a6f984bbc94bca95abeabeace8b359fd8bbec03e616b873063f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a5e840b51abfc74acb3938772da2cfaf2a2585dd009f919a88b0e2e02bf2623a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variante2c0534a74940a6f984bbc94bca95abeabeace8b359fd8bbec03e616b873063f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5051fff6-4c43-5722-c7e8-cbc85fba727d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem t2Space_of_properSMul_of_t1Group [h_proper : ProperSMul G X] [T1Space G] : T2Space X := by
  let f := fun x : X ↦ ((1 : G), x)
  have proper_f : IsProperMap f := by
    refine IsClosedEmbedding.isProperMap ⟨?_, ?_⟩
    · let g := fun gx : G × X ↦ gx.2
      have : Function.LeftInverse g f := fun x ↦ by simp [f, g]
      exact this.isEmbedding (by fun_prop) (by fun_prop)
    · have : range f = ({1} ×ˢ univ) := by simp [f, Set.singleton_prod]
      rw [this]
      exact isClosed_singleton.prod isClosed_univ
  rw [t2_iff_isClosed_diagonal]
  let g := fun gx : G × X ↦ (gx.1 • gx.2, gx.2)
  have proper_g : IsProperMap g := (properSMul_iff G X).1 h_proper
  have : g ∘ f = fun x ↦ (x, x) := by ext x <;> simp [f, g]
  have range_gf : range (g ∘ f) = diagonal X := by simp [this]
  rw [← range_gf]
  exact (proper_f.comp proper_g).isClosed_range

@[deprecated (since := "2025-03-21")]
alias t2Space_of_properSMul_of_t2Group := t2Space_of_properSMul_of_t1Group

/-- If two groups `H` and `G` act on a topological space `X` such that `G` acts properly and
there exists a group homomorphims `H → G` which is a closed embedding compatible with the actions,
then `H` also acts properly on `X`. -/
@[to_additive "If two groups `H` and `G` act on a topological space `X` such that `G` acts properly
and there exists a group homomorphims `H → G` which is a closed embedding compatible with the
actions, then `H` also acts properly on `X`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variante2c0534a74940a6f984bbc94bca95abeabeace8b359fd8bbec03e616b873063f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variante2c0534a74940a6f984bbc94bca95abeabeace8b359fd8bbec03e616b873063f.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e92fbab7d6c6c84ce2c088ede757cd93040b9aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
