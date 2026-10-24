# pow_smul_sum_map_aroots_aeval_mem_range_algebraMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2fa6c6e6-ead2-2494-006d-9caf7f1ee484",
  "kind": "theorem",
  "lexical_name": "pow_smul_sum_map_aroots_aeval_mem_range_algebraMap",
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
  "slug": "pow-smul-sum-map-aroots-aeval-mem-range-algebramap--6e27819b5a0bf3d75f7ffd10",
  "source": {
    "blob": "0ccefaecdc270bed77155f8e431d01a42a1c47bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 174,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Eval/Variant749e0c147ea9affc909067141f59e0f27b37d82d5bb6e2555e10318769ca2509.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e27819b5a0bf3d75f7ffd109b133a18aa2242958b9e9184d64edcc56d98e031",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Eval/Variant749e0c147ea9affc909067141f59e0f27b37d82d5bb6e2555e10318769ca2509.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2fa6c6e6-ead2-2494-006d-9caf7f1ee484`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pow_smul_sum_map_aroots_aeval_mem_range_algebraMap
    (k : R) (e : ℕ) (hk : p.leadingCoeff ∣ k) (he : q.natDegree ≤ e)
    (hsplit : (p.map (algebraMap R A)).Splits) :
    k ^ e • ((p.aroots A).map (q.aeval ·)).sum ∈ Set.range (algebraMap R A) := by
  obtain ⟨k, rfl⟩ := hk; obtain ⟨e, rfl⟩ := le_iff_exists_add.mp he
  have : (p.leadingCoeff * k) ^ (q.natDegree + e) =
      (p.leadingCoeff * k) ^ e * k ^ q.natDegree * p.leadingCoeff ^ q.natDegree := by
    ring
  rw [this, mul_smul, ← Algebra.mem_bot]
  apply SMulMemClass.smul_mem
  rw [Algebra.mem_bot]
  exact leadingCoeff_pow_natDegree_smul_sum_map_aroots_aeval_mem_range_algebraMap _ _ hsplit

end Polynomial
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Eval/Variant749e0c147ea9affc909067141f59e0f27b37d82d5bb6e2555e10318769ca2509.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Eval/Variant749e0c147ea9affc909067141f59e0f27b37d82d5bb6e2555e10318769ca2509.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ccefaecdc270bed77155f8e431d01a42a1c47bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
