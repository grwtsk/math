# iteratedDeriv_exp_const_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:65958462-ed30-08a2-e0e3-02296b47606f",
  "kind": "theorem",
  "lexical_name": "iteratedDeriv_exp_const_mul",
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
  "slug": "iteratedderiv-exp-const-mul--9ddffaca4e4d3441c139f7b3",
  "source": {
    "blob": "7d9fd7be1c8b0653d5571cbc5228b3054fe82acf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 386,
    "line": 384,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant633a3d4ed5b408b30a12170922269a1bafe9e7e90e30d0a7d8210658bd8864a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ddffaca4e4d3441c139f7b38025116397aabaa358283b340c443258992bb45b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant633a3d4ed5b408b30a12170922269a1bafe9e7e90e30d0a7d8210658bd8864a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65958462-ed30-08a2-e0e3-02296b47606f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 384–386.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iteratedDeriv_exp_const_mul (n : ℕ) (c : ℝ) :
    (iteratedDeriv n fun s => exp (c * s)) = fun s => c ^ n * exp (c * s) := by
  rw [iteratedDeriv_comp_const_mul contDiff_exp, iteratedDeriv_eq_iterate, iter_deriv_exp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant633a3d4ed5b408b30a12170922269a1bafe9e7e90e30d0a7d8210658bd8864a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant633a3d4ed5b408b30a12170922269a1bafe9e7e90e30d0a7d8210658bd8864a6.lean#L384).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d9fd7be1c8b0653d5571cbc5228b3054fe82acf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
