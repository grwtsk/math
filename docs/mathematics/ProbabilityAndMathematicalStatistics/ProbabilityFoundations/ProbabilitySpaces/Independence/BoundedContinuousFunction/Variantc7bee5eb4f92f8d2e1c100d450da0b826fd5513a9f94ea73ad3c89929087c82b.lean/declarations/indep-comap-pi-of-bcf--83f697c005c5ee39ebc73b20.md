# indep_comap_pi_of_bcf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:20967b4b-0517-7399-c482-e152fc350367",
  "kind": "lemma",
  "lexical_name": "indep_comap_pi_of_bcf",
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
  "slug": "indep-comap-pi-of-bcf--83f697c005c5ee39ebc73b20",
  "source": {
    "blob": "55a4270c1cb09b6774810513d7887b5b7710cfd0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 312,
    "line": 303,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BoundedContinuousFunction/Variantc7bee5eb4f92f8d2e1c100d450da0b826fd5513a9f94ea73ad3c89929087c82b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83f697c005c5ee39ebc73b20201fef3fb6bfbc9d413a74d94a6374e8510cd164",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BoundedContinuousFunction/Variantc7bee5eb4f92f8d2e1c100d450da0b826fd5513a9f94ea73ad3c89929087c82b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20967b4b-0517-7399-c482-e152fc350367`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 303–312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma indep_comap_pi_of_bcf (hm : m ≤ mΩ) (mX : ∀ s, AEMeasurable (X s) P)
    (h : ∀ A, MeasurableSet[m] A → ∀ f : (Π s, E s) →ᵇ ℝ,
      ∫ ω in A, f (X · ω) ∂P = P.real A * ∫ ω, f (X · ω) ∂P) :
    Indep m (MeasurableSpace.pi.comap (fun ω s ↦ X s ω)) P :=
  (Indep_iff_IndepSets _ _ P).2
    (indepSets_comap_pi_of_bcf (fun A hA ↦ (hm A hA).nullMeasurableSet) mX h)

/-- A sigma-algebra $\mathcal{A}$ and a random variable $X$ are independent
if for all set $A \in \mathcal{A}$ and for all real bounded continuous function $f$,
$$P[\mathbb{I}_A f(X)] = P(A) P[f(X)].$$ -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BoundedContinuousFunction/Variantc7bee5eb4f92f8d2e1c100d450da0b826fd5513a9f94ea73ad3c89929087c82b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BoundedContinuousFunction/Variantc7bee5eb4f92f8d2e1c100d450da0b826fd5513a9f94ea73ad3c89929087c82b.lean#L303).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55a4270c1cb09b6774810513d7887b5b7710cfd0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
