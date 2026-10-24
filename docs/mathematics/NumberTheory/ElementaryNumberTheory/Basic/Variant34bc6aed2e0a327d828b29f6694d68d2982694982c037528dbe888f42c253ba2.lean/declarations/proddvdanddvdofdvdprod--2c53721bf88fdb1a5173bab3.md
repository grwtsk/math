# prodDvdAndDvdOfDvdProd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3406664aca52d9db52ae90658a464fe8f3779b38db5f9953f9a5e0bb76eab476",
  "kind": "def",
  "lexical_name": "prodDvdAndDvdOfDvdProd",
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
  "slug": "proddvdanddvdofdvdprod--2c53721bf88fdb1a5173bab3",
  "source": {
    "blob": "4d85dfd8b99817b939efd1b148689d995e6f11b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 239,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant34bc6aed2e0a327d828b29f6694d68d2982694982c037528dbe888f42c253ba2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2c53721bf88fdb1a5173bab325d8f924352e0dad0a67c5fcc40469b218864a10",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Basic/Variant34bc6aed2e0a327d828b29f6694d68d2982694982c037528dbe888f42c253ba2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3406664aca52d9db52ae90658a464fe8f3779b38db5f9953f9a5e0bb76eab476`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def prodDvdAndDvdOfDvdProd {m n k : ℕ} (H : k ∣ m * n) :
    { d : { m' // m' ∣ m } × { n' // n' ∣ n } // k = d.1 * d.2 } := by
  cases h0 : gcd k m
  case zero =>
    obtain rfl : k = 0 := eq_zero_of_gcd_eq_zero_left h0
    obtain rfl : m = 0 := eq_zero_of_gcd_eq_zero_right h0
    exact ⟨⟨⟨0, dvd_refl 0⟩, ⟨n, dvd_refl n⟩⟩, (zero_mul n).symm⟩
  case succ tmp =>
    have hpos : 0 < gcd k m := h0.symm ▸ Nat.zero_lt_succ _; clear h0 tmp
    have hd : gcd k m * (k / gcd k m) = k := Nat.mul_div_cancel' (gcd_dvd_left k m)
    refine' ⟨⟨⟨gcd k m, gcd_dvd_right k m⟩, ⟨k / gcd k m, _⟩⟩, hd.symm⟩
    apply Nat.dvd_of_mul_dvd_mul_left hpos
    rw [hd, ← gcd_mul_right]
    exact dvd_gcd (dvd_mul_right _ _) H
#align nat.prod_dvd_and_dvd_of_dvd_prod Nat.prodDvdAndDvdOfDvdProd

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Basic/Variant34bc6aed2e0a327d828b29f6694d68d2982694982c037528dbe888f42c253ba2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant34bc6aed2e0a327d828b29f6694d68d2982694982c037528dbe888f42c253ba2.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d85dfd8b99817b939efd1b148689d995e6f11b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
