# mem_intervalAround

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:594ce62e-5b4e-a433-9167-3d169e9fd0e7",
  "kind": "theorem",
  "lexical_name": "mem_intervalAround",
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
  "slug": "mem-intervalaround--18c46d163da14b28137a56ca",
  "source": {
    "blob": "fb5ccbabe0f397a86a2cca9f8f4eabc18a71bc80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 107,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NeuralNet/Varianta54b795769bd3baaeecd2ed4e05fc4c23ef1e588cc6929036b8fc90ff7a2e0b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:18c46d163da14b28137a56ca16f954b579acb0635635e4a9229cd919b78fd9d6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NeuralNet/Varianta54b795769bd3baaeecd2ed4e05fc4c23ef1e588cc6929036b8fc90ff7a2e0b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:594ce62e-5b4e-a433-9167-3d169e9fd0e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_intervalAround {x : ℝ} {center eps : ℚ} (heps : 0 < eps)
    (hx : |x - center| ≤ eps) (prec : Int) (hprec : prec ≤ 0 := by norm_num) :
    x ∈ intervalAround center eps (le_of_lt heps) prec := by
  unfold intervalAround
  apply IntervalDyadic.mem_ofIntervalRat _ prec hprec
  simp only [IntervalRat.mem_def]
  rw [abs_le] at hx
  constructor
  · -- x ≥ center - eps
    have h1 : -(eps : ℝ) ≤ x - (center : ℝ) := hx.1
    have h2 : (center : ℝ) - (eps : ℝ) ≤ x := by linarith
    simp only [Rat.cast_sub]
    exact h2
  · -- x ≤ center + eps
    have h1 : x - (center : ℝ) ≤ (eps : ℝ) := hx.2
    have h2 : x ≤ (center : ℝ) + (eps : ℝ) := by linarith
    simp only [Rat.cast_add]
    exact h2

/-- Main robustness theorem: For any real input (x, y) within ε=0.1 of (0.5, 0.5),
    the network output is contained in the computed output interval.

    This is a **verified robustness certificate**: it proves that small
    perturbations to the input cannot cause the output to leave the computed bounds. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NeuralNet/Varianta54b795769bd3baaeecd2ed4e05fc4c23ef1e588cc6929036b8fc90ff7a2e0b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NeuralNet/Varianta54b795769bd3baaeecd2ed4e05fc4c23ef1e588cc6929036b8fc90ff7a2e0b5.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb5ccbabe0f397a86a2cca9f8f4eabc18a71bc80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
