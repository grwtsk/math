# norm_setToFun_le_toReal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0e0decd564c0ab8da2f65f26ab63ea91df1f2a8b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 83,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/22/2230d838f72e5675b77e453a9c7ceb99352c226cb439144cd9b8ca46b99a9375.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fac46424-a64b-ea61-2c6f-ea15478fbcd5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:965f4120-678e-7138-8c82-c1c283b22685",
  "kind": "theorem",
  "lexical_name": "norm_setToFun_le_toReal",
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
  "slug": "norm-settofun-le-toreal--4cb4625d857a3d84ab92c770",
  "source": {
    "blob": "0e0decd564c0ab8da2f65f26ab63ea91df1f2a8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 83,
    "path": "GRWTSK/Topology/GeneralTopology/DominatedConvergence/Variant2230d838f72e5675b77e453a9c7ceb99352c226cb439144cd9b8ca46b99a9375.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4cb4625d857a3d84ab92c770f27d7cf1044e984b6245c17861866eedd1fb76e9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DominatedConvergence/Variant2230d838f72e5675b77e453a9c7ceb99352c226cb439144cd9b8ca46b99a9375.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:965f4120-678e-7138-8c82-c1c283b22685`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_setToFun_le_toReal (hT : DominatedFinMeasAdditive μ T C) (hC : 0 ≤ C) :
    ‖setToFun μ T hT f‖ ≤ NNReal.mk C hC * ENNReal.toReal (∫⁻ a, ENNReal.ofReal ‖f a‖ ∂μ) := by
  by_cases hF : CompleteSpace F; swap
  · simp only [setToFun, hF, ↓reduceDIte, norm_zero, NNReal.coe_mk, ofReal_norm]
    positivity
  by_cases hf : Integrable f μ; swap
  · simp only [setToFun_undef _ hf, norm_zero, NNReal.coe_mk, ofReal_norm]
    positivity
  apply (norm_setToFun_le hT hf hC).trans
  gcongr
  · simp
  rw [Integrable.norm_toL1_eq_lintegral_enorm]
  simp

/-- Lebesgue dominated convergence theorem provides sufficient conditions under which almost
  everywhere convergence of a sequence of functions implies the convergence of their image by
  `setToFun`.
  We could weaken the condition `bound_integrable` to require `HasFiniteIntegral bound μ` instead
  (i.e. not requiring that `bound` is measurable), but in all applications proving integrability
  is easier. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DominatedConvergence/Variant2230d838f72e5675b77e453a9c7ceb99352c226cb439144cd9b8ca46b99a9375.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DominatedConvergence/Variant2230d838f72e5675b77e453a9c7ceb99352c226cb439144cd9b8ca46b99a9375.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e0decd564c0ab8da2f65f26ab63ea91df1f2a8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
