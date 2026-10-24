# image_pow_subset_of_coprime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0a79842364041ef547caa8d2971a2d91e099837a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 98,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/04/0467a9db83a45d351bfafd75112d4238e3bda8319c060127f01d97f4969250bb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b6c4ee0d-fce5-e02a-9698-a35bf45d81df",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:70a4e645-ec7e-8829-8f45-418bb977cb18",
  "kind": "theorem",
  "lexical_name": "image_pow_subset_of_coprime",
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
  "slug": "image-pow-subset-of-coprime--9fad3cb439e3645b4e03830b",
  "source": {
    "blob": "0a79842364041ef547caa8d2971a2d91e099837a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 98,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/WellApproximable/Variant0467a9db83a45d351bfafd75112d4238e3bda8319c060127f01d97f4969250bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9fad3cb439e3645b4e03830b70282cccb9e743bbee4c7ca95c80fef8019d0f70",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/WellApproximable/Variant0467a9db83a45d351bfafd75112d4238e3bda8319c060127f01d97f4969250bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70a4e645-ec7e-8829-8f45-418bb977cb18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem image_pow_subset_of_coprime (hm : 0 < m) (hmn : n.Coprime m) :
    (fun (y : A) => y ^ m) '' approxOrderOf A n δ ⊆ approxOrderOf A n (m * δ) := by
  rintro - ⟨a, ha, rfl⟩
  obtain ⟨b, hb, hab⟩ := mem_approxOrderOf_iff.mp ha
  replace hb : b ^ m ∈ {u : A | orderOf u = n} := by
    rw [← hb] at hmn ⊢; exact hmn.orderOf_pow
  apply ball_subset_thickening hb ((m : ℝ) • δ)
  convert pow_mem_ball hm hab using 1
  simp only [nsmul_eq_mul, Algebra.id.smul_eq_mul]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/WellApproximable/Variant0467a9db83a45d351bfafd75112d4238e3bda8319c060127f01d97f4969250bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/WellApproximable/Variant0467a9db83a45d351bfafd75112d4238e3bda8319c060127f01d97f4969250bb.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a79842364041ef547caa8d2971a2d91e099837a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
