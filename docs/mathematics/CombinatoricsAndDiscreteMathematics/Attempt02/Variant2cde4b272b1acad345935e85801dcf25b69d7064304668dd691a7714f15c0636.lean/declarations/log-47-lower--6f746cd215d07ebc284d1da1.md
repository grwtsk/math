# log_47_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b3173370-51ad-610c-2cbf-7dd678ff98d7",
  "kind": "theorem",
  "lexical_name": "log_47_lower",
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
  "slug": "log-47-lower--6f746cd215d07ebc284d1da1",
  "source": {
    "blob": "be7b19a6dd834b21d26d36a2105f9ba4975c103b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 209,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Attempt02/Variant2cde4b272b1acad345935e85801dcf25b69d7064304668dd691a7714f15c0636.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f746cd215d07ebc284d1da1945c795f1752937b21d987cb3972968e89ff4bd1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Attempt02/Variant2cde4b272b1acad345935e85801dcf25b69d7064304668dd691a7714f15c0636.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3173370-51ad-610c-2cbf-7dd678ff98d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_47_lower : (38501:ℝ)/10000 ≤ Real.log 47 := by
  have h := Real.sum_range_le_log_div (x := ((15:ℝ)/79)) (by norm_num) (by norm_num) 5
  have hid : Real.log 47 = 5*Real.log 2 + Real.log ((47:ℝ)/32) := by
    rw [Real.log_div (by norm_num) (by norm_num)]
    have hp : Real.log (32:ℝ) = 5*Real.log 2 := by
      convert Real.log_pow (2:ℝ) 5 using 1 <;> norm_num
    rw [hp]
    ring
  norm_num [Finset.sum_range_succ] at h
  have h2 := log_two_lower
  rw [hid]
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Attempt02/Variant2cde4b272b1acad345935e85801dcf25b69d7064304668dd691a7714f15c0636.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Attempt02/Variant2cde4b272b1acad345935e85801dcf25b69d7064304668dd691a7714f15c0636.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be7b19a6dd834b21d26d36a2105f9ba4975c103b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
