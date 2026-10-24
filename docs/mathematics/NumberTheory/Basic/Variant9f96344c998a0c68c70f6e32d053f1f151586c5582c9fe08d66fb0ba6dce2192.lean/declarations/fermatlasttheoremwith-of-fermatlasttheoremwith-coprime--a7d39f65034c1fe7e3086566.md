# fermatLastTheoremWith_of_fermatLastTheoremWith_coprime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3295b05c0cfe60fee9441fece8604854ebf8a267",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 217,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9f/9f96344c998a0c68c70f6e32d053f1f151586c5582c9fe08d66fb0ba6dce2192.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b7f34ad9-ed0f-9b10-f114-275b811f05db",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5b6c2f20-1260-55ac-92e3-b1aa53143ab3",
  "kind": "lemma",
  "lexical_name": "fermatLastTheoremWith_of_fermatLastTheoremWith_coprime",
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
  "slug": "fermatlasttheoremwith-of-fermatlasttheoremwith-coprime--a7d39f65034c1fe7e3086566",
  "source": {
    "blob": "3295b05c0cfe60fee9441fece8604854ebf8a267",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 217,
    "path": "GRWTSK/NumberTheory/Basic/Variant9f96344c998a0c68c70f6e32d053f1f151586c5582c9fe08d66fb0ba6dce2192.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a7d39f65034c1fe7e30865668f92940ec2b48337255c56ac58a98f9f94f93312",
  "verification": {
    "reference": "docs/verification/NumberTheory/Basic/Variant9f96344c998a0c68c70f6e32d053f1f151586c5582c9fe08d66fb0ba6dce2192.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b6c2f20-1260-55ac-92e3-b1aa53143ab3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma fermatLastTheoremWith_of_fermatLastTheoremWith_coprime {n : ℕ} {R : Type*} [CommSemiring R]
    [IsDomain R] [DecidableEq R] [NormalizedGCDMonoid R]
    (hn : ∀ a b c : R, a ≠ 0 → b ≠ 0 → c ≠ 0 → ({a, b, c} : Finset R).gcd id = 1 →
      a ^ n + b ^ n ≠ c ^ n) :
    FermatLastTheoremWith R n := by
  intro a b c ha hb hc habc
  let s : Finset R := {a, b, c}; let d := s.gcd id
  obtain ⟨A, hA⟩ : d ∣ a := gcd_dvd (by simp [s])
  obtain ⟨B, hB⟩ : d ∣ b := gcd_dvd (by simp [s])
  obtain ⟨C, hC⟩ : d ∣ c := gcd_dvd (by simp [s])
  simp only [hA, hB, hC, mul_ne_zero_iff, mul_pow] at ha hb hc habc
  rw [← mul_add, mul_right_inj' (pow_ne_zero n ha.1)] at habc
  refine hn A B C ha.2 hb.2 hc.2 ?_ habc
  rw [← Finset.normalize_gcd, normalize_eq_one]
  obtain ⟨u, hu⟩ := normalize_associated d
  refine ⟨u, mul_left_cancel₀ (mt normalize_eq_zero.mp ha.1) (hu.symm ▸ ?_)⟩
  rw [← Finset.gcd_mul_left, gcd_eq_gcd_image, image_insert, image_insert, image_singleton,
      id_eq, id_eq, id_eq, ← hA, ← hB, ← hC]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Basic/Variant9f96344c998a0c68c70f6e32d053f1f151586c5582c9fe08d66fb0ba6dce2192.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Basic/Variant9f96344c998a0c68c70f6e32d053f1f151586c5582c9fe08d66fb0ba6dce2192.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3295b05c0cfe60fee9441fece8604854ebf8a267` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
