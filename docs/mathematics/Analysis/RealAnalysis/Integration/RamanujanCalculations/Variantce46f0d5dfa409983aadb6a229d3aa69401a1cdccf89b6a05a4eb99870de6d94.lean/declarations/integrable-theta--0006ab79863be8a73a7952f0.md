# integrable_theta

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b31dd5b9-de3c-915b-a9de-fc40787272f3",
  "kind": "theorem",
  "lexical_name": "integrable_theta",
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
  "slug": "integrable-theta--0006ab79863be8a73a7952f0",
  "source": {
    "blob": "570e76c38ddee829cb5740278651fdf506e91cdb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 441,
    "line": 418,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RamanujanCalculations/Variantce46f0d5dfa409983aadb6a229d3aa69401a1cdccf89b6a05a4eb99870de6d94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0006ab79863be8a73a7952f095044e25ccb406cff3dd78e6e80e0c47693952db",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/RamanujanCalculations/Variantce46f0d5dfa409983aadb6a229d3aa69401a1cdccf89b6a05a4eb99870de6d94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b31dd5b9-de3c-915b-a9de-fc40787272f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 418–441.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrable_theta (x : ℝ) :
    IntegrableOn (fun t ↦ (θ t - t) / (t * log t ^ 2)) (Icc 2 x) volume := by
  have l0 : ContinuousOn (fun t ↦ (t * log t ^ 2)⁻¹) (Set.Icc 2 x) := by
    refine ContinuousOn.inv₀ (continuousOn_id.mul (ContinuousOn.pow (ContinuousOn.log
      continuousOn_id fun y hy ↦ ?_) 2)) fun y hy ↦ ?_
    repeat simp_all; grind
  have l1 : IntegrableOn (fun t ↦ θ t / (t * log t ^ 2)) (Icc 2 x) volume :=
    (theta_mono.monotoneOn _).integrableOn_isCompact isCompact_Icc |>.mul_continuousOn l0
    isCompact_Icc
  have l2 : IntegrableOn (fun t ↦ t / (t * log t ^ 2)) (Icc 2 x) volume :=
    monotoneOn_id.integrableOn_isCompact isCompact_Icc |>.mul_continuousOn l0 isCompact_Icc
  simpa [div_sub_div_same] using l1.sub' l2

@[blueprint
  "ramanujan-pi-upper"
  (title := "Upper bound for pi")
  (statement := /-- Suppose that for $x \geq 2$ we have $|\theta(x)-x|\log^{5} x\leq x a(x)$. Then
$$
\pi(x)\leq \frac{x}{\log x} +a(x)\frac{x}{\log^6 x}+\int_2^x\frac{d t}{\log^2 t}+\int_2^x\frac{a(t)}{\log^7 t}\ dt.
$$ (cf. \cite[\S 5]{PT2021})
-/)
  (proof := /-- Follows from Lemma \ref{pi-error-identity} and the triangle inequality. -/)
  (latexEnv := "sublemma")
  (discussion := 987)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RamanujanCalculations/Variantce46f0d5dfa409983aadb6a229d3aa69401a1cdccf89b6a05a4eb99870de6d94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RamanujanCalculations/Variantce46f0d5dfa409983aadb6a229d3aa69401a1cdccf89b6a05a4eb99870de6d94.lean#L418).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `570e76c38ddee829cb5740278651fdf506e91cdb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
