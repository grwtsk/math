# mutationMatrix_symmetric_metric

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8b911d15-26b7-d7e1-23aa-d2bf695fd744",
  "kind": "theorem",
  "lexical_name": "mutationMatrix_symmetric_metric",
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
  "slug": "mutationmatrix-symmetric-metric--681402f678526179cdad0aa4",
  "source": {
    "blob": "7cbdd4a77ae7fd0970998d53453c9d320face567",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 81,
    "path": "GRWTSK/Algebra/LinearAlgebra/Attempt03/Variant2207897f0ce23d1d6c199c701e482c3ab87fb6ceb5786c72ec4aaf8cb40fc3da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:681402f678526179cdad0aa4a75d351c93c1c7b35881cffd96b2bb7a2b8687f1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Attempt03/Variant2207897f0ce23d1d6c199c701e482c3ab87fb6ceb5786c72ec4aaf8cb40fc3da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b911d15-26b7-d7e1-23aa-d2bf695fd744`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mutationMatrix_symmetric_metric {n : ℕ} (A : Matrix (Fin n) (Fin n) ℤ)
    (hzero : ∀ i, A i i = 0) (hsymm : ∀ i j, A i j = A j i) (i : Fin n) :
    (mutationMatrix A i)ᵀ * cartanMatrix A * mutationMatrix A i = cartanMatrix A := by
  have hbalance : ∀ i j, (1 : ℤ) * A i j = 1 * A j i := by
    simpa only [one_mul] using hsymm
  simpa using mutationMatrix_weighted_metric A hzero (fun _ => 1) hbalance i

end FormalResearch.MutationGame
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Attempt03/Variant2207897f0ce23d1d6c199c701e482c3ab87fb6ceb5786c72ec4aaf8cb40fc3da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Attempt03/Variant2207897f0ce23d1d6c199c701e482c3ab87fb6ceb5786c72ec4aaf8cb40fc3da.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7cbdd4a77ae7fd0970998d53453c9d320face567` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
