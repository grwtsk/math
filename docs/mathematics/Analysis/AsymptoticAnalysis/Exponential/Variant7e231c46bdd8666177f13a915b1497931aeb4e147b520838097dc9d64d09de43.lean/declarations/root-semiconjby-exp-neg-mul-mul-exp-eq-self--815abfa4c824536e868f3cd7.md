# _root_.SemiconjBy.exp_neg_mul_mul_exp_eq_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7d937cd1e48e3dacfd5d8ef03bca34661dd045b5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 551,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7e231c46bdd8666177f13a915b1497931aeb4e147b520838097dc9d64d09de43.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8662942c-da93-f3db-cbef-8e2b34ba7100",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9291330f-3426-caa1-c902-8bfcac6b2cad",
  "kind": "lemma",
  "lexical_name": "_root_.SemiconjBy.exp_neg_mul_mul_exp_eq_self",
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
  "slug": "root-semiconjby-exp-neg-mul-mul-exp-eq-self--815abfa4c824536e868f3cd7",
  "source": {
    "blob": "7d937cd1e48e3dacfd5d8ef03bca34661dd045b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 559,
    "line": 551,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Exponential/Variant7e231c46bdd8666177f13a915b1497931aeb4e147b520838097dc9d64d09de43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:815abfa4c824536e868f3cd7b4232f9d205ccc39b3d126ed3a6f728ae01f593d",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Exponential/Variant7e231c46bdd8666177f13a915b1497931aeb4e147b520838097dc9d64d09de43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9291330f-3426-caa1-c902-8bfcac6b2cad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 551–559.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.SemiconjBy.exp_neg_mul_mul_exp_eq_self {x a b : 𝔸} (h : SemiconjBy x a b) :
    exp (-b) * x * exp a = x := by
  let := invertibleExp b
  simpa [← invOf_exp, mul_assoc, invOf_mul_eq_iff_eq_mul_left] using! h.exp_right

set_option backward.isDefEq.respectTransparency false in
open scoped Function in -- required for scoped `on` notation
/-- In a Banach-algebra `𝔸` over `𝕂 = ℝ` or `𝕂 = ℂ`, if a family of elements `f i` mutually
commute then `NormedSpace.exp (∑ i, f i) = ∏ i, NormedSpace.exp (f i)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Exponential/Variant7e231c46bdd8666177f13a915b1497931aeb4e147b520838097dc9d64d09de43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Exponential/Variant7e231c46bdd8666177f13a915b1497931aeb4e147b520838097dc9d64d09de43.lean#L551).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d937cd1e48e3dacfd5d8ef03bca34661dd045b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
