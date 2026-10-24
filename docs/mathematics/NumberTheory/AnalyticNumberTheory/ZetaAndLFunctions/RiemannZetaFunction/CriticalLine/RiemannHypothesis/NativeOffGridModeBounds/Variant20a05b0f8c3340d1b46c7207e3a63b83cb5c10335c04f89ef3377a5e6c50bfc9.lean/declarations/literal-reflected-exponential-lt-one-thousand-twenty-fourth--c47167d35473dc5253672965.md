# literal_reflected_exponential_lt_one_thousand_twenty_fourth

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:593cd95d-003e-8840-90bf-a0dc01dc5e93",
  "kind": "theorem",
  "lexical_name": "literal_reflected_exponential_lt_one_thousand_twenty_fourth",
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
  "slug": "literal-reflected-exponential-lt-one-thousand-twenty-fourth--c47167d35473dc5253672965",
  "source": {
    "blob": "789d93e57561ce9b74b482fb5b22cecc67520d0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 89,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeOffGridModeBounds/Variant20a05b0f8c3340d1b46c7207e3a63b83cb5c10335c04f89ef3377a5e6c50bfc9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c47167d35473dc525367296579caa46db0c6e2f6420a6788b7e38900f4c88be0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeOffGridModeBounds/Variant20a05b0f8c3340d1b46c7207e3a63b83cb5c10335c04f89ef3377a5e6c50bfc9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:593cd95d-003e-8840-90bf-a0dc01dc5e93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem literal_reflected_exponential_lt_one_thousand_twenty_fourth {A : ℝ} (hA : 100 ≤ A) :
    Real.exp (-A / 2) < 1 / 1024 := by
  have he := Real.pow_div_factorial_le_exp (x := A / 2) (by linarith) 4
  have hp4 : (100 : ℝ) ^ 4 ≤ A ^ 4 := by gcongr
  norm_num at he
  ring_nf at he
  have hearg : A * (1 / 2 : ℝ) = A / 2 := by ring
  rw [hearg] at he
  have hb : (1024 : ℝ) < Real.exp (A / 2) := by nlinarith
  rw [neg_div, Real.exp_neg, ← one_div]
  apply (div_lt_iff₀ (Real.exp_pos _)).mpr
  nlinarith

end
end GRWTSK.RiemannHypothesis.Conversation.NativeOffGridModeBounds
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeOffGridModeBounds/Variant20a05b0f8c3340d1b46c7207e3a63b83cb5c10335c04f89ef3377a5e6c50bfc9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeOffGridModeBounds/Variant20a05b0f8c3340d1b46c7207e3a63b83cb5c10335c04f89ef3377a5e6c50bfc9.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `789d93e57561ce9b74b482fb5b22cecc67520d0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
