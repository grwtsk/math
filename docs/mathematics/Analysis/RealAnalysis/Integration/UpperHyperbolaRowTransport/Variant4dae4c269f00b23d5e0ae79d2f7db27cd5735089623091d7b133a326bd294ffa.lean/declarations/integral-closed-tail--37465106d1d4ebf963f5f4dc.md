# integral_closed_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7d3021f74f32433d21f4bd0b5526556bb0580cc2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 68,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4dae4c269f00b23d5e0ae79d2f7db27cd5735089623091d7b133a326bd294ffa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d720795e-6d65-8649-f105-fac7e56d0a56",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e19bcdb2-7e30-5ea0-f576-d2a0c1b66d97",
  "kind": "theorem",
  "lexical_name": "integral_closed_tail",
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
  "slug": "integral-closed-tail--37465106d1d4ebf963f5f4dc",
  "source": {
    "blob": "7d3021f74f32433d21f4bd0b5526556bb0580cc2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 68,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/UpperHyperbolaRowTransport/Variant4dae4c269f00b23d5e0ae79d2f7db27cd5735089623091d7b133a326bd294ffa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37465106d1d4ebf963f5f4dc8cf3494bd6d09dbbc9f0178a23eda074d2a4ff06",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/UpperHyperbolaRowTransport/Variant4dae4c269f00b23d5e0ae79d2f7db27cd5735089623091d7b133a326bd294ffa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e19bcdb2-7e30-5ea0-f576-d2a0c1b66d97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_closed_tail (g : ℝ → ℝ) (a b r : ℝ) (hr : r ∈ Set.Icc a b) :
    (∫ x in a..b, if r ≤ x then g x else 0) = ∫ x in r..b, g x := by
  rw [intervalIntegral.integral_of_le (hr.1.trans hr.2),
    intervalIntegral.integral_of_le hr.2]
  change (∫ x in Set.Ioc a b, (Set.Ici r).indicator g x) = _
  rw [integral_indicator measurableSet_Ici, Measure.restrict_restrict measurableSet_Ici]
  apply setIntegral_congr_set
  filter_upwards [volume.ae_ne r] with x hx
  apply propext
  change (r ≤ x ∧ a < x ∧ x ≤ b) ↔ (r < x ∧ x ≤ b)
  constructor
  · rintro ⟨hrx, _, hxb⟩
    exact ⟨lt_of_le_of_ne hrx (Ne.symm hx), hxb⟩
  · rintro ⟨hrx, hxb⟩
    exact ⟨hrx.le, hr.1.trans_lt hrx, hxb⟩

/-- The actual source derivative integrates from each closed threshold
  to the zero upper endpoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/UpperHyperbolaRowTransport/Variant4dae4c269f00b23d5e0ae79d2f7db27cd5735089623091d7b133a326bd294ffa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/UpperHyperbolaRowTransport/Variant4dae4c269f00b23d5e0ae79d2f7db27cd5735089623091d7b133a326bd294ffa.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d3021f74f32433d21f4bd0b5526556bb0580cc2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
