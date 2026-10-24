# prod_dvd_and_dvd_of_dvd_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:09278671369dc2227b14bc39e4b145412005cf3a3ce3bb126a2e91410fc981c3",
  "kind": "def",
  "lexical_name": "prod_dvd_and_dvd_of_dvd_prod",
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
  "slug": "prod-dvd-and-dvd-of-dvd-prod--d722a17ed00ded0fca0f8e49",
  "source": {
    "blob": "ed5514fe0c035b9a0352ca46bc5e95b608033735",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 409,
    "line": 397,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Gcd/Variantfe98dcdfe07b52b5d6878895d917309245f5c583213bfed391090eb5d4f2f2eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d722a17ed00ded0fca0f8e49a3c8e58e8fb271a1e625580faa3bc4aae6fa74d9",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/GCD/Variantfe98dcdfe07b52b5d6878895d917309245f5c583213bfed391090eb5d4f2f2eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:09278671369dc2227b14bc39e4b145412005cf3a3ce3bb126a2e91410fc981c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 397–409.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def prod_dvd_and_dvd_of_dvd_prod {k m n : Nat} (H : k ∣ m * n) :
    {d : {m' // m' ∣ m} × {n' // n' ∣ n} // k = d.1.val * d.2.val} :=
  if h0 : gcd k m = 0 then
    ⟨⟨⟨0, eq_zero_of_gcd_eq_zero_right h0 ▸ Nat.dvd_refl 0⟩,
      ⟨n, Nat.dvd_refl n⟩⟩,
      eq_zero_of_gcd_eq_zero_left h0 ▸ (Nat.zero_mul n).symm⟩
  else by
    have hd : gcd k m * (k / gcd k m) = k := Nat.mul_div_cancel' (gcd_dvd_left k m)
    refine ⟨⟨⟨gcd k m, gcd_dvd_right k m⟩, ⟨k / gcd k m, ?_⟩⟩, hd.symm⟩
    apply Nat.dvd_of_mul_dvd_mul_left (Nat.pos_of_ne_zero h0)
    rw [hd, ← gcd_mul_right]
    exact Nat.dvd_gcd (Nat.dvd_mul_right _ _) H

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/GCD/Variantfe98dcdfe07b52b5d6878895d917309245f5c583213bfed391090eb5d4f2f2eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Gcd/Variantfe98dcdfe07b52b5d6878895d917309245f5c583213bfed391090eb5d4f2f2eb.lean#L397).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed5514fe0c035b9a0352ca46bc5e95b608033735` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
