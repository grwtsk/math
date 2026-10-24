# eq_of_isUnramifiedAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c6f000f8e646860bad85d1a8ca0d9e80d8c2b1a9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 160,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/522663163f9ffaedbeb09cc3da172de68822083d5944a7b837af5e1afd16d33e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:532fe4e4-dfcc-d18d-1b83-efbebd571e49",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b4dafd3c-c0fc-54ef-fcb1-205a57f20584",
  "kind": "lemma",
  "lexical_name": "eq_of_isUnramifiedAt",
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
  "slug": "eq-of-isunramifiedat--701028c305fc9c7d7622181d",
  "source": {
    "blob": "c6f000f8e646860bad85d1a8ca0d9e80d8c2b1a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 160,
    "path": "GRWTSK/Algebra/Frobenius/Variant522663163f9ffaedbeb09cc3da172de68822083d5944a7b837af5e1afd16d33e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:701028c305fc9c7d7622181d017dd8fb0b495576a8f5f3556e509f8508ffb62d",
  "verification": {
    "reference": "docs/verification/Algebra/Frobenius/Variant522663163f9ffaedbeb09cc3da172de68822083d5944a7b837af5e1afd16d33e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b4dafd3c-c0fc-54ef-fcb1-205a57f20584`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eq_of_isUnramifiedAt
    (H' : ψ.IsArithFrobAt Q) [Q.IsPrime] (hQ : Q.primeCompl ≤ S⁰)
    [Algebra.IsUnramifiedAt R Q] [IsNoetherianRing S] : φ = ψ := by
  have : H.localize = H'.localize := by
    have : IsNoetherianRing (Localization.AtPrime Q) :=
      IsLocalization.isNoetherianRing Q.primeCompl _ inferInstance
    apply Algebra.FormallyUnramified.ext_of_iInf _
      (Ideal.iInf_pow_eq_bot_of_isLocalRing (maximalIdeal _) Ideal.IsPrime.ne_top')
    intro x
    rw [H.isArithFrobAt_localize.mk_apply, H'.isArithFrobAt_localize.mk_apply]
  ext x
  apply IsLocalization.injective (Localization.AtPrime Q) hQ
  rw [← H.localize_algebraMap, ← H'.localize_algebraMap, this]

end AlgHom.IsArithFrobAt

variable (R) in
/--
Suppose `S` is an `R` algebra, `M` is a monoid acting on `S` whose action is trivial on `R`
`σ : M` is an (arithmetic) Frobenius at an ideal `Q` of `S` if `σ • x ≡ x ^ q (mod Q)` for all `x`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Frobenius/Variant522663163f9ffaedbeb09cc3da172de68822083d5944a7b837af5e1afd16d33e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Frobenius/Variant522663163f9ffaedbeb09cc3da172de68822083d5944a7b837af5e1afd16d33e.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6f000f8e646860bad85d1a8ca0d9e80d8c2b1a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
