# scalar_covariant_trace_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2ae67590-d51c-cb03-5131-0fa4933d838e",
  "kind": "theorem",
  "lexical_name": "scalar_covariant_trace_zero",
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
  "slug": "scalar-covariant-trace-zero--7395b8842b251dc57642d8d8",
  "source": {
    "blob": "9da2fa5c470c5e814f40cc009ad5db118b1e7040",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 36,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IsotypicTrace/Variant148055ad2afcee2fd82147d6df784d6b47ef18bbcd0df4652637eec58df144b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7395b8842b251dc57642d8d848bb1ae803ff551979bcd703b628ae00db584d94",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IsotypicTrace/Variant148055ad2afcee2fd82147d6df784d6b47ef18bbcd0df4652637eec58df144b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ae67590-d51c-cb03-5131-0fa4933d838e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scalar_covariant_trace_zero {G : Type*} [Group G] [Fintype G]
    (f : G → ℂ) (chi : G →* ℂ) {h : G} (hchi : chi h ≠ 1)
    (hcovariant : ∀ g, f (h * g) = chi h * f g) : (∑ g, f g) = 0 := by
  have he : (∑ g, f (h * g)) = ∑ g, f g :=
    Equiv.sum_comp (Equiv.mulLeft h) f
  have hs : (∑ g, f (h * g)) = chi h * ∑ g, f g := by
    simp_rw [hcovariant]
    rw [Finset.mul_sum]
  have hp : (chi h - 1) * (∑ g, f g) = 0 := by
    rw [sub_mul, one_mul, ← hs, he, sub_self]
  exact (mul_eq_zero.mp hp).resolve_left (sub_ne_zero.mpr hchi)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IsotypicTrace/Variant148055ad2afcee2fd82147d6df784d6b47ef18bbcd0df4652637eec58df144b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IsotypicTrace/Variant148055ad2afcee2fd82147d6df784d6b47ef18bbcd0df4652637eec58df144b0.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9da2fa5c470c5e814f40cc009ad5db118b1e7040` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
