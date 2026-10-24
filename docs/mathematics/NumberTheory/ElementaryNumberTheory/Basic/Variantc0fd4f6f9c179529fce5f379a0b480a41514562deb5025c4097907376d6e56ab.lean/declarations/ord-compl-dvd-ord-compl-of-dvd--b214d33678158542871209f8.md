# ord_compl_dvd_ord_compl_of_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f7676e27-68a7-93ef-a981-57f404d54e4d",
  "kind": "theorem",
  "lexical_name": "ord_compl_dvd_ord_compl_of_dvd",
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
  "slug": "ord-compl-dvd-ord-compl-of-dvd--b214d33678158542871209f8",
  "source": {
    "blob": "f18b7d1f78c30a8108c9805ec5f0a01f5048f219",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 631,
    "line": 614,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variantc0fd4f6f9c179529fce5f379a0b480a41514562deb5025c4097907376d6e56ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b214d33678158542871209f8e36bfb70ca973eef4691b80c20ba9616c2eee06c",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Basic/Variantc0fd4f6f9c179529fce5f379a0b480a41514562deb5025c4097907376d6e56ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7676e27-68a7-93ef-a981-57f404d54e4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 614–631.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ord_compl_dvd_ord_compl_of_dvd {a b : ℕ} (hab : a ∣ b) (p : ℕ) :
    ord_compl[p] a ∣ ord_compl[p] b := by
  rcases em' p.Prime with (pp | pp)
  · simp [pp, hab]
  rcases eq_or_ne b 0 with (rfl | hb0)
  · simp
  rcases eq_or_ne a 0 with (rfl | ha0)
  · cases hb0 (zero_dvd_iff.1 hab)
  have ha := (Nat.div_pos (ord_proj_le p ha0) (ord_proj_pos a p)).ne'
  have hb := (Nat.div_pos (ord_proj_le p hb0) (ord_proj_pos b p)).ne'
  rw [← factorization_le_iff_dvd ha hb, factorization_ord_compl a p, factorization_ord_compl b p]
  intro q
  rcases eq_or_ne q p with (rfl | hqp)
  · simp
  simp_rw [erase_ne hqp]
  exact (factorization_le_iff_dvd ha0 hb0).2 hab q
#align nat.ord_compl_dvd_ord_compl_of_dvd Nat.ord_compl_dvd_ord_compl_of_dvd

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Basic/Variantc0fd4f6f9c179529fce5f379a0b480a41514562deb5025c4097907376d6e56ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variantc0fd4f6f9c179529fce5f379a0b480a41514562deb5025c4097907376d6e56ab.lean#L614).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f18b7d1f78c30a8108c9805ec5f0a01f5048f219` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
