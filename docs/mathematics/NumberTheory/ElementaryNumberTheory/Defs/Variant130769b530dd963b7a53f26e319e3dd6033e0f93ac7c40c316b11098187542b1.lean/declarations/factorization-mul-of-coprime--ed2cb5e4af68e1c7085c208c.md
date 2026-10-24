# factorization_mul_of_coprime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "97b86d54dd27cc529ba85a2caa5ea7ba876f1f54",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 315,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/13/130769b530dd963b7a53f26e319e3dd6033e0f93ac7c40c316b11098187542b1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d5a903cd-066f-f41d-ef52-a4eb61285df7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0931efd1-bc7a-456c-a075-5f494dc35352",
  "kind": "theorem",
  "lexical_name": "factorization_mul_of_coprime",
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
  "slug": "factorization-mul-of-coprime--ed2cb5e4af68e1c7085c208c",
  "source": {
    "blob": "97b86d54dd27cc529ba85a2caa5ea7ba876f1f54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 331,
    "line": 315,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Defs/Variant130769b530dd963b7a53f26e319e3dd6033e0f93ac7c40c316b11098187542b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed2cb5e4af68e1c7085c208ce12219c94330d8d407a726db6a3a068334453988",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Defs/Variant130769b530dd963b7a53f26e319e3dd6033e0f93ac7c40c316b11098187542b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0931efd1-bc7a-456c-a075-5f494dc35352`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 315–331.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem factorization_mul_of_coprime {a b : ℕ} (hab : Coprime a b) :
    (a * b).factorization = a.factorization + b.factorization := by
  ext q
  rw [Finsupp.add_apply, factorization_mul_apply_of_coprime hab]

/-! ### Generalisation of the "even part" and "odd part" of a natural number -/

/-- We introduce the notations `ordProj[p] n` for the largest power of the prime `p` that
divides `n` and `ordCompl[p] n` for the complementary part. The `ord` naming comes from
the $p$-adic order/valuation of a number, and `proj` and `compl` are for the projection and
complementary projection. The term `n.factorization p` is the $p$-adic order itself.
For example, `ordProj[2] n` is the even part of `n` and `ordCompl[2] n` is the odd part. -/
notation "ordProj[" p "] " n:arg => p ^ Nat.factorization n p

@[inherit_doc «termOrdProj[_]_»]
notation "ordCompl[" p "] " n:arg => n / ordProj[p] n

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Defs/Variant130769b530dd963b7a53f26e319e3dd6033e0f93ac7c40c316b11098187542b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Defs/Variant130769b530dd963b7a53f26e319e3dd6033e0f93ac7c40c316b11098187542b1.lean#L315).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97b86d54dd27cc529ba85a2caa5ea7ba876f1f54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
