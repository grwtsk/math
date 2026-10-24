# actualFullPrimeLogPotential_exp_eq_zeta

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:46b9c3c7-8df4-2251-4b36-448c298722b2",
  "kind": "theorem",
  "lexical_name": "actualFullPrimeLogPotential_exp_eq_zeta",
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
  "slug": "actualfullprimelogpotential-exp-eq-zeta--e5c18c59b9209ebf205913db",
  "source": {
    "blob": "1ae361507bc73af76f011404c0f398be55489db4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 41,
    "path": "GRWTSK/NumberTheory/SourceActualEulerPotentialZetaPhase/Variantadb62f488b7e7b7011274349263d226b9f5fb2a849916c7535e340ad65fec37c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5c18c59b9209ebf205913db79dd55c763b24e17c54c50ddac7d828bf2b3ae25",
  "verification": {
    "reference": "docs/verification/NumberTheory/SourceActualEulerPotentialZetaPhase/Variantadb62f488b7e7b7011274349263d226b9f5fb2a849916c7535e340ad65fec37c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:46b9c3c7-8df4-2251-4b36-448c298722b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualFullPrimeLogPotential_exp_eq_zeta (s : ℂ) (hs : 1 < s.re) :
    Complex.exp (actualFullPrimeLogPotential s) = riemannZeta s := by
  have hf : coeff = fun n =>
      (ArithmeticFunction.vonMangoldt n : ℂ)/(Real.log n : ℂ) := by
    funext n
    exact Complex.ofReal_div _ _
  unfold actualFullPrimeLogPotential
  rw [hf]
  exact riemannZeta_eq_exp_LSeries hs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/SourceActualEulerPotentialZetaPhase/Variantadb62f488b7e7b7011274349263d226b9f5fb2a849916c7535e340ad65fec37c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/SourceActualEulerPotentialZetaPhase/Variantadb62f488b7e7b7011274349263d226b9f5fb2a849916c7535e340ad65fec37c.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ae361507bc73af76f011404c0f398be55489db4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
