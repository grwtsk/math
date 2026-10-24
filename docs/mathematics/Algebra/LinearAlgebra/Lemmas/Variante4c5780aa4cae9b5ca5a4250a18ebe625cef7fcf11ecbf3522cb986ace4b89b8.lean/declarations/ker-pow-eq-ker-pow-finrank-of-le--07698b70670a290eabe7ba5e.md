# ker_pow_eq_ker_pow_finrank_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1b40f5178b41f8e87b4c73a05bb33f11fe249e51",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 372,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e4c5780aa4cae9b5ca5a4250a18ebe625cef7fcf11ecbf3522cb986ace4b89b8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aa0c2cbe-661b-c260-cdfe-95caa1cdd9cf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:74970dc8-e288-d601-8409-38ddbceb8c30",
  "kind": "theorem",
  "lexical_name": "ker_pow_eq_ker_pow_finrank_of_le",
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
  "slug": "ker-pow-eq-ker-pow-finrank-of-le--07698b70670a290eabe7ba5e",
  "source": {
    "blob": "1b40f5178b41f8e87b4c73a05bb33f11fe249e51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 383,
    "line": 372,
    "path": "GRWTSK/Algebra/LinearAlgebra/Lemmas/Variante4c5780aa4cae9b5ca5a4250a18ebe625cef7fcf11ecbf3522cb986ace4b89b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07698b70670a290eabe7ba5e57b751717afec9a7c33df0cbc5e9ebd07441cc72",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Lemmas/Variante4c5780aa4cae9b5ca5a4250a18ebe625cef7fcf11ecbf3522cb986ace4b89b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:74970dc8-e288-d601-8409-38ddbceb8c30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 372–383.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ker_pow_eq_ker_pow_finrank_of_le [FiniteDimensional K V] {f : End K V} {m : ℕ}
    (hm : finrank K V ≤ m) : LinearMap.ker (f ^ m) = LinearMap.ker (f ^ finrank K V) := by
  obtain ⟨k, h_k_le, hk⟩ :
    ∃ k, k ≤ finrank K V ∧ LinearMap.ker (f ^ k) = LinearMap.ker (f ^ k.succ) :=
    exists_ker_pow_eq_ker_pow_succ f
  calc
    LinearMap.ker (f ^ m) = LinearMap.ker (f ^ (k + (m - k))) := by
      rw [add_tsub_cancel_of_le (h_k_le.trans hm)]
    _ = LinearMap.ker (f ^ k) := by rw [ker_pow_constant hk _]
    _ = LinearMap.ker (f ^ (k + (finrank K V - k))) := ker_pow_constant hk (finrank K V - k)
    _ = LinearMap.ker (f ^ finrank K V) := by rw [add_tsub_cancel_of_le h_k_le]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Lemmas/Variante4c5780aa4cae9b5ca5a4250a18ebe625cef7fcf11ecbf3522cb986ace4b89b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Lemmas/Variante4c5780aa4cae9b5ca5a4250a18ebe625cef7fcf11ecbf3522cb986ace4b89b8.lean#L372).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b40f5178b41f8e87b4c73a05bb33f11fe249e51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
