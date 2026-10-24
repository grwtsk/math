# ker_evalOneₐ_eq_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:67eef304-16da-2424-1e9e-d548f0dc9914",
  "kind": "lemma",
  "lexical_name": "ker_evalOneₐ_eq_map",
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
  "slug": "ker-evalone-eq-map--c2e916d644195a97eab27095",
  "source": {
    "blob": "04a63bf8866ef608f3fe04f0d99d5fa92c7044a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 206,
    "path": "GRWTSK/Algebra/Completeness/Variantc0a7a269de44d4d24a57adae0529f19a5db160c021f97acf7040b1b71956e7b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2e916d644195a97eab27095c74397bffd7f6a2c4d8c25b4e2c1f19827712ea4",
  "verification": {
    "reference": "docs/verification/Algebra/Completeness/Variantc0a7a269de44d4d24a57adae0529f19a5db160c021f97acf7040b1b71956e7b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67eef304-16da-2424-1e9e-d548f0dc9914`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ker_evalOneₐ_eq_map (fg : I.FG) :
    RingHom.ker (evalOneₐ I).toRingHom = I.map (algebraMap R (AdicCompletion I R)) := by
  ext x
  trans x ∈ (AdicCompletion.eval I R 1).ker
  · have eq : I ^ 1 * ⊤ = I := by simp
    have : Function.Injective (Ideal.Quotient.factor ((le_of_eq eq))) := by
      simpa [RingHom.injective_iff_ker_eq_bot, Ideal.Quotient.factor_ker]
        using Ideal.map_mk_eq_bot_of_le (le_of_eq eq.symm)
    simpa [← factorₐ_evalₐ_one, ← factor_eval_eq_evalₐ] using map_eq_zero_iff _ this
  · simp [← pow_smul_top_eq_ker_eval fg]

end AdicCompletion

namespace MvPowerSeries

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Completeness/Variantc0a7a269de44d4d24a57adae0529f19a5db160c021f97acf7040b1b71956e7b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Completeness/Variantc0a7a269de44d4d24a57adae0529f19a5db160c021f97acf7040b1b71956e7b5.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04a63bf8866ef608f3fe04f0d99d5fa92c7044a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
