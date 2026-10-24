# absNorm_under_dvd_absNorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "81f9c23f4bc017cebaafe72de3d4e0a19874b59a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 92,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/52cf63fd4fd02b0794bc17de90308e4913bfe444bf900b6eded36fefd0bb2098.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bf03d79f-db56-0b2d-7b58-5ee0d55231bf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a5c204cb-7bce-682e-6e59-73baf2839a63",
  "kind": "theorem",
  "lexical_name": "absNorm_under_dvd_absNorm",
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
  "slug": "absnorm-under-dvd-absnorm--b71e584516ab31036105ea31",
  "source": {
    "blob": "81f9c23f4bc017cebaafe72de3d4e0a19874b59a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 92,
    "path": "GRWTSK/Algebra/Int/Variant52cf63fd4fd02b0794bc17de90308e4913bfe444bf900b6eded36fefd0bb2098.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b71e584516ab31036105ea3188b8cd8230e9d2a18df4b30052b5a4c487507884",
  "verification": {
    "reference": "docs/verification/Algebra/Int/Variant52cf63fd4fd02b0794bc17de90308e4913bfe444bf900b6eded36fefd0bb2098.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5c204cb-7bce-682e-6e59-73baf2839a63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem absNorm_under_dvd_absNorm {S : Type*} [CommRing S] [IsDedekindDomain S] [Infinite S]
    (I : Ideal S) :
    absNorm (under ℤ I) ∣ absNorm I := by
  cases finite_or_infinite (S ⧸ I)
  · have : Fintype (S ⧸ I) := Fintype.ofFinite (S ⧸ I)
    have h_main {d : ℕ} : (d : S) ∈ I ↔ ∀ (x : S ⧸ I), d • x = 0 := by
      simp_rw [nsmul_eq_mul, ← map_natCast (Ideal.Quotient.mk I), ← Quotient.eq_zero_iff_mem]
      exact ⟨fun h _ ↦ by simp [h], fun h ↦ by simpa using h 1⟩
    rw [Ideal.absNorm_apply I, Submodule.cardQuot_apply, Nat.card_eq_fintype_card]
    simp_rw [absNorm_under_eq_sInf, h_main, ← AddMonoid.exponent_eq_sInf]
    exact AddGroup.exponent_dvd_card (G := S ⧸ I)
  · rw [absNorm_apply I, Submodule.cardQuot_apply, Nat.card_eq_zero_of_infinite]
    exact Nat.dvd_zero _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Int/Variant52cf63fd4fd02b0794bc17de90308e4913bfe444bf900b6eded36fefd0bb2098.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Int/Variant52cf63fd4fd02b0794bc17de90308e4913bfe444bf900b6eded36fefd0bb2098.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81f9c23f4bc017cebaafe72de3d4e0a19874b59a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
