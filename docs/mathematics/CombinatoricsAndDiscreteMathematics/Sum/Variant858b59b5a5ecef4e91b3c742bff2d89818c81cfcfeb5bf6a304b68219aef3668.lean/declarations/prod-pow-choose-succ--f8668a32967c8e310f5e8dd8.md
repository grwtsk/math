# prod_pow_choose_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f3aef7e31fff9831f893ada6d540ff00f12d953e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 184,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/85/858b59b5a5ecef4e91b3c742bff2d89818c81cfcfeb5bf6a304b68219aef3668.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a98eb672-a2f6-8dfa-39cc-f362349fa542",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ee603fc3-1e24-0b87-2a0a-3a84f3b72524",
  "kind": "theorem",
  "lexical_name": "prod_pow_choose_succ",
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
  "slug": "prod-pow-choose-succ--f8668a32967c8e310f5e8dd8",
  "source": {
    "blob": "f3aef7e31fff9831f893ada6d540ff00f12d953e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 184,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sum/Variant858b59b5a5ecef4e91b3c742bff2d89818c81cfcfeb5bf6a304b68219aef3668.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8668a32967c8e310f5e8dd862524e6657a6741f7c7983ad574e2639b0003982",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Sum/Variant858b59b5a5ecef4e91b3c742bff2d89818c81cfcfeb5bf6a304b68219aef3668.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee603fc3-1e24-0b87-2a0a-3a84f3b72524`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_pow_choose_succ {M : Type*} [CommMonoid M] (f : ℕ → ℕ → M) (n : ℕ) :
    (∏ i in range (n + 2), f i (n + 1 - i) ^ (n + 1).choose i) =
      (∏ i in range (n + 1), f i (n + 1 - i) ^ n.choose i) *
        ∏ i in range (n + 1), f (i + 1) (n - i) ^ n.choose i := by
  have A : (∏ i in range (n + 1), f (i + 1) (n - i) ^ (n.choose (i + 1))) * f 0 (n + 1) =
    ∏ i in range (n + 1), f i (n + 1 - i) ^ (n.choose i)
  · rw [prod_range_succ, prod_range_succ']
    simp
  rw [prod_range_succ']
  simpa [Nat.choose_succ_succ, pow_add, prod_mul_distrib, A, mul_assoc] using mul_comm _ _

-- porting note: new lemma
@[to_additive sum_antidiagonal_choose_succ_nsmul]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Sum/Variant858b59b5a5ecef4e91b3c742bff2d89818c81cfcfeb5bf6a304b68219aef3668.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Sum/Variant858b59b5a5ecef4e91b3c742bff2d89818c81cfcfeb5bf6a304b68219aef3668.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3aef7e31fff9831f893ada6d540ff00f12d953e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
