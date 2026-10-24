# summable_and_hasSum_smoothNumbers_prod_primesBelow_tsum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "957605101c128a359c8d8b3ea64cb8de69bf1fbc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 137,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ad/ad9abd415b85b036d3e874ed23b7b6a256f1fd219bf395c059c47fdb638b4f51.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:864947d8-8913-ed1a-0342-270d1c5fdc9e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:17222c01-9fa8-9981-a5d1-49c85f7593aa",
  "kind": "lemma",
  "lexical_name": "summable_and_hasSum_smoothNumbers_prod_primesBelow_tsum",
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
  "slug": "summable-and-hassum-smoothnumbers-prod-primesbelow-tsum--a16fd7a27632e1c09dc8eb5a",
  "source": {
    "blob": "957605101c128a359c8d8b3ea64cb8de69bf1fbc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 137,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variantad9abd415b85b036d3e874ed23b7b6a256f1fd219bf395c059c47fdb638b4f51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a16fd7a27632e1c09dc8eb5a57e0b3863b3878d91cafceb9e8af17df043f6e12",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Basic/Variantad9abd415b85b036d3e874ed23b7b6a256f1fd219bf395c059c47fdb638b4f51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17222c01-9fa8-9981-a5d1-49c85f7593aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma summable_and_hasSum_smoothNumbers_prod_primesBelow_tsum
    (hsum : ∀ {p : ℕ}, p.Prime → Summable (fun n : ℕ ↦ ‖f (p ^ n)‖)) (N : ℕ) :
    Summable (fun m : N.smoothNumbers ↦ ‖f m‖) ∧
      HasSum (fun m : N.smoothNumbers ↦ f m) (∏ p ∈ N.primesBelow, ∑' n : ℕ, f (p ^ n)) := by
  rw [smoothNumbers_eq_factoredNumbers, primesBelow]
  exact summable_and_hasSum_factoredNumbers_prod_filter_prime_tsum hf₁ hmul hsum _

include hf₁ hmul in
/-- A version of `EulerProduct.summable_and_hasSum_smoothNumbers_prod_primesBelow_tsum`
in terms of the value of the series. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Basic/Variantad9abd415b85b036d3e874ed23b7b6a256f1fd219bf395c059c47fdb638b4f51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variantad9abd415b85b036d3e874ed23b7b6a256f1fd219bf395c059c47fdb638b4f51.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `957605101c128a359c8d8b3ea64cb8de69bf1fbc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
