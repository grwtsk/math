# symmetricLogComb_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "94ca2044ac940dc6b5ffdb8bfbd8e84b019840d4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 148,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/528821e9209433a2bd8ae180121e085f7976ba8966c7f1e42d8c938c0e66ef0a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:22636a79-d4b4-cac8-2570-f4826ea44c1c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c791bdf6-bf5a-9513-e415-78b49dd86f79",
  "kind": "theorem",
  "lexical_name": "symmetricLogComb_pos",
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
  "slug": "symmetriclogcomb-pos--60a2f1f50e760c85c0c4e22d",
  "source": {
    "blob": "94ca2044ac940dc6b5ffdb8bfbd8e84b019840d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 148,
    "path": "GRWTSK/Analysis/SpecialFunctions/PNTLogBounds/Variant528821e9209433a2bd8ae180121e085f7976ba8966c7f1e42d8c938c0e66ef0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60a2f1f50e760c85c0c4e22d98d7793b825534219588286c18e1a8340154f6ca",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/PNTLogBounds/Variant528821e9209433a2bd8ae180121e085f7976ba8966c7f1e42d8c938c0e66ef0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c791bdf6-bf5a-9513-e415-78b49dd86f79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem symmetricLogComb_pos (t : ℝ) (ht_pos : 0 < t) (ht_lt : t < 1) :
    0 < symmetricLogComb t := by
  -- The alternative form is log(1-t²)/(log(1+t)·log(1-t))
  -- Numerator log(1-t²) < 0 (since 0 < 1-t² < 1)
  -- Denominator log(1+t)·log(1-t) < 0 (positive times negative)
  -- So the quotient is positive
  have h1pt_pos : 0 < 1 + t := by linarith
  have h1mt_pos : 0 < 1 - t := by linarith
  have h1mt2_pos : 0 < 1 - t^2 := by nlinarith [sq_nonneg t]
  have h1mt2_lt1 : 1 - t^2 < 1 := by nlinarith [sq_nonneg t]
  have h1pt_gt1 : 1 < 1 + t := by linarith
  have h1mt_lt1 : 1 - t < 1 := by linarith
  have hlog1p_pos : 0 < log (1 + t) := log_pos h1pt_gt1
  have hlog1m_neg : log (1 - t) < 0 := log_neg h1mt_pos h1mt_lt1
  have hlog1mt2_neg : log (1 - t^2) < 0 := log_neg h1mt2_pos h1mt2_lt1
  have hdenom_neg : log (1 + t) * log (1 - t) < 0 := mul_neg_of_pos_of_neg hlog1p_pos hlog1m_neg
  -- The alternative form: symmetricLogComb t = log(1-t²) / (log(1+t) * log(1-t))
  have hlog1p_ne : log (1 + t) ≠ 0 := ne_of_gt hlog1p_pos
  have hlog1m_ne : log (1 - t) ≠ 0 := ne_of_lt hlog1m_neg
  have halt : symmetricLogComb t = log (1 - t^2) / (log (1 + t) * log (1 - t)) := by
    unfold symmetricLogComb
    have h1 : 1 / log (1 + t) + 1 / log (1 - t) =
        (log (1 - t) + log (1 + t)) / (log (1 + t) * log (1 - t)) := by field_simp
    have h2 : log (1 - t) + log (1 + t) = log ((1 - t) * (1 + t)) :=
      (log_mul (ne_of_gt h1mt_pos) (ne_of_gt h1pt_pos)).symm
    have h3 : (1 - t) * (1 + t) = 1 - t^2 := by ring
    simp only [h1, h2, h3]
  rw [halt]
  exact div_pos_of_neg_of_neg hlog1mt2_neg hdenom_neg

/-- g(t) ≤ 2 for 0 < t < 1.
    Proof uses: log(1+t) ≥ t/(1+t), log(1-t) ≥ -t/(1-t)
    Hence: 1/log(1+t) ≤ (1+t)/t, 1/log(1-t) ≤ -(1-t)/t
    Sum: ≤ (1+t)/t - (1-t)/t = 2 -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/PNTLogBounds/Variant528821e9209433a2bd8ae180121e085f7976ba8966c7f1e42d8c938c0e66ef0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/PNTLogBounds/Variant528821e9209433a2bd8ae180121e085f7976ba8966c7f1e42d8c938c0e66ef0a.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94ca2044ac940dc6b5ffdb8bfbd8e84b019840d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
