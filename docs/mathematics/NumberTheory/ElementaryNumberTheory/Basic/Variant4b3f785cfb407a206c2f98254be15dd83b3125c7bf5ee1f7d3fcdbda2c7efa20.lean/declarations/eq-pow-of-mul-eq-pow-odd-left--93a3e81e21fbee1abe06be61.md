# eq_pow_of_mul_eq_pow_odd_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0d8c42d4-e1a7-a9f1-00ec-18a551e7b7b5",
  "kind": "theorem",
  "lexical_name": "eq_pow_of_mul_eq_pow_odd_left",
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
  "slug": "eq-pow-of-mul-eq-pow-odd-left--93a3e81e21fbee1abe06be61",
  "source": {
    "blob": "6df9cdfc471a81e8f3664dd65f29dbabc1eb34de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 126,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3f785cfb407a206c2f98254be15dd83b3125c7bf5ee1f7d3fcdbda2c7efa20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93a3e81e21fbee1abe06be611fe3d91ca1d9652d0ced5199554e95c7ff1ceef1",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3f785cfb407a206c2f98254be15dd83b3125c7bf5ee1f7d3fcdbda2c7efa20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d8c42d4-e1a7-a9f1-00ec-18a551e7b7b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_pow_of_mul_eq_pow_odd_left {a b c : ℤ} (hab : IsCoprime a b) {k : ℕ} (hk : Odd k)
    (h : a * b = c ^ k) : ∃ d, a = d ^ k := by
  obtain ⟨d, hd⟩ := exists_associated_pow_of_mul_eq_pow' hab h
  replace hd := hd.symm
  rw [associated_iff_natAbs, natAbs_eq_natAbs_iff, ← hk.neg_pow] at hd
  obtain rfl | rfl := hd <;> exact ⟨_, rfl⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3f785cfb407a206c2f98254be15dd83b3125c7bf5ee1f7d3fcdbda2c7efa20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant4b3f785cfb407a206c2f98254be15dd83b3125c7bf5ee1f7d3fcdbda2c7efa20.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6df9cdfc471a81e8f3664dd65f29dbabc1eb34de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
