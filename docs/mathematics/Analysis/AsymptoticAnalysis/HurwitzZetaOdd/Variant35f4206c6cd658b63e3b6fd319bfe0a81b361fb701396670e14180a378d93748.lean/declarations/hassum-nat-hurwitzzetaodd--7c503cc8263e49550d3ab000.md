# hasSum_nat_hurwitzZetaOdd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:12669516-abcc-84b8-3039-1b5405171e6d",
  "kind": "lemma",
  "lexical_name": "hasSum_nat_hurwitzZetaOdd",
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
  "slug": "hassum-nat-hurwitzzetaodd--7c503cc8263e49550d3ab000",
  "source": {
    "blob": "bea269c1fef938c672f09f5252358eda8f48d095",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 504,
    "line": 495,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant35f4206c6cd658b63e3b6fd319bfe0a81b361fb701396670e14180a378d93748.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c503cc8263e49550d3ab0008d9ae41ea256799475b199461c24e28aecfb5e45",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant35f4206c6cd658b63e3b6fd319bfe0a81b361fb701396670e14180a378d93748.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12669516-abcc-84b8-3039-1b5405171e6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 495–504.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasSum_nat_hurwitzZetaOdd (a : ℝ) {s : ℂ} (hs : 1 < re s) :
    HasSum (fun n : ℕ ↦ (SignType.sign (n + a) / (↑|n + a| : ℂ) ^ s
      - SignType.sign (n + 1 - a) / (↑|n + 1 - a| : ℂ) ^ s) / 2) (hurwitzZetaOdd a s) := by
  refine (hasSum_int_hurwitzZetaOdd a hs).nat_add_neg_add_one.congr_fun fun n ↦ ?_
  rw [Int.cast_neg, Int.cast_add, Int.cast_one, sub_div, sub_eq_add_neg, Int.cast_natCast]
  have : -(n + 1) + a = -(n + 1 - a) := by ring_nf
  rw [this, Left.sign_neg, abs_neg, SignType.coe_neg, neg_div, neg_div]

/-- Formula for `hurwitzZetaOdd` as a Dirichlet series in the convergence range, with sum over `ℕ`
(version without absolute values, assuming `a ∈ Icc 0 1`) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant35f4206c6cd658b63e3b6fd319bfe0a81b361fb701396670e14180a378d93748.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant35f4206c6cd658b63e3b6fd319bfe0a81b361fb701396670e14180a378d93748.lean#L495).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bea269c1fef938c672f09f5252358eda8f48d095` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
