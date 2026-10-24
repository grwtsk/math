# finite_power_sum_ae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32461283-cfd9-a9a4-2d13-f0edec3f5c68",
  "kind": "theorem",
  "lexical_name": "finite_power_sum_ae",
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
  "slug": "finite-power-sum-ae--bc58eca3842e995b0ad28ae5",
  "source": {
    "blob": "0c51c4e8da48186d3a1390eae01b010fe48b06fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 35,
    "path": "GRWTSK/Analysis/ThetaJacobiUnitary/Variant8b915bf1ce19d77821d1b125426f61aa2767603f472b9e0cabed7d1f737dbbb4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc58eca3842e995b0ad28ae588cb323b2ef6d78ef316e06aa385adc783f0fa21",
  "verification": {
    "reference": "docs/verification/Analysis/ThetaJacobiUnitary/Variant8b915bf1ce19d77821d1b125426f61aa2767603f472b9e0cabed7d1f737dbbb4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32461283-cfd9-a9a4-2d13-f0edec3f5c68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_power_sum_ae (s : Finset ℕ) (c : ℕ → ℂ) {t : ℝ} (ht : 0 ≤ t) :
    (fun x : ℝ => (∑ n ∈ s, c n • powerVector t ht n : Lp ℂ 2 (momentMeasure t)) x) =ᵐ[momentMeasure t]
      fun x : ℝ => ∑ n ∈ s, c n * (x : ℂ) ^ n := by
  classical
  induction s using Finset.induction_on with
  | empty =>
    filter_upwards [Lp.coeFn_zero ℂ 2 (momentMeasure t)] with x hx
    simpa only [Finset.sum_empty, Pi.zero_apply] using hx
  | @insert n s hn ih =>
    simp only [Finset.sum_insert hn]
    filter_upwards [Lp.coeFn_add (c n • powerVector t ht n) (∑ i ∈ s, c i • powerVector t ht i),
      Lp.coeFn_smul (c n) (powerVector t ht n), polynomialVector_ae (X ^ n) ht, ih]
      with x ha hs hp hi
    rw [ha]
    simp only [Pi.add_apply]
    rw [hs, hi]
    change c n * polynomialVector t ht (X ^ n) x + _ = _
    rw [hp]
    simp

/-- A real polynomial vanishing almost everywhere is zero, by strict theta positivity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ThetaJacobiUnitary/Variant8b915bf1ce19d77821d1b125426f61aa2767603f472b9e0cabed7d1f737dbbb4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ThetaJacobiUnitary/Variant8b915bf1ce19d77821d1b125426f61aa2767603f472b9e0cabed7d1f737dbbb4.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c51c4e8da48186d3a1390eae01b010fe48b06fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
