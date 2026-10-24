# tan_lt_tan_of_lt_of_lt_pi_div_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "98a46cc6e67df98619eca63a7c546f3701e94aca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 979,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d3/d33e61e4080ce7c759042fd65aff5ff00d72159ae37bab6266a5865d2d727359.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:90f3cc4e-c06f-42fe-9401-1699b615334d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:facb7814-7fcf-07f0-66de-ecc20a01ce02",
  "kind": "theorem",
  "lexical_name": "tan_lt_tan_of_lt_of_lt_pi_div_two",
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
  "slug": "tan-lt-tan-of-lt-of-lt-pi-div-two--3feec733de78232ecb6720f3",
  "source": {
    "blob": "98a46cc6e67df98619eca63a7c546f3701e94aca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 997,
    "line": 979,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantd33e61e4080ce7c759042fd65aff5ff00d72159ae37bab6266a5865d2d727359.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3feec733de78232ecb6720f3606fca4130f3ff535401330a49b4c3341a067104",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantd33e61e4080ce7c759042fd65aff5ff00d72159ae37bab6266a5865d2d727359.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:facb7814-7fcf-07f0-66de-ecc20a01ce02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 979–997.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tan_lt_tan_of_lt_of_lt_pi_div_two {x y : ℝ} (hx₁ : -(π / 2) < x) (hy₂ : y < π / 2)
    (hxy : x < y) : tan x < tan y :=
  match le_total x 0, le_total y 0 with
  | Or.inl hx0, Or.inl hy0 =>
    neg_lt_neg_iff.1 <| by
      rw [← tan_neg, ← tan_neg]
      exact tan_lt_tan_of_nonneg_of_lt_pi_div_two (neg_nonneg.2 hy0) (neg_lt.2 hx₁) (neg_lt_neg hxy)
  | Or.inl hx0, Or.inr hy0 =>
    (lt_or_eq_of_le hy0).elim
      (fun hy0 =>
        calc
          tan x ≤ 0 := tan_nonpos_of_nonpos_of_neg_pi_div_two_le hx0 (le_of_lt hx₁)
          _ < tan y := tan_pos_of_pos_of_lt_pi_div_two hy0 hy₂)
      fun hy0 => by
      rw [← hy0, tan_zero]; exact tan_neg_of_neg_of_pi_div_two_lt (hy0.symm ▸ hxy) hx₁
  | Or.inr hx0, Or.inl hy0 => by linarith
  | Or.inr hx0, Or.inr _ => tan_lt_tan_of_nonneg_of_lt_pi_div_two hx0 hy₂ hxy
#align real.tan_lt_tan_of_lt_of_lt_pi_div_two Real.tan_lt_tan_of_lt_of_lt_pi_div_two

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantd33e61e4080ce7c759042fd65aff5ff00d72159ae37bab6266a5865d2d727359.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantd33e61e4080ce7c759042fd65aff5ff00d72159ae37bab6266a5865d2d727359.lean#L979).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98a46cc6e67df98619eca63a7c546f3701e94aca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
