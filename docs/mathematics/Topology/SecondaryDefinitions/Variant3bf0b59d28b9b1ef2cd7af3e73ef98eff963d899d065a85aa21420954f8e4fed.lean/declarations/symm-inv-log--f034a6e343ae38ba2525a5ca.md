# symm_inv_log

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6b7c25d8957f1e23fc40a4396c176524928ee1bb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 111,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3b/3bf0b59d28b9b1ef2cd7af3e73ef98eff963d899d065a85aa21420954f8e4fed.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9b303aa1-cc05-1659-31cc-faeb299b8aaf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:233e4733-1774-8cdb-0ee3-5a114d740173",
  "kind": "theorem",
  "lexical_name": "symm_inv_log",
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
  "slug": "symm-inv-log--f034a6e343ae38ba2525a5ca",
  "source": {
    "blob": "6b7c25d8957f1e23fc40a4396c176524928ee1bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 111,
    "path": "GRWTSK/Topology/SecondaryDefinitions/Variant3bf0b59d28b9b1ef2cd7af3e73ef98eff963d899d065a85aa21420954f8e4fed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f034a6e343ae38ba2525a5cacff60d8e266708a8770f04524d5eebd19d9c6308",
  "verification": {
    "reference": "docs/verification/Topology/SecondaryDefinitions/Variant3bf0b59d28b9b1ef2cd7af3e73ef98eff963d899d065a85aa21420954f8e4fed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:233e4733-1774-8cdb-0ee3-5a114d740173`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem symm_inv_log (t : ℝ) (ht : 0 < t) (ht' : t ≤ 1 / 2) :
    |1 / log (1 + t) + 1 / log (1 - t)| ≤ 16 * log (4 / 3) / 3 := by
  have log_add_ne_zero : log (1 + t) ≠ 0 := by
    simp only [ne_eq, log_eq_zero]
    grind
  have log_sub_ne_zero : log (1 - t) ≠ 0 := by
    simp only [ne_eq, log_eq_zero]
    grind
  have : t ^ 2 ≤ 1 / 4 := by
    rw [show (1 : ℝ) / 4 = (1 / 2) ^ 2 by norm_num]
    gcongr
  have numerator := log_ge' (by positivity) this (by norm_num)
  have denominator1 := le_neg.mpr <| log_le (-t) (by linarith)
  have : 3 / 4 * t ≤ t - t ^ 2 / 2 := by
    rw [(by ring : t - t ^ 2 / 2 = (1 - t / 2) * t)]
    gcongr
    linarith
  have denominator2 := le_trans this <| log_ge ht.le
  have denominator : log (1 + t) * -(log (1 - t)) ≥ (3 / 4 * t) * t := by
    gcongr
    · bound
    · exact denominator1
  calc
    _ = |(log (1 + t) + log (1 - t)) / (log (1 + t) * log (1 - t))| := by
      congr
      field
    _ = |(log (1 - t ^ 2)) / (log (1 + t) * log (1 - t))| := by
      rw [← log_mul (by linarith) (by linarith)]
      congr
      ring
    _ = (-(log (1 - t ^ 2))) / (log (1 + t) * (-log (1 - t))) := by
      rw [abs_div, abs_mul,
        abs_of_nonpos <| log_nonpos (by bound)
          (by simp only [tsub_le_iff_right, le_add_iff_nonneg_right]; positivity),
        abs_of_nonneg <| log_nonneg (by linarith),
        abs_of_nonpos <| log_nonpos (by linarith) (by linarith)]
    _ ≤ (-t ^ 2 / (1 / 4) * log (3 / 4)) / (log (1 + t) * -log (1 - t)) := by
      gcongr
      · apply mul_nonneg
        · apply log_nonneg
          linarith
        · apply neg_nonneg.mpr <| log_nonpos _ _
          all_goals linarith
      linarith
    _ ≤ (-t ^ 2 / (1 / 4) * log (3 / 4)) / (3 / 4 * t * t) := by
      gcongr
      apply mul_nonneg_of_nonpos_of_nonpos
      · apply div_nonpos_of_nonpos_of_nonneg _ (by norm_num)
        apply neg_le.mp
        simpa using sq_nonneg t
      · apply log_nonpos
        all_goals norm_num
    _ = _ := by
      rw [(by field : (3 : ℝ) / 4 = (4 / 3)⁻¹), log_inv]
      field

@[blueprint
  "li_minus_Li"
  (title := "li minus Li")
  (statement := /-- $\li(x) - \Li(x) = \li(2)$. -/)
  (proof := /--
    This follows from the previous estimate. -/)
  (latexEnv := "remark")
  (discussion := 758)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/SecondaryDefinitions/Variant3bf0b59d28b9b1ef2cd7af3e73ef98eff963d899d065a85aa21420954f8e4fed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/SecondaryDefinitions/Variant3bf0b59d28b9b1ef2cd7af3e73ef98eff963d899d065a85aa21420954f8e4fed.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b7c25d8957f1e23fc40a4396c176524928ee1bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
