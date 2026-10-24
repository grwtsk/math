# S_succ_eq_biUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:44cfef6e-89a0-aa2f-8e7b-415966cf6a3e",
  "kind": "theorem",
  "lexical_name": "S_succ_eq_biUnion",
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
  "slug": "s-succ-eq-biunion--c57161aedda424043e779c57",
  "source": {
    "blob": "369e038c276f1f9c93b827fb10e121845c466086",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 163,
    "path": "GRWTSK/Algebra/LinearAlgebra/Correctness/Variant7d69c6c8358be143900d00d57d4f11284f481cf1cd342b7af3a8021d10ab95cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c57161aedda424043e779c57bf84ffce22be525a554283ef017f3d484e940491",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Correctness/Variant7d69c6c8358be143900d00d57d4f11284f481cf1cd342b7af3a8021d10ab95cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44cfef6e-89a0-aa2f-8e7b-415966cf6a3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem S_succ_eq_biUnion {p : ℕ} (i : Fin n) :
    S (p + 1) i = (Finset.Ioi i).biUnion fun k ↦ (S p k).image (Fin.cons k) := by
  ext α
  simp only [Finset.mem_biUnion, Finset.mem_image, Finset.mem_Ioi, mem_S_iff]
  refine ⟨fun hα ↦ ⟨α 0, (Fin.strictMono_cons.mp hα).1 0, Fin.tail α, ?_, Fin.cons_self_tail α⟩, ?_⟩
  · simp only [Fin.cons_self_tail]
    exact hα.comp Fin.strictMono_succ
  · rintro ⟨k, hk, u, hu, rfl⟩
    exact StrictMono.vecCons hu hk

/-- A symbol above `i` that does not occur in a word in `S p i` can be inserted while
preserving strict monotonicity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Correctness/Variant7d69c6c8358be143900d00d57d4f11284f481cf1cd342b7af3a8021d10ab95cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Correctness/Variant7d69c6c8358be143900d00d57d4f11284f481cf1cd342b7af3a8021d10ab95cf.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `369e038c276f1f9c93b827fb10e121845c466086` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
