# scalar_covariant_trace_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4ec48990-dac1-565d-1e20-216a851e193a",
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
  "slug": "scalar-covariant-trace-zero--faa3cc77ec8960f63c4a3053",
  "source": {
    "blob": "6248c977585be64cdcd9e1d06e3f13e10e5a5a53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 46,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IsotypicTrace/Variant0e979804933941d0f26c2bfb93b255c8c09b8445904b0b3adb1e90a10623130f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:faa3cc77ec8960f63c4a30532146961ae334cc80b3f084dce305e96b66895ba4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IsotypicTrace/Variant0e979804933941d0f26c2bfb93b255c8c09b8445904b0b3adb1e90a10623130f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4ec48990-dac1-565d-1e20-216a851e193a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–57.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IsotypicTrace/Variant0e979804933941d0f26c2bfb93b255c8c09b8445904b0b3adb1e90a10623130f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IsotypicTrace/Variant0e979804933941d0f26c2bfb93b255c8c09b8445904b0b3adb1e90a10623130f.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6248c977585be64cdcd9e1d06e3f13e10e5a5a53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
