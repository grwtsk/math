# exists_pow_mem_center_of_inseparable'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e0a3239f-585a-6999-0d1d-9deb958511d8",
  "kind": "lemma",
  "lexical_name": "exists_pow_mem_center_of_inseparable'",
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
  "slug": "exists-pow-mem-center-of-inseparable--6fc6e42821743cd88ca0edbd",
  "source": {
    "blob": "749eaf4a83bd6041cd3120e0c2be488bdbbfbc72",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 85,
    "path": "GRWTSK/Algebra/FieldTheory/JacobsonNoether/Variant4387320fe9314517654aad84dda002c6543a9e8d55aa2570efdb532791f71fd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6fc6e42821743cd88ca0edbd55367db321d12a6fc4713a1d41328876c24d71ba",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/JacobsonNoether/Variant4387320fe9314517654aad84dda002c6543a9e8d55aa2570efdb532791f71fd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0a3239f-585a-6999-0d1d-9deb958511d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_pow_mem_center_of_inseparable' (p : ℕ) [ExpChar D p] {a : D}
    (ha : a ∉ k) (hinsep : ∀ x : D, IsSeparable k x → x ∈ k) : ∃ n, 1 ≤ n ∧ a ^ (p ^ n) ∈ k := by
  obtain ⟨n, hn⟩ := exists_pow_mem_center_of_inseparable p a hinsep
  have nzero : n ≠ 0 := by
    rintro rfl
    rw [pow_zero, pow_one] at hn
    exact ha hn
  exact ⟨n, ⟨Nat.one_le_iff_ne_zero.mpr nzero, hn⟩⟩

attribute [local instance 100] LieRing.ofAssociativeRing

/-- If `D` is a purely inseparable extension of `k` of characteristic `p`,
  then for every element `a` of `D \ k`, there exists a natural number `m`
  greater than 0 such that `(a * x - x * a) ^ n = 0` (as linear maps) for
  every `n` greater than `(p ^ m)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/FieldTheory/JacobsonNoether/Variant4387320fe9314517654aad84dda002c6543a9e8d55aa2570efdb532791f71fd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FieldTheory/JacobsonNoether/Variant4387320fe9314517654aad84dda002c6543a9e8d55aa2570efdb532791f71fd9.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `749eaf4a83bd6041cd3120e0c2be488bdbbfbc72` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
