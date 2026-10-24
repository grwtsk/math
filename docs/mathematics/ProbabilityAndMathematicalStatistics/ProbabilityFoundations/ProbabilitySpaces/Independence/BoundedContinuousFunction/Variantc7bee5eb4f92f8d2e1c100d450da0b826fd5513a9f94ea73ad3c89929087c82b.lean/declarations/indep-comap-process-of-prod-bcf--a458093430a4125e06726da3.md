# indep_comap_process_of_prod_bcf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bc831976-b3ca-12d6-cbf4-af07892660a1",
  "kind": "lemma",
  "lexical_name": "indep_comap_process_of_prod_bcf",
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
  "slug": "indep-comap-process-of-prod-bcf--a458093430a4125e06726da3",
  "source": {
    "blob": "55a4270c1cb09b6774810513d7887b5b7710cfd0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 442,
    "line": 430,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BoundedContinuousFunction/Variantc7bee5eb4f92f8d2e1c100d450da0b826fd5513a9f94ea73ad3c89929087c82b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a458093430a4125e06726da3a6a4d81534a05dcd3aa08af9e1f036cb949cd0e0",
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

Occurrence: `result:bc831976-b3ca-12d6-cbf4-af07892660a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 430–442.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma indep_comap_process_of_prod_bcf
    (hm : m ≤ mΩ) (mX : ∀ s, AEMeasurable (X s) P)
    (h : ∀ A, MeasurableSet[m] A → ∀ (I : Finset S) (f : (s : I) → E s →ᵇ ℝ),
      ∫ ω in A, ∏ s, f s (X s ω) ∂P = P.real A * ∫ ω, ∏ s, f s (X s ω) ∂P) :
    Indep m (MeasurableSpace.pi.comap (fun ω s ↦ X s ω)) P :=
  (Indep_iff_IndepSets _ _ P).2
    (indepSets_comap_process_of_prod_bcf (fun A hA ↦ (hm A hA).nullMeasurableSet) mX h)

/-- A sigma-algebra $\mathcal{A}$ and a stochastic process $(X_s)_{s \in S}$ are independent if
for all $A \in \mathcal{A}$, for all $s_1, ..., s_p \in S$ and
for all real bounded continuous function $f$,
$$P[\mathbb{I}_A f(X_{s_1}, ..., X_{s_p})] =
P(A) P[f(X_{s_1}, ..., X_{s_p})].$$ -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BoundedContinuousFunction/Variantc7bee5eb4f92f8d2e1c100d450da0b826fd5513a9f94ea73ad3c89929087c82b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BoundedContinuousFunction/Variantc7bee5eb4f92f8d2e1c100d450da0b826fd5513a9f94ea73ad3c89929087c82b.lean#L430).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55a4270c1cb09b6774810513d7887b5b7710cfd0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
