# toBaseChange_comp_involute

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9aa5279c1231f11bf889c68d1d0ce694020ce695",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 105,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c2/c2b4fda9d149740c56e81403f94fba3104286c8f921a9041ace9889063f49323.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d67611b4-4c60-20d0-3fbb-b84533a4a2d7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3c2e564b-6e67-9049-0d7c-4db86fd23cda",
  "kind": "theorem",
  "lexical_name": "toBaseChange_comp_involute",
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
  "slug": "tobasechange-comp-involute--510e5e3621f0de7c68ade1f2",
  "source": {
    "blob": "9aa5279c1231f11bf889c68d1d0ce694020ce695",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 105,
    "path": "GRWTSK/Algebra/LinearAlgebra/BaseChange/Variantc2b4fda9d149740c56e81403f94fba3104286c8f921a9041ace9889063f49323.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:510e5e3621f0de7c68ade1f24d9bd2afbfda89cd35b146365f62da13dd2301cb",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BaseChange/Variantc2b4fda9d149740c56e81403f94fba3104286c8f921a9041ace9889063f49323.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c2e564b-6e67-9049-0d7c-4db86fd23cda`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toBaseChange_comp_involute (Q : QuadraticForm R V) :
    (toBaseChange A Q).comp (involute : CliffordAlgebra (Q.baseChange A) →ₐ[A] _) =
      (Algebra.TensorProduct.map (AlgHom.id _ _) involute).comp (toBaseChange A Q) := by
  ext v
  show toBaseChange A Q (involute (ι (Q.baseChange A) (1 ⊗ₜ[R] v)))
    = (Algebra.TensorProduct.map (AlgHom.id _ _) involute :
        A ⊗[R] CliffordAlgebra Q →ₐ[A] _)
      (toBaseChange A Q (ι (Q.baseChange A) (1 ⊗ₜ[R] v)))
  rw [toBaseChange_ι, involute_ι, map_neg (toBaseChange A Q), toBaseChange_ι,
    Algebra.TensorProduct.map_tmul, AlgHom.id_apply, involute_ι, TensorProduct.tmul_neg]

/-- The involution acts only on the right of the tensor product. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BaseChange/Variantc2b4fda9d149740c56e81403f94fba3104286c8f921a9041ace9889063f49323.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BaseChange/Variantc2b4fda9d149740c56e81403f94fba3104286c8f921a9041ace9889063f49323.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9aa5279c1231f11bf889c68d1d0ce694020ce695` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
