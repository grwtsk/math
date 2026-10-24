# exists_apply_eq_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:85b32954-e229-2882-c2f6-fb6888d972e1",
  "kind": "lemma",
  "lexical_name": "exists_apply_eq_pow",
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
  "slug": "exists-apply-eq-pow--7ae1e0c3c53d7ebfdf7a431f",
  "source": {
    "blob": "7ebbf6afb51626b0bc9e5e4351ebb74c8a5303e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 214,
    "path": "GRWTSK/NumberTheory/Lemmas/Variant5fbd306c2b84dffeb247c228a193b8d1496acb805a286aac6e6ab0d7bbca427f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ae1e0c3c53d7ebfdf7a431f49bf03f9d4a86d58a5b863705588fae4ee045f1d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Lemmas/Variant5fbd306c2b84dffeb247c228a193b8d1496acb805a286aac6e6ab0d7bbca427f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85b32954-e229-2882-c2f6-fb6888d972e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_apply_eq_pow {χ : MulChar F R} {n : ℕ} [NeZero n] (hχ : χ ^ n = 1) {μ : R}
    (hμ : IsPrimitiveRoot μ n) {a : F} (ha : a ≠ 0) :
    ∃ k < n, χ a = μ ^ k := by
  obtain ⟨ζ, hζ₁, hζ₂⟩ := apply_mem_rootsOfUnity_of_pow_eq_one hχ ha
  have hζ' : ζ.val ^ n = 1 := (mem_rootsOfUnity' n ↑ζ).mp hζ₁
  obtain ⟨k, hk₁, hk₂⟩ := hμ.eq_pow_of_pow_eq_one hζ'
  exact ⟨k, hk₁, (hζ₂ ▸ hk₂).symm⟩

/-- The values of a multiplicative character `χ` such that `χ^n = 1` are contained in `ℤ[μ]` when
`μ` is a primitive `n`th root of unity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Lemmas/Variant5fbd306c2b84dffeb247c228a193b8d1496acb805a286aac6e6ab0d7bbca427f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Lemmas/Variant5fbd306c2b84dffeb247c228a193b8d1496acb805a286aac6e6ab0d7bbca427f.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ebbf6afb51626b0bc9e5e4351ebb74c8a5303e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
