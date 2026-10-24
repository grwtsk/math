# compExactValue_correctness_of_stream_eq_some_aux_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ceeb65e-888b-f055-1162-cc7452779c91",
  "kind": "theorem",
  "lexical_name": "compExactValue_correctness_of_stream_eq_some_aux_comp",
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
  "slug": "compexactvalue-correctness-of-stream-eq-some-aux-comp--6083d618767919a3b41806d9",
  "source": {
    "blob": "37370c3153767e31d82807c717a60bc2917c8d3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 85,
    "path": "GRWTSK/Algebra/UniversalAlgebra/CorrectnessTerminating/Variant9525b073020b39defaaca4bbb1b7892fd60b680a48998951791c07599855b0f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6083d618767919a3b41806d9ed745607a7285f53a71b0a923ee5819721b5935c",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/CorrectnessTerminating/Variant9525b073020b39defaaca4bbb1b7892fd60b680a48998951791c07599855b0f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ceeb65e-888b-f055-1162-cc7452779c91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem compExactValue_correctness_of_stream_eq_some_aux_comp {a : K} (b c : K)
    (fract_a_ne_zero : Int.fract a ≠ 0) :
    ((⌊a⌋ : K) * b + c) / Int.fract a + b = (b * a + c) / Int.fract a := by
  field_simp [fract_a_ne_zero]
  rw [Int.fract]
  ring
#align generalized_continued_fraction.comp_exact_value_correctness_of_stream_eq_some_aux_comp GeneralizedContinuedFraction.compExactValue_correctness_of_stream_eq_some_aux_comp

open GeneralizedContinuedFraction
  (compExactValue compExactValue_correctness_of_stream_eq_some_aux_comp)

/-- Shows the correctness of `compExactValue` in case the continued fraction
`GeneralizedContinuedFraction.of v` did not terminate at position `n`. That is, we obtain the
value `v` if we pass the two successive (auxiliary) continuants at positions `n` and `n + 1` as well
as the fractional part at `IntFractPair.stream n` to `compExactValue`.

The correctness might be seen more readily if one uses `convergents'` to evaluate the continued
fraction. Here is an example to illustrate the idea:

Let `(v : ℚ) := 3.4`. We have
- `GeneralizedContinuedFraction.IntFractPair.stream v 0 = some ⟨3, 0.4⟩`, and
- `GeneralizedContinuedFraction.IntFractPair.stream v 1 = some ⟨2, 0.5⟩`.
Now `(GeneralizedContinuedFraction.of v).convergents' 1 = 3 + 1/2`, and our fractional term at
position `2` is `0.5`. We hence have `v = 3 + 1/(2 + 0.5) = 3 + 1/2.5 = 3.4`. This computation
corresponds exactly to the one using the recurrence equation in `compExactValue`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/CorrectnessTerminating/Variant9525b073020b39defaaca4bbb1b7892fd60b680a48998951791c07599855b0f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/CorrectnessTerminating/Variant9525b073020b39defaaca4bbb1b7892fd60b680a48998951791c07599855b0f0.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37370c3153767e31d82807c717a60bc2917c8d3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
