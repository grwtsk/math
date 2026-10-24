# theorem_a

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4ce3979ff32048626872bfc88c58371b04468b85",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 265,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/406008003c2e043f47361c13687012a784172d674eb611994e037a212df28bf3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a7ac07fc-7344-f131-f657-af4008e85f63",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f032969e-44a0-f70a-8774-e49c857a810e",
  "kind": "theorem",
  "lexical_name": "theorem_a",
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
  "slug": "theorem-a--48445ef118ac3b30efedeb5d",
  "source": {
    "blob": "4ce3979ff32048626872bfc88c58371b04468b85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 286,
    "line": 265,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/TMEEMT/Variant406008003c2e043f47361c13687012a784172d674eb611994e037a212df28bf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48445ef118ac3b30efedeb5d5eaf94476c9530387cdb564163c7437833c4ba3f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/TMEEMT/Variant406008003c2e043f47361c13687012a784172d674eb611994e037a212df28bf3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f032969e-44a0-f70a-8774-e49c857a810e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–286.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem theorem_a (x : ℝ) (hx : x ≥ exp 22) :
    |ψ x - x| ≤ 0.006409 * x / log x := by
  calc |ψ x - x|
      ≤ |θ x - x| + (ψ x - θ x) := psi_triangle x
    _ ≤ 4.2065e-1 * x / (log x) ^ 3 + (1.001 * sqrt x + 1.78 * x ^ (1 / 3 : ℝ)) := by
        linarith [theta_err hx, psi_theta_err <| lt_of_lt_of_le (exp_pos _) hx]
    _ ≤ 0.0009 * x / log x + (0.005 * x / log x + 0.0005 * x / log x) := by
        linarith [theta_err_simpl hx, sqrt_err hx, cbrt_err hx]
    _ ≤ 0.006409 * x / log x := by
        have hxlog : 0 ≤ x / log x :=
          div_nonneg (le_of_lt (lt_of_lt_of_le (exp_pos _) hx)) (le_of_lt (by linarith [log_ge_22 hx]))
        have : 0.0009 * x / log x + (0.005 * x / log x + 0.0005 * x / log x) =
               (0.0009 + 0.005 + 0.0005) * (x / log x) := by ring
        rw [this, show 0.006409 * x / log x = 0.006409 * (x / log x) from by ring]
        apply mul_le_mul_of_nonneg_right _ hxlog
        norm_num

@[blueprint
  "thm:dusart1999-b"
  (title := "Dusart 1999, part b")
  (statement := /-- For $x \geq 10{,}544{,}111$, we have $|\vartheta(x) - x| \leq \frac{0.006788\, x}{\log x}$. -/)
  (latexEnv := "theorem")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/TMEEMT/Variant406008003c2e043f47361c13687012a784172d674eb611994e037a212df28bf3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/TMEEMT/Variant406008003c2e043f47361c13687012a784172d674eb611994e037a212df28bf3.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ce3979ff32048626872bfc88c58371b04468b85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
