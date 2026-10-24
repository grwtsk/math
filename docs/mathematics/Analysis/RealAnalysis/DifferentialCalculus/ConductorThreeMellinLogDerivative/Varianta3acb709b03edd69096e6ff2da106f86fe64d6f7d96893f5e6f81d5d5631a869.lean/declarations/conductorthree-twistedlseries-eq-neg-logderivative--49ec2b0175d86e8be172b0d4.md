# conductorThree_twistedLSeries_eq_neg_logDerivative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b817fdb639c96ed661685f69837f20702359ea94",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 81,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a3/a3acb709b03edd69096e6ff2da106f86fe64d6f7d96893f5e6f81d5d5631a869.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6f5b2ff0-5262-45e3-8610-4bd62c0d3c11",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3f80a1e3-8f1f-1b5d-6763-33eb3211f870",
  "kind": "theorem",
  "lexical_name": "conductorThree_twistedLSeries_eq_neg_logDerivative",
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
  "slug": "conductorthree-twistedlseries-eq-neg-logderivative--49ec2b0175d86e8be172b0d4",
  "source": {
    "blob": "b817fdb639c96ed661685f69837f20702359ea94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 81,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ConductorThreeMellinLogDerivative/Varianta3acb709b03edd69096e6ff2da106f86fe64d6f7d96893f5e6f81d5d5631a869.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49ec2b0175d86e8be172b0d422b68932486550e550bbd2b172f440c28b261756",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ConductorThreeMellinLogDerivative/Varianta3acb709b03edd69096e6ff2da106f86fe64d6f7d96893f5e6f81d5d5631a869.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f80a1e3-8f1f-1b5d-6763-33eb3211f870`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem conductorThree_twistedLSeries_eq_neg_logDerivative
    {s : ℂ} (hs : 1 < s.re) :
    L (↗conductorThreeCharacter * ↗ArithmeticFunction.vonMangoldt) s =
      -deriv (L ↗conductorThreeCharacter) s /
        L ↗conductorThreeCharacter s :=
  DirichletCharacter.LSeries_twist_vonMangoldt_eq
    conductorThreeCharacter hs

/-- First remaining classical lemma: the half-plus-epsilon bound gives a
holomorphic summatory Mellin function on `Re s > 1/2`, and its value agrees
with the checked seed series where `Re s > 1`. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ConductorThreeMellinLogDerivative/Varianta3acb709b03edd69096e6ff2da106f86fe64d6f7d96893f5e6f81d5d5631a869.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ConductorThreeMellinLogDerivative/Varianta3acb709b03edd69096e6ff2da106f86fe64d6f7d96893f5e6f81d5d5631a869.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b817fdb639c96ed661685f69837f20702359ea94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
