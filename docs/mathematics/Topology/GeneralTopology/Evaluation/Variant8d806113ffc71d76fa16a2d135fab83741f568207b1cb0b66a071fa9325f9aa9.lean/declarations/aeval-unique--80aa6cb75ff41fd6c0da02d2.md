# aeval_unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0a5b253c-3940-7c5e-85b2-613bf68ac75f",
  "kind": "theorem",
  "lexical_name": "aeval_unique",
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
  "slug": "aeval-unique--80aa6cb75ff41fd6c0da02d2",
  "source": {
    "blob": "6cb404745ec52338f0ade8d47e4e074ea779e203",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 342,
    "line": 332,
    "path": "GRWTSK/Topology/GeneralTopology/Evaluation/Variant8d806113ffc71d76fa16a2d135fab83741f568207b1cb0b66a071fa9325f9aa9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80aa6cb75ff41fd6c0da02d2b580c98b9bafd7038526ad3a133034b65594739f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Evaluation/Variant8d806113ffc71d76fa16a2d135fab83741f568207b1cb0b66a071fa9325f9aa9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a5b253c-3940-7c5e-85b2-613bf68ac75f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 332–342.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem aeval_unique {ε : MvPowerSeries σ R →ₐ[R] S} (hε : Continuous ε) :
    aeval (HasEval.X.map hε) = ε := by
  apply DFunLike.ext'
  rw [coe_aeval]
  refine (eval₂_unique (continuous_algebraMap R S) (HasEval.X.map hε) hε ?_).symm
  intro p
  trans ε.comp (coeToMvPowerSeries.algHom R) p
  · simp
  conv_lhs => rw [← p.aeval_X_left_apply, MvPolynomial.comp_aeval_apply, MvPolynomial.aeval_def]
  simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Evaluation/Variant8d806113ffc71d76fa16a2d135fab83741f568207b1cb0b66a071fa9325f9aa9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Evaluation/Variant8d806113ffc71d76fa16a2d135fab83741f568207b1cb0b66a071fa9325f9aa9.lean#L332).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6cb404745ec52338f0ade8d47e4e074ea779e203` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
