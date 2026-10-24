# exact_signal_derivative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e38a12d7-9117-96d4-a106-2d11a20252a5",
  "kind": "theorem",
  "lexical_name": "exact_signal_derivative",
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
  "slug": "exact-signal-derivative--850dee15ff79789d1922c0b0",
  "source": {
    "blob": "521871c4db571ef92aa347f6e47576ed3583cb69",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 37,
    "path": "GRWTSK/Analysis/DiscreteChirpWeights/Variant67151c41ce39696b3a9cb19381f17210d040614214e4b2e17179ff6ab924f741.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:850dee15ff79789d1922c0b036e52b2a2c3ecb537c13ff885d380832b692d07c",
  "verification": {
    "reference": "docs/verification/Analysis/DiscreteChirpWeights/Variant67151c41ce39696b3a9cb19381f17210d040614214e4b2e17179ff6ab924f741.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e38a12d7-9117-96d4-a106-2d11a20252a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exact_signal_derivative {x : ℝ} (hx : 0 < x) : HasDerivAt signal (signalDerivative x) x := by
  have h1 : HasDerivAt (fun y : ℝ ↦ y ^ (3 / 4 : ℝ)) ((3 / 4) * x ^ (-1 / 4 : ℝ)) x := by
    simpa only [show (3 / 4 : ℝ) - 1 = -1 / 4 by norm_num] using!
      (Real.hasDerivAt_rpow_const (p := (3 / 4 : ℝ)) (Or.inl hx.ne'))
  have h2 : HasDerivAt (fun y : ℝ ↦ y ^ (1 / 6 : ℝ)) ((1 / 6) * x ^ (-5 / 6 : ℝ)) x := by
    simpa only [show (1 / 6 : ℝ) - 1 = -5 / 6 by norm_num] using!
      (Real.hasDerivAt_rpow_const (p := (1 / 6 : ℝ)) (Or.inl hx.ne'))
  have h : HasDerivAt signal
      ((3 / 4) * x ^ (-1 / 4 : ℝ) * Real.sin (x ^ (1 / 6 : ℝ)) +
       x ^ (3 / 4 : ℝ) * (Real.cos (x ^ (1 / 6 : ℝ)) * ((1 / 6) * x ^ (-5 / 6 : ℝ)))) x :=
    h1.mul h2.sin
  have he : ((3 / 4) * x ^ (-1 / 4 : ℝ) * Real.sin (x ^ (1 / 6 : ℝ)) +
       x ^ (3 / 4 : ℝ) * (Real.cos (x ^ (1 / 6 : ℝ)) * ((1 / 6) * x ^ (-5 / 6 : ℝ)))) =
       signalDerivative x := by
    have hp : x ^ (3 / 4 : ℝ) * x ^ (-5 / 6 : ℝ) = x ^ (-1 / 12 : ℝ) := by
      rw [← Real.rpow_add hx]; norm_num
    unfold signalDerivative
    calc
      _ = (3 / 4) * x ^ (-1 / 4 : ℝ) * Real.sin (x ^ (1 / 6 : ℝ)) +
        (1 / 6) * (x ^ (3 / 4 : ℝ) * x ^ (-5 / 6 : ℝ)) * Real.cos (x ^ (1 / 6 : ℝ)) := by ring
      _ = _ := by rw [hp]
  rw [he] at h
  exact h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/DiscreteChirpWeights/Variant67151c41ce39696b3a9cb19381f17210d040614214e4b2e17179ff6ab924f741.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/DiscreteChirpWeights/Variant67151c41ce39696b3a9cb19381f17210d040614214e4b2e17179ff6ab924f741.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `521871c4db571ef92aa347f6e47576ed3583cb69` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
