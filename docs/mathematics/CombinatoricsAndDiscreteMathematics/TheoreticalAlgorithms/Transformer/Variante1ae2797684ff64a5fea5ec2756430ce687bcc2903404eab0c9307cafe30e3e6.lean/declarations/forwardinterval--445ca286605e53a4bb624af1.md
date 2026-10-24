# forwardInterval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7726eee86b234d67aeb82db902ff8d7a4dade129f2453555442fee2add6773af",
  "kind": "def",
  "lexical_name": "forwardInterval",
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
  "slug": "forwardinterval--445ca286605e53a4bb624af1",
  "source": {
    "blob": "ff9082fc0a6a3d70a90bde087f3ebf61f9ff434a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 349,
    "line": 289,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variante1ae2797684ff64a5fea5ec2756430ce687bcc2903404eab0c9307cafe30e3e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:445ca286605e53a4bb624af17f7991c9b9c3d9a18c42fbc23efff778246ebbb8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variante1ae2797684ff64a5fea5ec2756430ce687bcc2903404eab0c9307cafe30e3e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7726eee86b234d67aeb82db902ff8d7a4dade129f2453555442fee2add6773af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 289–349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def forwardInterval (params : LayerNormParams) (x : IntervalVector)
    (prec : Int := -53) : IntervalVector :=
  let n := x.length
  if hn : n = 0 then []
  else
    let n_rat : ℚ := n
    let inv_n := IntervalDyadic.ofIntervalRat (IntervalRat.singleton (1/n_rat)) prec

    -- 1. Compute Mean: μ = Σx / n
    let sum := sumIntervals x
    let mean := IntervalDyadic.mulRounded sum inv_n prec

    -- 2. Compute Variance: σ² = Σ(x - μ)² / n
    -- Note: x and mean are correlated, so (x - mean) is overestimated
    let diffs := x.map (fun xi => IntervalDyadic.sub xi mean)
    let sq_diffs := diffs.map (fun d => IntervalDyadic.mulRounded d d prec)
    let sum_sq := sumIntervals sq_diffs
    let var := IntervalDyadic.mulRounded sum_sq inv_n prec

    -- 3. Compute Denominator: 1 / sqrt(σ² + ε)
    -- Add epsilon for numerical stability
    let eps_interval := IntervalDyadic.ofIntervalRat
      (IntervalRat.singleton params.epsilon) prec
    let var_eps := IntervalDyadic.add var eps_interval

    -- Sqrt (conservative: assumes non-negative input)
    let std_dev := IntervalDyadic.sqrt var_eps prec

    -- Invert: Since var + eps ≥ eps > 0, the interval is positive
    -- We need to check this and handle division
    let inv_std_dev :=
      let I := std_dev.toIntervalRat
      if h : 0 < I.lo then
        let hnonzero : ¬IntervalRat.containsZero I := fun hcz => not_lt.mpr hcz.1 h
        let Ipos : IntervalRat.IntervalRatNonzero := ⟨I, hnonzero⟩
        IntervalDyadic.ofIntervalRat (IntervalRat.invNonzero Ipos) prec
      else
        -- Fallback: conservative bound derived from epsilon
        IntervalDyadic.ofIntervalRat ⟨0, 1 / params.epsilon + 1, by
          have hpos : (0 : ℚ) < 1 / params.epsilon := by
            exact one_div_pos.mpr params.epsilon_pos
          linarith⟩ prec

    -- 4. Normalize and Scale: ((x - μ) * inv_std) * γ + β
    let normalized := diffs.map (fun d => IntervalDyadic.mulRounded d inv_std_dev prec)

    -- Apply Gamma and Beta element-wise
    let result := List.zipWith3 (fun norm g b =>
      let g_interval := IntervalDyadic.ofIntervalRat (IntervalRat.singleton g) prec
      let b_interval := IntervalDyadic.ofIntervalRat (IntervalRat.singleton b) prec
      let scaled := IntervalDyadic.mulRounded norm g_interval prec
      IntervalDyadic.add scaled b_interval
    ) normalized params.gamma params.beta

    result

end LayerNormParams

/-! ### LayerNorm Helper Lemmas -/

/-- Membership lemma for mulRounded -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variante1ae2797684ff64a5fea5ec2756430ce687bcc2903404eab0c9307cafe30e3e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variante1ae2797684ff64a5fea5ec2756430ce687bcc2903404eab0c9307cafe30e3e6.lean#L289).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff9082fc0a6a3d70a90bde087f3ebf61f9ff434a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
