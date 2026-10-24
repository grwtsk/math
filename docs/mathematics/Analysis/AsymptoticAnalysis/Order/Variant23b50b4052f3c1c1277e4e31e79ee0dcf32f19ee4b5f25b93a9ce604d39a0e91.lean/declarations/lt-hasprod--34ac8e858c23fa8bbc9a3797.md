# lt_hasProd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e7b3e8da-153a-bdbd-877e-23151b289bc8",
  "kind": "theorem",
  "lexical_name": "lt_hasProd",
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
  "slug": "lt-hasprod--34ac8e858c23fa8bbc9a3797",
  "source": {
    "blob": "2f605d29771de7d413b680255fc3b8d13a1904c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 127,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Order/Variant23b50b4052f3c1c1277e4e31e79ee0dcf32f19ee4b5f25b93a9ce604d39a0e91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34ac8e858c23fa8bbc9a3797b0ae5c95ef628899e67b0a981dad5b06dc4d2d7c",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Order/Variant23b50b4052f3c1c1277e4e31e79ee0dcf32f19ee4b5f25b93a9ce604d39a0e91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7b3e8da-153a-bdbd-877e-23151b289bc8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lt_hasProd [MulRightStrictMono α] (hf : HasProd f a) (i : ι)
    (hi : ∀ (j : ι), j ≠ i → 1 ≤ f j) (j : ι) (hij : j ≠ i) (hj : 1 < f j) :
    f i < a := by
  classical
  calc
    f i < f j * f i := lt_mul_of_one_lt_left' (f i) hj
    _ = ∏ k ∈ {j, i}, f k := by rw [Finset.prod_pair hij]
    _ ≤ a := prod_le_hasProd _ (fun k hk ↦ hi k (hk ∘ mem_insert_of_mem ∘ mem_singleton.mpr)) hf

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Order/Variant23b50b4052f3c1c1277e4e31e79ee0dcf32f19ee4b5f25b93a9ce604d39a0e91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Order/Variant23b50b4052f3c1c1277e4e31e79ee0dcf32f19ee4b5f25b93a9ce604d39a0e91.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f605d29771de7d413b680255fc3b8d13a1904c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
