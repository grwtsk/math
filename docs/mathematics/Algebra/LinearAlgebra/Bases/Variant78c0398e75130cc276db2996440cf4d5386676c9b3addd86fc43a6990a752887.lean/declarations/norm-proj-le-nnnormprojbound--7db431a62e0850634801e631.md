# norm_proj_le_nnnormProjBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f813bf59-9ae7-6888-b5c3-ea8177cf3441",
  "kind": "theorem",
  "lexical_name": "norm_proj_le_nnnormProjBound",
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
  "slug": "norm-proj-le-nnnormprojbound--7db431a62e0850634801e631",
  "source": {
    "blob": "323c9f608ea14a9ee0005e29eb9b6458315b240f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 286,
    "line": 273,
    "path": "GRWTSK/Algebra/LinearAlgebra/Bases/Variant78c0398e75130cc276db2996440cf4d5386676c9b3addd86fc43a6990a752887.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7db431a62e0850634801e631aa68bfaea63ea1850db2a30d5dcf489ebe8cbaff",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Bases/Variant78c0398e75130cc276db2996440cf4d5386676c9b3addd86fc43a6990a752887.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f813bf59-9ae7-6888-b5c3-ea8177cf3441`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 273–286.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_proj_le_nnnormProjBound [CompleteSpace X] (A : Finset β) :
    ‖b.proj A‖ ≤ b.nnnormProjBound :=
  mod_cast b.nnnorm_proj_le_nnnormProjBound A

end UnconditionalSchauderBasis

/-! ### ℕ-indexed Schauder bases with conditional convergence -/

namespace SchauderBasis

variable (b : SchauderBasis 𝕜 X)

/-- The `n`-th projection `P_n = b.proj (Finset.range n)`, given by:
    `P_n x = ∑ i ∈ Finset.range n, b.coord i x • b i` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Bases/Variant78c0398e75130cc276db2996440cf4d5386676c9b3addd86fc43a6990a752887.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Bases/Variant78c0398e75130cc276db2996440cf4d5386676c9b3addd86fc43a6990a752887.lean#L273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `323c9f608ea14a9ee0005e29eb9b6458315b240f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
