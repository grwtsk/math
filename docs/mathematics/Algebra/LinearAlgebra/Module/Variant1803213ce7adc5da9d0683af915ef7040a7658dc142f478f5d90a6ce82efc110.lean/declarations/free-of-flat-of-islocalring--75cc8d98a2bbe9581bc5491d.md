# free_of_flat_of_isLocalRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c16cfcda1bbace1e4924272bc680d111823a2467",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 286,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/18/1803213ce7adc5da9d0683af915ef7040a7658dc142f478f5d90a6ce82efc110.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d1ee0c6f-df91-91a0-a474-bf3988ea95c8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:db4b693f-303c-afa7-6c00-8307b0d69a7d",
  "kind": "theorem",
  "lexical_name": "free_of_flat_of_isLocalRing",
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
  "slug": "free-of-flat-of-islocalring--75cc8d98a2bbe9581bc5491d",
  "source": {
    "blob": "c16cfcda1bbace1e4924272bc680d111823a2467",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 297,
    "line": 286,
    "path": "GRWTSK/Algebra/LinearAlgebra/Module/Variant1803213ce7adc5da9d0683af915ef7040a7658dc142f478f5d90a6ce82efc110.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:75cc8d98a2bbe9581bc5491d11b97105816920794f9a9d47ca1541331fc5a592",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Module/Variant1803213ce7adc5da9d0683af915ef7040a7658dc142f478f5d90a6ce82efc110.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db4b693f-303c-afa7-6c00-8307b0d69a7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 286–297.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem free_of_flat_of_isLocalRing [Module.Finite R P] [Flat R P] : Free R P :=
  let w := Free.chooseBasis k (k ⊗[R] P)
  have ⟨v, eq⟩ := (TensorProduct.mk_surjective R P k Quotient.mk_surjective).comp_left w
  .of_basis <| .mk (IsLocalRing.linearIndependent_of_flat _ (eq ▸ w.linearIndependent)) <| by
    exact (span_eq_top_of_tmul_eq_basis _ w <| congr_fun eq).ge

@[deprecated (since := "2024-11-12")] alias free_of_flat_of_localRing := free_of_flat_of_isLocalRing

/--
If `M → N → P → 0` is a presentation of `P` over a local ring `(R, 𝔪, k)` with
`M` finite and `N` finite free, then injectivity of `k ⊗ M → k ⊗ N` implies that `P` is free.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Module/Variant1803213ce7adc5da9d0683af915ef7040a7658dc142f478f5d90a6ce82efc110.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Module/Variant1803213ce7adc5da9d0683af915ef7040a7658dc142f478f5d90a6ce82efc110.lean#L286).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c16cfcda1bbace1e4924272bc680d111823a2467` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
