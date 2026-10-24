# Ideal.exists_pow_inf_eq_pow_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ac2e16ead92b9e0089e3519533e2e9e54a210049",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 430,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/48/4882004953ecf7df8345d1388bd2f1075176e8f79a65775ed99c9d927def7ea6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a478cbb2-9778-14e8-36c3-c9dac874cc9c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:120e596e-c8ce-bee8-8f61-ede6dc633f35",
  "kind": "theorem",
  "lexical_name": "Ideal.exists_pow_inf_eq_pow_smul",
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
  "slug": "ideal-exists-pow-inf-eq-pow-smul--5ad39436486031694bf64052",
  "source": {
    "blob": "ac2e16ead92b9e0089e3519533e2e9e54a210049",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 434,
    "line": 430,
    "path": "GRWTSK/Algebra/Filtration/Variant4882004953ecf7df8345d1388bd2f1075176e8f79a65775ed99c9d927def7ea6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ad39436486031694bf6405219508d3ca154e39b3e2d4ad6ac5594650ad25bfc",
  "verification": {
    "reference": "docs/verification/Algebra/Filtration/Variant4882004953ecf7df8345d1388bd2f1075176e8f79a65775ed99c9d927def7ea6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:120e596e-c8ce-bee8-8f61-ede6dc633f35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 430–434.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ideal.exists_pow_inf_eq_pow_smul [IsNoetherianRing R] [Module.Finite R M]
    (N : Submodule R M) : ∃ k : ℕ, ∀ n ≥ k, I ^ n • ⊤ ⊓ N = I ^ (n - k) • (I ^ k • ⊤ ⊓ N) :=
  ((I.stableFiltration_stable ⊤).inter_right (I.trivialFiltration N)).exists_pow_smul_eq_of_ge
#align ideal.exists_pow_inf_eq_pow_smul Ideal.exists_pow_inf_eq_pow_smul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Filtration/Variant4882004953ecf7df8345d1388bd2f1075176e8f79a65775ed99c9d927def7ea6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Filtration/Variant4882004953ecf7df8345d1388bd2f1075176e8f79a65775ed99c9d927def7ea6.lean#L430).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac2e16ead92b9e0089e3519533e2e9e54a210049` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
