# setIntegral_sq_shift_le'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e010fcb4ea1553e1e0e674f05839954799b6061d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 59,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/41/41139eba2832c4d77f3e307f86dc4ccccf4ffc04df870ef02d88750c0a2d859f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c2bf6734-e62b-fda9-792f-796c3a6397b0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2d8bd8a0-36af-0ac5-e4bf-40b22806c7f2",
  "kind": "lemma",
  "lexical_name": "setIntegral_sq_shift_le'",
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
  "slug": "setintegral-sq-shift-le--fc54d69301b80c7d190b5122",
  "source": {
    "blob": "e010fcb4ea1553e1e0e674f05839954799b6061d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 59,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CrossMuPCore/Variant41139eba2832c4d77f3e307f86dc4ccccf4ffc04df870ef02d88750c0a2d859f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc54d69301b80c7d190b51222bbc35dd745eb29086044435bde0da2956014185",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CrossMuPCore/Variant41139eba2832c4d77f3e307f86dc4ccccf4ffc04df870ef02d88750c0a2d859f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d8bd8a0-36af-0ac5-e4bf-40b22806c7f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma setIntegral_sq_shift_le' (hΦint : Integrable (fun x => Φ x ^ 2)) (S : Set ℝ) (c : ℝ) :
    ∫ y in S, Φ (y - c) ^ 2 ≤ ∫ y, Φ y ^ 2 := by
  calc ∫ y in S, Φ (y - c) ^ 2 ≤ ∫ y, Φ (y - c) ^ 2 :=
        setIntegral_le_integral (hΦint.comp_sub_right c)
          (Filter.Eventually.of_forall fun y => sq_nonneg _)
    _ = ∫ y, Φ y ^ 2 := integral_sub_right_eq_self (fun y => Φ y ^ 2) c

/-- **IBP in `τ`** (§5.4 "integrating by parts in τ"), for fixed `τ′`:
`∫_T^{2T} u(τ)(Φ²)′(τ−τ′) dτ = u(2T)Φ(2T−τ′)² − u(T)Φ(T−τ′)² − ∫_T^{2T} u′(τ)Φ(τ−τ′)² dτ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CrossMuPCore/Variant41139eba2832c4d77f3e307f86dc4ccccf4ffc04df870ef02d88750c0a2d859f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CrossMuPCore/Variant41139eba2832c4d77f3e307f86dc4ccccf4ffc04df870ef02d88750c0a2d859f.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e010fcb4ea1553e1e0e674f05839954799b6061d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
