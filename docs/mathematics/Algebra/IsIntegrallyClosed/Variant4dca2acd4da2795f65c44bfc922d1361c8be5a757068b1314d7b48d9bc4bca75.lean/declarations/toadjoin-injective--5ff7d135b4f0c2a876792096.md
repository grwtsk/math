# ToAdjoin.injective

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
      "line": 157,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4dca2acd4da2795f65c44bfc922d1361c8be5a757068b1314d7b48d9bc4bca75.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9e47a8e4-be65-1564-bade-885e3fb59823",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7ac7b0e6-8a05-7cd1-4fab-8fab99131a57",
  "kind": "theorem",
  "lexical_name": "ToAdjoin.injective",
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
  "slug": "toadjoin-injective--5ff7d135b4f0c2a876792096",
  "source": {
    "blob": "17c954a5b79d2960dc9066cf0aa385bfca4295ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 157,
    "path": "GRWTSK/Algebra/IsIntegrallyClosed/Variant4dca2acd4da2795f65c44bfc922d1361c8be5a757068b1314d7b48d9bc4bca75.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ff7d135b4f0c2a876792096d088ac49ed8f89483f3e276336e20b3dcc5c9c5d",
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

Occurrence: `result:7ac7b0e6-8a05-7cd1-4fab-8fab99131a57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ToAdjoin.injective (hx : IsIntegral R x) : Function.Injective (Minpoly.toAdjoin R x) := by
  refine' (injective_iff_map_eq_zero _).2 fun P₁ hP₁ => _
  obtain ⟨P, hP⟩ := mk_surjective (minpoly.monic hx) P₁
  by_cases hPzero : P = 0
  · simpa [hPzero] using hP.symm
  rw [← hP, Minpoly.toAdjoin_apply', liftHom_mk, ← Subalgebra.coe_eq_zero, aeval_subalgebra_coe,
    isIntegrallyClosed_dvd_iff hx] at hP₁
  obtain ⟨Q, hQ⟩ := hP₁
  rw [← hP, hQ, RingHom.map_mul, mk_self, zero_mul]
#align minpoly.to_adjoin.injective minpoly.ToAdjoin.injective

/-- The algebra isomorphism `AdjoinRoot (minpoly R x) ≃ₐ[R] adjoin R x` -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/IsIntegrallyClosed/Variant4dca2acd4da2795f65c44bfc922d1361c8be5a757068b1314d7b48d9bc4bca75.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/IsIntegrallyClosed/Variant4dca2acd4da2795f65c44bfc922d1361c8be5a757068b1314d7b48d9bc4bca75.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17c954a5b79d2960dc9066cf0aa385bfca4295ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
