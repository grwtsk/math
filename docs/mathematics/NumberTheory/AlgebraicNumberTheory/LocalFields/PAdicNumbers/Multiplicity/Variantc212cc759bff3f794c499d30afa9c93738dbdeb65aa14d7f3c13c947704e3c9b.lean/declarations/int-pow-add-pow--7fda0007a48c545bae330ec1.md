# Int.pow_add_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e157f1c4438e8eff6c30d5108cb9103ebecd4db2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 220,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c2/c212cc759bff3f794c499d30afa9c93738dbdeb65aa14d7f3c13c947704e3c9b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:df34e2aa-2833-d5a1-bdae-5e1701924ef0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:67e76c5f-aa74-1998-b15a-05f1cc7ae8f8",
  "kind": "theorem",
  "lexical_name": "Int.pow_add_pow",
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
  "slug": "int-pow-add-pow--7fda0007a48c545bae330ec1",
  "source": {
    "blob": "e157f1c4438e8eff6c30d5108cb9103ebecd4db2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 220,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Multiplicity/Variantc212cc759bff3f794c499d30afa9c93738dbdeb65aa14d7f3c13c947704e3c9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7fda0007a48c545bae330ec1606e056764f0ad43169c66d6c8f0a551919cba8e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Multiplicity/Variantc212cc759bff3f794c499d30afa9c93738dbdeb65aa14d7f3c13c947704e3c9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67e76c5f-aa74-1998-b15a-05f1cc7ae8f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Int.pow_add_pow {x y : ℤ} (hxy : ↑p ∣ x + y) (hx : ¬↑p ∣ x) {n : ℕ} (hn : Odd n) :
    multiplicity (↑p) (x ^ n + y ^ n) = multiplicity (↑p) (x + y) + multiplicity p n := by
  rw [← sub_neg_eq_add] at hxy
  rw [← sub_neg_eq_add, ← sub_neg_eq_add, ← Odd.neg_pow hn]
  exact Int.pow_sub_pow hp hp1 hxy hx n
#align multiplicity.int.pow_add_pow multiplicity.Int.pow_add_pow

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Multiplicity/Variantc212cc759bff3f794c499d30afa9c93738dbdeb65aa14d7f3c13c947704e3c9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Multiplicity/Variantc212cc759bff3f794c499d30afa9c93738dbdeb65aa14d7f3c13c947704e3c9b.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e157f1c4438e8eff6c30d5108cb9103ebecd4db2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
