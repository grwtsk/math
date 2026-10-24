# order_conjugate_of_equivariant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:81b8a8b6-9821-b032-84cb-fd32fb49d939",
  "kind": "theorem",
  "lexical_name": "order_conjugate_of_equivariant",
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
  "slug": "order-conjugate-of-equivariant--b2de751d92c34c5feda0986d",
  "source": {
    "blob": "2f3a6021d8dc31586aa518993d18aa80da417e89",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 38,
    "path": "GRWTSK/Analysis/Complex/AnalyticOrderTransport.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2de751d92c34c5feda0986d3731d06390ba12de7aed7233aedbe245d3fce92d",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/AnalyticOrderTransport.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81b8a8b6-9821-b032-84cb-fd32fb49d939`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem order_conjugate_of_equivariant (f : ℂ → ℂ) (z : ℂ)
    (equivariant : ∀ w, f (conj w) = conj (f w))
    (analytic : AnalyticAt ℂ f z) (conjugateAnalytic : AnalyticAt ℂ f (conj z)) :
    analyticOrderAt f (conj z) = analyticOrderAt f z := by
  have fixed : conj ∘ f ∘ conj = f := by
    funext w
    simp [Function.comp_def, equivariant]
  have derivativeFixed (n : ℕ) :
      conj ∘ iteratedDeriv n f ∘ conj = iteratedDeriv n f := by
    rw [← iteratedDeriv_conjugate_pullback, fixed]
  apply ENat.eq_of_forall_natCast_le_iff
  intro n
  rw [natCast_le_analyticOrderAt_iff_iteratedDeriv_eq_zero conjugateAnalytic,
    natCast_le_analyticOrderAt_iff_iteratedDeriv_eq_zero analytic]
  apply forall_congr'
  intro i
  apply forall_congr'
  intro hi
  have same := congrFun (derivativeFixed i) z
  change conj (iteratedDeriv i f (conj z)) = iteratedDeriv i f z at same
  rw [← same]
  simp

/-- The holomorphic reflection has derivative -1, not zero. This is distinct
from the antiholomorphic critical reflection w -> 1-conj(w). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/AnalyticOrderTransport.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/AnalyticOrderTransport.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f3a6021d8dc31586aa518993d18aa80da417e89` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
