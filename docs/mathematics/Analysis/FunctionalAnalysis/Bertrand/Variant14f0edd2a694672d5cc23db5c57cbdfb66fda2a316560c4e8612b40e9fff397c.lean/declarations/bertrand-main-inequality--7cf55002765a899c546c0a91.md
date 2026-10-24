# bertrand_main_inequality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6941e0effa4dcb03682837eb5ae5757345628ea9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 112,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/14/14f0edd2a694672d5cc23db5c57cbdfb66fda2a316560c4e8612b40e9fff397c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b071da97-699e-1f60-5e22-06cb1c6b2ae7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:91f787dc-d8b3-7624-5594-fe5d6adaba93",
  "kind": "theorem",
  "lexical_name": "bertrand_main_inequality",
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
  "slug": "bertrand-main-inequality--7cf55002765a899c546c0a91",
  "source": {
    "blob": "6941e0effa4dcb03682837eb5ae5757345628ea9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 112,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Bertrand/Variant14f0edd2a694672d5cc23db5c57cbdfb66fda2a316560c4e8612b40e9fff397c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7cf55002765a899c546c0a912c6c92083df398896e7ca4e7d4a99be3f091a377",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Bertrand/Variant14f0edd2a694672d5cc23db5c57cbdfb66fda2a316560c4e8612b40e9fff397c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91f787dc-d8b3-7624-5594-fe5d6adaba93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bertrand_main_inequality {n : ℕ} (n_large : 512 ≤ n) :
    n * (2 * n) ^ sqrt (2 * n) * 4 ^ (2 * n / 3) ≤ 4 ^ n := by
  rw [← @cast_le ℝ]
  simp only [cast_add, cast_one, cast_mul, cast_pow, ← Real.rpow_natCast]
  refine _root_.trans ?_ (Bertrand.real_main_inequality (by exact_mod_cast n_large))
  gcongr
  · have n2_pos : 0 < 2 * n := by positivity
    exact mod_cast n2_pos
  · exact_mod_cast Real.nat_sqrt_le_real_sqrt
  · norm_num1
  · exact cast_div_le.trans (by norm_cast)

/-- A lemma that tells us that, in the case where Bertrand's postulate does not hold, the prime
factorization of the central binomial coefficient only has factors at most `2 * n / 3 + 1`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Bertrand/Variant14f0edd2a694672d5cc23db5c57cbdfb66fda2a316560c4e8612b40e9fff397c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Bertrand/Variant14f0edd2a694672d5cc23db5c57cbdfb66fda2a316560c4e8612b40e9fff397c.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6941e0effa4dcb03682837eb5ae5757345628ea9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
