# squareTrace_of_pair_values

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:77274e81-cf4b-d665-4824-2e8348eb53fb",
  "kind": "theorem",
  "lexical_name": "squareTrace_of_pair_values",
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
  "slug": "squaretrace-of-pair-values--1fd3caf5a5d6d273b79177be",
  "source": {
    "blob": "681311b90019c078ed32a3ff4ddb31d6597704bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 52,
    "path": "GRWTSK/Algebra/Polynomial/SignedRootTrace.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1fd3caf5a5d6d273b79177be1f9a2fc19f3957b6e9cfe908fc284557db214b24",
  "verification": {
    "reference": "docs/verification/Algebra/Polynomial/SignedRootTrace.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77274e81-cf4b-d665-4824-2e8348eb53fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squareTrace_of_pair_values {nodes : Finset ℂ} {weight : ℂ → ℝ}
    {z : ℂ} (hz : z ∈ nodes) (hc : conj z ∈ nodes) (him : z.im ≠ 0)
    {p : Polynomial ℝ}
    (hp : ∀ w ∈ nodes, p.eval₂ Complex.ofRealHom w = pairValues z w) :
    squareTrace nodes weight p = -((weight z + weight (conj z) : ℝ) : ℂ) := by
  classical
  have hne : conj z ≠ z := fun h => him (Complex.conj_eq_iff_im.mp h)
  have hmem : conj z ∈ nodes.erase z := Finset.mem_erase.mpr ⟨hne, hc⟩
  rw [squareTrace, ← Finset.add_sum_erase _ _ hz,
    ← Finset.add_sum_erase _ _ hmem]
  have hzero : ∑ w ∈ (nodes.erase z).erase (conj z),
      (weight w : ℂ) * (p.eval₂ Complex.ofRealHom w) ^ 2 = 0 := by
    apply Finset.sum_eq_zero
    intro w hw
    have hw' := Finset.mem_erase.mp hw
    have hw'' := Finset.mem_erase.mp hw'.2
    rw [hp w hw''.2]
    simp [pairValues, hw''.1, hw'.1]
  rw [hzero, hp z hz, hp (conj z) hc]
  simp [pairValues, hne]
  ring

/-- A nonreal node has a real polynomial test of degree below the number of
distinct nodes with an exactly negative trace when both pair weights are positive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Polynomial/SignedRootTrace.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Polynomial/SignedRootTrace.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `681311b90019c078ed32a3ff4ddb31d6597704bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
