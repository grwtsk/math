# exp_lt_two_add_div_two_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2800b54a-e97b-6766-fb09-5417ce0c69eb",
  "kind": "lemma",
  "lexical_name": "exp_lt_two_add_div_two_sub",
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
  "slug": "exp-lt-two-add-div-two-sub--3a9769d4798fdc441b3de0cf",
  "source": {
    "blob": "5ef2335bb48580b1486a76a19620a474d8b5856a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 684,
    "line": 673,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Exponential/Variant4c3ab3a47d8e8a2014d91014320d17b26f440aa0a41e2bd8b4fefaecb4bde528.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a9769d4798fdc441b3de0cf169eac299c764fa1186ff97a2d48b378c749aa43",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Exponential/Variant4c3ab3a47d8e8a2014d91014320d17b26f440aa0a41e2bd8b4fefaecb4bde528.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2800b54a-e97b-6766-fb09-5417ce0c69eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 673–684.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exp_lt_two_add_div_two_sub {x : ℝ} (hx : 0 < x) (hx' : x < 2) :
    exp x < (2 + x) / (2 - x) := by calc
  _ = exp (x / 2) ^ 2 := by grind [Real.exp_nat_mul (x / 2) 2]
  _ ≤ _ := by
    grw [Real.exp_bound' (x := x / 2) (by grind) (by grind) (n := 3) (by simp)]
    apply Real.exp_nonneg
  _ < (2 + x) / (2 - x) := by
    rw [lt_div_iff₀ (by linarith), ← sub_pos]
    simp only [Finset.sum_range_succ]
    ring_nf
    positivity

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Exponential/Variant4c3ab3a47d8e8a2014d91014320d17b26f440aa0a41e2bd8b4fefaecb4bde528.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Exponential/Variant4c3ab3a47d8e8a2014d91014320d17b26f440aa0a41e2bd8b4fefaecb4bde528.lean#L673).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ef2335bb48580b1486a76a19620a474d8b5856a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
