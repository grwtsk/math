# summable_pow_div_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bc053ee83f754bb12a8950c5708168075c539e39",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 466,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/da3f7357bc38ef48f80dabe38484bb27d45aa751646b406158f79c43b7939468.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:72ab2188-1bdb-c79e-83b2-237d739c7234",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c1b51b6a-379a-a149-a593-1030caec49d9",
  "kind": "theorem",
  "lexical_name": "summable_pow_div_add",
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
  "slug": "summable-pow-div-add--5bbae455cb19b87a6efa1f83",
  "source": {
    "blob": "bc053ee83f754bb12a8950c5708168075c539e39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 474,
    "line": 466,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/PSeries/Variantda3f7357bc38ef48f80dabe38484bb27d45aa751646b406158f79c43b7939468.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5bbae455cb19b87a6efa1f83f7033a315220f14d6f0236477b6ce96f47566e0f",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/PSeries/Variantda3f7357bc38ef48f80dabe38484bb27d45aa751646b406158f79c43b7939468.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1b51b6a-379a-a149-a593-1030caec49d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 466–474.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem summable_pow_div_add {α : Type*} (x : α) [RCLike α] (q k : ℕ) (hq : 1 < q) :
    Summable fun n : ℕ => ‖(x / (↑n + k) ^ q)‖ := by
  simp_rw [norm_div]
  apply Summable.const_div
  simpa [hq, Nat.cast_add, one_div, norm_inv, norm_pow, RCLike.norm_natCast,
    Real.summable_nat_pow_inv, iff_true]
      using summable_nat_add_iff (f := fun x => ‖1 / (x ^ q : α)‖) k

end shifted
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/PSeries/Variantda3f7357bc38ef48f80dabe38484bb27d45aa751646b406158f79c43b7939468.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/PSeries/Variantda3f7357bc38ef48f80dabe38484bb27d45aa751646b406158f79c43b7939468.lean#L466).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc053ee83f754bb12a8950c5708168075c539e39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
