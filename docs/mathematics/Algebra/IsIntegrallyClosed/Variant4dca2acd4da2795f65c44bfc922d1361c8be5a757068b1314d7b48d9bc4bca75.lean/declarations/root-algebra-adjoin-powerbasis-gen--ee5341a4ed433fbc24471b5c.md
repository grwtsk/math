# _root_.Algebra.adjoin.powerBasis'_gen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "17c954a5b79d2960dc9066cf0aa385bfca4295ce",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 188,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4dca2acd4da2795f65c44bfc922d1361c8be5a757068b1314d7b48d9bc4bca75.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:143827ac-80fd-6e28-63d5-492cc1f7d5b1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b109b943-cce5-2e0b-4473-a9b6046aa316",
  "kind": "theorem",
  "lexical_name": "_root_.Algebra.adjoin.powerBasis'_gen",
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
  "slug": "root-algebra-adjoin-powerbasis-gen--ee5341a4ed433fbc24471b5c",
  "source": {
    "blob": "17c954a5b79d2960dc9066cf0aa385bfca4295ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 188,
    "path": "GRWTSK/Algebra/IsIntegrallyClosed/Variant4dca2acd4da2795f65c44bfc922d1361c8be5a757068b1314d7b48d9bc4bca75.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee5341a4ed433fbc24471b5c9d555f937333c96adf0bcc95b80027cc42a93b43",
  "verification": {
    "reference": "docs/verification/Algebra/IsIntegrallyClosed/Variant4dca2acd4da2795f65c44bfc922d1361c8be5a757068b1314d7b48d9bc4bca75.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b109b943-cce5-2e0b-4473-a9b6046aa316`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.Algebra.adjoin.powerBasis'_gen (hx : IsIntegral R x) :
    (adjoin.powerBasis' hx).gen = ⟨x, SetLike.mem_coe.1 <| subset_adjoin <| mem_singleton x⟩ := by
  rw [Algebra.adjoin.powerBasis', PowerBasis.map_gen, AdjoinRoot.powerBasis'_gen, equivAdjoin,
    AlgEquiv.ofBijective_apply, Minpoly.toAdjoin, liftHom_root]
#align algebra.adjoin.power_basis'_gen Algebra.adjoin.powerBasis'_gen

/-- The power basis given by `x` if `B.gen ∈ adjoin R {x}`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/IsIntegrallyClosed/Variant4dca2acd4da2795f65c44bfc922d1361c8be5a757068b1314d7b48d9bc4bca75.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/IsIntegrallyClosed/Variant4dca2acd4da2795f65c44bfc922d1361c8be5a757068b1314d7b48d9bc4bca75.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17c954a5b79d2960dc9066cf0aa385bfca4295ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
