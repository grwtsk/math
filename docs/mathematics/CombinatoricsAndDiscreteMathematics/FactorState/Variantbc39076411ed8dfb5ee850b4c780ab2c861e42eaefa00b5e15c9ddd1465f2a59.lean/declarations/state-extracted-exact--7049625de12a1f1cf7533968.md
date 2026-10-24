# State.extracted_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "82988026bae26e16d3a9a8d9672b38d8473f7864",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 204,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bc/bc39076411ed8dfb5ee850b4c780ab2c861e42eaefa00b5e15c9ddd1465f2a59.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6ff8ca98-3fd7-6d44-e00e-42b13893eb8e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:55cab084-8f32-29b5-b371-ab9b39640216",
  "kind": "theorem",
  "lexical_name": "State.extracted_exact",
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
  "slug": "state-extracted-exact--7049625de12a1f1cf7533968",
  "source": {
    "blob": "82988026bae26e16d3a9a8d9672b38d8473f7864",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 204,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FactorState/Variantbc39076411ed8dfb5ee850b4c780ab2c861e42eaefa00b5e15c9ddd1465f2a59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7049625de12a1f1cf75339686124e4a4c009708b0cf319fd9053aedda88a242f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FactorState/Variantbc39076411ed8dfb5ee850b4c780ab2c861e42eaefa00b5e15c9ddd1465f2a59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55cab084-8f32-29b5-b371-ab9b39640216`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem State.extracted_exact {N p : ℕ} (s : State N) (hp : p ∈ s.extracted.support) :
    N.factorization p = s.extracted p := by
  calc
    N.factorization p = (s.residual * primeProduct s.extracted).factorization p :=
      congrArg (fun n : ℕ => n.factorization p) s.conservation
    _ = s.extracted p := ?_
  rw [Nat.factorization_mul s.residual_pos.ne' (primeProduct_pos s.extracted_primes).ne']
  rw [primeProduct, Nat.prod_pow_factorization_eq_self s.extracted_primes]
  simp [Nat.factorization_eq_zero_of_not_dvd (s.extracted_resolved p hp)]

/-- A closed prime-power factorization, with exact integer reconstruction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FactorState/Variantbc39076411ed8dfb5ee850b4c780ab2c861e42eaefa00b5e15c9ddd1465f2a59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FactorState/Variantbc39076411ed8dfb5ee850b4c780ab2c861e42eaefa00b5e15c9ddd1465f2a59.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82988026bae26e16d3a9a8d9672b38d8473f7864` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
