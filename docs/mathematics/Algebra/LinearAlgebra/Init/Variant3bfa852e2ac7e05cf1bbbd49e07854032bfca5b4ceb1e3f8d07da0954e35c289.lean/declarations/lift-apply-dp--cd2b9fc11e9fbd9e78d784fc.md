# lift'_apply_dp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c2bf2f741f7fb940393f9648a2583df3098081a3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 336,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3b/3bfa852e2ac7e05cf1bbbd49e07854032bfca5b4ceb1e3f8d07da0954e35c289.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fe85c7b2-21ef-5598-9f3a-27618fb88072",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f95b5d67-01d3-9f5c-3181-9b64fbfffd40",
  "kind": "theorem",
  "lexical_name": "lift'_apply_dp",
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
  "slug": "lift-apply-dp--cd2b9fc11e9fbd9e78d784fc",
  "source": {
    "blob": "c2bf2f741f7fb940393f9648a2583df3098081a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 346,
    "line": 336,
    "path": "GRWTSK/Algebra/LinearAlgebra/Init/Variant3bfa852e2ac7e05cf1bbbd49e07854032bfca5b4ceb1e3f8d07da0954e35c289.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd2b9fc11e9fbd9e78d784fc27473e6caf4c5a5c715ac5e76db7ceb7dd17a27b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Init/Variant3bfa852e2ac7e05cf1bbbd49e07854032bfca5b4ceb1e3f8d07da0954e35c289.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f95b5d67-01d3-9f5c-3181-9b64fbfffd40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 336–346.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lift'_apply_dp {f : ℕ × M → A} (hf_zero : ∀ m, f (0, m) = 1)
    (hf_smul : ∀ (n : ℕ) (r : R) (m : M), f ⟨n, r • m⟩ = r ^ n • f ⟨n, m⟩)
    (hf_mul : ∀ n p m, f ⟨n, m⟩ * f ⟨p, m⟩ = (n + p).choose n • f ⟨n + p, m⟩)
    (hf_add : ∀ n u v, f ⟨n, u + v⟩ = (antidiagonal n).sum fun (k, l) ↦ f ⟨k, u⟩ * f ⟨l, v⟩)
    (n : ℕ) (m : M) :
    lift' hf_zero hf_smul hf_mul hf_add (dp R n m) = f ⟨n, m⟩ := by
  rw [dp_def, lift'_apply hf_zero hf_smul hf_mul hf_add, aeval_X]

variable {I : Ideal A} (hI : DividedPowers I) (g : M →ₗ[R] A) (hg : ∀ m, g m ∈ I)

/-- The weak universal property of a divided power algebra for morphisms to divided power rings -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Init/Variant3bfa852e2ac7e05cf1bbbd49e07854032bfca5b4ceb1e3f8d07da0954e35c289.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Init/Variant3bfa852e2ac7e05cf1bbbd49e07854032bfca5b4ceb1e3f8d07da0954e35c289.lean#L336).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2bf2f741f7fb940393f9648a2583df3098081a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
