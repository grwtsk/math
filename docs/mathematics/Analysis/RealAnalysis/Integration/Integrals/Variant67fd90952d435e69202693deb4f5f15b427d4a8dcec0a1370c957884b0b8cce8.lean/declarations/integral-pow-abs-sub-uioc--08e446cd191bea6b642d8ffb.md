# integral_pow_abs_sub_uIoc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "48a6c825f7dc3cee9985320e03b21870e12f21b6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 406,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/67/67fd90952d435e69202693deb4f5f15b427d4a8dcec0a1370c957884b0b8cce8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a92b5357-acc9-4895-96a5-3e90ab6d3fe0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cfffd8f4-b3c3-f8b4-7e17-9e828962b3f1",
  "kind": "theorem",
  "lexical_name": "integral_pow_abs_sub_uIoc",
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
  "slug": "integral-pow-abs-sub-uioc--08e446cd191bea6b642d8ffb",
  "source": {
    "blob": "48a6c825f7dc3cee9985320e03b21870e12f21b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 428,
    "line": 406,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Integrals/Variant67fd90952d435e69202693deb4f5f15b427d4a8dcec0a1370c957884b0b8cce8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:08e446cd191bea6b642d8ffbbd878f461cff8c58f170b9d607e7e6af8ce4597a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Integrals/Variant67fd90952d435e69202693deb4f5f15b427d4a8dcec0a1370c957884b0b8cce8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cfffd8f4-b3c3-f8b4-7e17-9e828962b3f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 406–428.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_pow_abs_sub_uIoc : ∫ x in Ι a b, |x - a| ^ n = |b - a| ^ (n + 1) / (n + 1) := by
  rcases le_or_lt a b with hab | hab
  · calc
      ∫ x in Ι a b, |x - a| ^ n = ∫ x in a..b, |x - a| ^ n := by
        rw [uIoc_of_le hab, ← integral_of_le hab]
      _ = ∫ x in (0)..(b - a), x ^ n := by
        simp only [integral_comp_sub_right fun x => |x| ^ n, sub_self]
        refine integral_congr fun x hx => congr_arg₂ Pow.pow (abs_of_nonneg <| ?_) rfl
        rw [uIcc_of_le (sub_nonneg.2 hab)] at hx
        exact hx.1
      _ = |b - a| ^ (n + 1) / (n + 1) := by simp [abs_of_nonneg (sub_nonneg.2 hab)]
  · calc
      ∫ x in Ι a b, |x - a| ^ n = ∫ x in b..a, |x - a| ^ n := by
        rw [uIoc_of_ge hab.le, ← integral_of_le hab.le]
      _ = ∫ x in b - a..0, (-x) ^ n := by
        simp only [integral_comp_sub_right fun x => |x| ^ n, sub_self]
        refine integral_congr fun x hx => congr_arg₂ Pow.pow (abs_of_nonpos <| ?_) rfl
        rw [uIcc_of_le (sub_nonpos.2 hab.le)] at hx
        exact hx.2
      _ = |b - a| ^ (n + 1) / (n + 1) := by
        simp [integral_comp_neg fun x => x ^ n, abs_of_neg (sub_neg.2 hab)]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Integrals/Variant67fd90952d435e69202693deb4f5f15b427d4a8dcec0a1370c957884b0b8cce8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Integrals/Variant67fd90952d435e69202693deb4f5f15b427d4a8dcec0a1370c957884b0b8cce8.lean#L406).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48a6c825f7dc3cee9985320e03b21870e12f21b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
