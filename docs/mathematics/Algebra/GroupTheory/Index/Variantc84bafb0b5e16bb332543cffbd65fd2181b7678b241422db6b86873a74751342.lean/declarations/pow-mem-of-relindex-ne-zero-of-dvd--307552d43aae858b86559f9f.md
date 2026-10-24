# pow_mem_of_relIndex_ne_zero_of_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f5e753f9-2559-c100-0c44-0394292556eb",
  "kind": "lemma",
  "lexical_name": "pow_mem_of_relIndex_ne_zero_of_dvd",
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
  "slug": "pow-mem-of-relindex-ne-zero-of-dvd--307552d43aae858b86559f9f",
  "source": {
    "blob": "ddcb9b542e107b94004982f6c42d84629baae43c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 628,
    "line": 623,
    "path": "GRWTSK/Algebra/GroupTheory/Index/Variantc84bafb0b5e16bb332543cffbd65fd2181b7678b241422db6b86873a74751342.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:307552d43aae858b86559f9f506028fab24252626ae901e54bcef015854e430d",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Index/Variantc84bafb0b5e16bb332543cffbd65fd2181b7678b241422db6b86873a74751342.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5e753f9-2559-c100-0c44-0394292556eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 623–628.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pow_mem_of_relIndex_ne_zero_of_dvd (h : H.relIndex K ≠ 0) {a : G} (ha : a ∈ K) {n : ℕ}
    (hn : ∀ m, 0 < m → m ≤ H.relIndex K → m ∣ n) : a ^ n ∈ H ⊓ K := by
  convert! pow_mem_of_index_ne_zero_of_dvd h ⟨a, ha⟩ hn
  simp [pow_mem ha, mem_subgroupOf]

@[to_additive (attr := simp) index_prod]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Index/Variantc84bafb0b5e16bb332543cffbd65fd2181b7678b241422db6b86873a74751342.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Index/Variantc84bafb0b5e16bb332543cffbd65fd2181b7678b241422db6b86873a74751342.lean#L623).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ddcb9b542e107b94004982f6c42d84629baae43c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
