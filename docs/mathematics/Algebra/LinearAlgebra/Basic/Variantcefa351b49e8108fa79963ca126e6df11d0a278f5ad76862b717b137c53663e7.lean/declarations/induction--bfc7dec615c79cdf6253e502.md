# induction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fbcf362039a1c89e3e3344372fc6f723435d003e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 199,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ce/cefa351b49e8108fa79963ca126e6df11d0a278f5ad76862b717b137c53663e7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4156fc36-6183-4fa7-4a1e-82f9c5c262c9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3bb55143-3221-afb8-fe2f-b3423ddc3296",
  "kind": "theorem",
  "lexical_name": "induction",
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
  "slug": "induction--bfc7dec615c79cdf6253e502",
  "source": {
    "blob": "fbcf362039a1c89e3e3344372fc6f723435d003e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 199,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantcefa351b49e8108fa79963ca126e6df11d0a278f5ad76862b717b137c53663e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bfc7dec615c79cdf6253e502f38ae6437eecb5241fceea64f847f09e75686d28",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantcefa351b49e8108fa79963ca126e6df11d0a278f5ad76862b717b137c53663e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3bb55143-3221-afb8-fe2f-b3423ddc3296`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem induction {C : CliffordAlgebra Q → Prop}
    (algebraMap : ∀ r, C (algebraMap R (CliffordAlgebra Q) r)) (ι : ∀ x, C (ι Q x))
    (mul : ∀ a b, C a → C b → C (a * b)) (add : ∀ a b, C a → C b → C (a + b))
    (a : CliffordAlgebra Q) : C a := by
  -- the arguments are enough to construct a subalgebra, and a mapping into it from M
  let s : Subalgebra R (CliffordAlgebra Q) :=
    { carrier := {a | C a}
      mul_mem' := @mul
      add_mem' := @add
      algebraMap_mem' := algebraMap }
  let of : { f : M →ₗ[R] s // ∀ m, f m * f m = Algebra.algebraMap _ _ (Q m) } :=
    ⟨(CliffordAlgebra.ι Q).codRestrict (Subalgebra.toSubmodule s) ι,
      fun m => Subtype.ext <| ι_sq_scalar Q m⟩
  -- the mapping through the subalgebra is the identity
  have of_id : s.val.comp (lift Q of) = AlgHom.id R (CliffordAlgebra Q) := by
    ext x
    simpa [of, -LinearMap.codRestrict_apply]
      -- This `@[simp]` lemma applies to `coeSort s.subModule`, but the goal contains
      -- a plain `coeSort s`. So we remove it from the `simp` arguments, and add it to
      -- the term that `simpa` will simplify before applying.
      using LinearMap.codRestrict_apply s.toSubmodule (CliffordAlgebra.ι Q) x (h := ι)
  -- finding a proof is finding an element of the subalgebra
  rw [← AlgHom.id_apply (R := R) a, ← of_id]
  exact (lift Q of a).prop

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantcefa351b49e8108fa79963ca126e6df11d0a278f5ad76862b717b137c53663e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantcefa351b49e8108fa79963ca126e6df11d0a278f5ad76862b717b137c53663e7.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbcf362039a1c89e3e3344372fc6f723435d003e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
