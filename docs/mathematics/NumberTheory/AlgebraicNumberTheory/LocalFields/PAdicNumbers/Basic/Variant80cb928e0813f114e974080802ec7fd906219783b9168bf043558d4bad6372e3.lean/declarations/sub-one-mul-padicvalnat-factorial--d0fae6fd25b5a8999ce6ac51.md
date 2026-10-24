# sub_one_mul_padicValNat_factorial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "09e4fe43670b683a56a386ff184228b0894fe2d3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 622,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/80cb928e0813f114e974080802ec7fd906219783b9168bf043558d4bad6372e3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:89f74928-aad2-2dc1-ed27-d141dbb25e9d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b8033a3b-f070-4d67-c1e6-b03fbd82830b",
  "kind": "theorem",
  "lexical_name": "sub_one_mul_padicValNat_factorial",
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
  "slug": "sub-one-mul-padicvalnat-factorial--d0fae6fd25b5a8999ce6ac51",
  "source": {
    "blob": "09e4fe43670b683a56a386ff184228b0894fe2d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 630,
    "line": 622,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Basic/Variant80cb928e0813f114e974080802ec7fd906219783b9168bf043558d4bad6372e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0fae6fd25b5a8999ce6ac51f44fb01777a6dd43e8a41ca19264e702547cd916",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Basic/Variant80cb928e0813f114e974080802ec7fd906219783b9168bf043558d4bad6372e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8033a3b-f070-4d67-c1e6-b03fbd82830b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 622–630.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sub_one_mul_padicValNat_factorial [hp : Fact p.Prime] (n : ℕ) :
    (p - 1) * padicValNat p (n !) = n - (p.digits n).sum := by
  rw [padicValNat_factorial <| lt_succ_of_lt <| lt_add_one (log p n)]
  nth_rw 2 [← zero_add 1]
  rw [Nat.succ_eq_add_one, ← Finset.sum_Ico_add' _ 0 _ 1,
    Ico_zero_eq_range, ← sub_one_mul_sum_log_div_pow_eq_sub_sum_digits, Nat.succ_eq_add_one]

variable (p)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Basic/Variant80cb928e0813f114e974080802ec7fd906219783b9168bf043558d4bad6372e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Basic/Variant80cb928e0813f114e974080802ec7fd906219783b9168bf043558d4bad6372e3.lean#L622).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09e4fe43670b683a56a386ff184228b0894fe2d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
