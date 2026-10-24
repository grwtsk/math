# iInf_max_gen_zero_eigenspace_eq_top_of_nilpotent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d7498cdd0181d4e734048c6d60efe479b61da9ef",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 251,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ef/efd7b64dad7b050dbfce9b56fb74c3cc40fdfcd693270f681b92c987a2496f0a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d2ceacd9-8634-4f4e-33fa-f2d8232f349a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b5d8d7b2-51b7-7887-5f4a-c75ed80e2bb3",
  "kind": "theorem",
  "lexical_name": "iInf_max_gen_zero_eigenspace_eq_top_of_nilpotent",
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
  "slug": "iinf-max-gen-zero-eigenspace-eq-top-of-nilpotent--5a6810adaa237ab2489a00e6",
  "source": {
    "blob": "d7498cdd0181d4e734048c6d60efe479b61da9ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 251,
    "path": "GRWTSK/Algebra/Nilpotent/Variantefd7b64dad7b050dbfce9b56fb74c3cc40fdfcd693270f681b92c987a2496f0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a6810adaa237ab2489a00e67bd4ea838fb4f0e0e37b3eda0141f43358ec53a6",
  "verification": {
    "reference": "docs/verification/Algebra/Nilpotent/Variantefd7b64dad7b050dbfce9b56fb74c3cc40fdfcd693270f681b92c987a2496f0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5d8d7b2-51b7-7887-5f4a-c75ed80e2bb3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iInf_max_gen_zero_eigenspace_eq_top_of_nilpotent [IsNilpotent R L M] :
    ⨅ x : L, (toEndomorphism R L M x).maximalGeneralizedEigenspace 0 = ⊤ := by
  ext m
  simp only [Module.End.mem_maximalGeneralizedEigenspace, Submodule.mem_top, sub_zero, iff_true_iff,
    zero_smul, Submodule.mem_iInf]
  intro x
  obtain ⟨k, hk⟩ := exists_forall_pow_toEndomorphism_eq_zero R L M
  use k; rw [hk]
  exact LinearMap.zero_apply m
#align lie_module.infi_max_gen_zero_eigenspace_eq_top_of_nilpotent LieModule.iInf_max_gen_zero_eigenspace_eq_top_of_nilpotent

/-- If the quotient of a Lie module `M` by a Lie submodule on which the Lie algebra acts trivially
is nilpotent then `M` is nilpotent.

This is essentially the Lie module equivalent of the fact that a central
extension of nilpotent Lie algebras is nilpotent. See `LieAlgebra.nilpotent_of_nilpotent_quotient`
below for the corresponding result for Lie algebras. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Nilpotent/Variantefd7b64dad7b050dbfce9b56fb74c3cc40fdfcd693270f681b92c987a2496f0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Nilpotent/Variantefd7b64dad7b050dbfce9b56fb74c3cc40fdfcd693270f681b92c987a2496f0a.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7498cdd0181d4e734048c6d60efe479b61da9ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
