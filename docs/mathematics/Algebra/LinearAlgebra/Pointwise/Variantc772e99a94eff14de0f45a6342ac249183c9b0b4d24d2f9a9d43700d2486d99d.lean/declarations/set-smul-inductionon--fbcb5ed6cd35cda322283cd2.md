# set_smul_inductionOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:56aaf571-7d9a-415e-82b1-0d58516f0338",
  "kind": "lemma",
  "lexical_name": "set_smul_inductionOn",
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
  "slug": "set-smul-inductionon--fbcb5ed6cd35cda322283cd2",
  "source": {
    "blob": "022e679f0a3d7e6a5ae1ae1d8c59830a1642d397",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 420,
    "line": 400,
    "path": "GRWTSK/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fbcb5ed6cd35cda322283cd23bebc989e950cbb9b68f789e64ad7669a22efdbf",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56aaf571-7d9a-415e-82b1-0d58516f0338`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 400–420.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma set_smul_inductionOn {motive : (x : M) → (_ : x ∈ s • N) → Prop}
    (x : M)
    (hx : x ∈ s • N)
    (smul₀ : ∀ ⦃r : S⦄ ⦃n : M⦄ (mem₁ : r ∈ s) (mem₂ : n ∈ N),
      motive (r • n) (mem_set_smul_of_mem_mem mem₁ mem₂))
    (smul₁ : ∀ (r : R) ⦃m : M⦄ (mem : m ∈ s • N) ,
      motive m mem → motive (r • m) (Submodule.smul_mem _ r mem)) --
    (add : ∀ ⦃m₁ m₂ : M⦄ (mem₁ : m₁ ∈ s • N) (mem₂ : m₂ ∈ s • N),
      motive m₁ mem₁ → motive m₂ mem₂ → motive (m₁ + m₂) (Submodule.add_mem _ mem₁ mem₂))
    (zero : motive 0 (Submodule.zero_mem _)) :
    motive x hx :=
  let ⟨_, h⟩ := set_smul_le s N
    { carrier := { m | ∃ (mem : m ∈ s • N), motive m mem },
      zero_mem' := ⟨Submodule.zero_mem _, zero⟩
      add_mem' := fun ⟨mem, h⟩ ⟨mem', h'⟩ ↦ ⟨_, add mem mem' h h'⟩
      smul_mem' := fun r _ ⟨mem, h⟩ ↦ ⟨_, smul₁ r mem h⟩ }
    (fun _ _ mem mem' ↦ ⟨mem_set_smul_of_mem_mem mem mem', smul₀ mem mem'⟩) hx
  h

-- Implementation note: if `N` is both an `R`-submodule and `S`-submodule and `SMulCommClass R S M`,
-- this lemma is also true for any `s : Set S`.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean#L400).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `022e679f0a3d7e6a5ae1ae1d8c59830a1642d397` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
