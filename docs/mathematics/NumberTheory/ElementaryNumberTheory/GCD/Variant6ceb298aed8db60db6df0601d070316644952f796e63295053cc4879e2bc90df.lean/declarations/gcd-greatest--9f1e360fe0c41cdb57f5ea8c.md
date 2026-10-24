# gcd_greatest

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:57a1acfd-49fa-ab0c-fcf7-fe1fb882d760",
  "kind": "theorem",
  "lexical_name": "gcd_greatest",
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
  "slug": "gcd-greatest--9f1e360fe0c41cdb57f5ea8c",
  "source": {
    "blob": "aed4d3fb38c29e1d2d465d4b10d4c45b158fe5e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 232,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/GCD/Variant6ceb298aed8db60db6df0601d070316644952f796e63295053cc4879e2bc90df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f1e360fe0c41cdb57f5ea8c09babdc885ed8cbc22927337060d85bc4f094f6a",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/GCD/Variant6ceb298aed8db60db6df0601d070316644952f796e63295053cc4879e2bc90df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:57a1acfd-49fa-ab0c-fcf7-fe1fb882d760`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gcd_greatest {a b d : ℤ} (hd_pos : 0 ≤ d) (hda : d ∣ a) (hdb : d ∣ b)
    (hd : ∀ e : ℤ, e ∣ a → e ∣ b → e ∣ d) : d = gcd a b :=
  dvd_antisymm hd_pos (ofNat_zero_le (gcd a b)) (dvd_coe_gcd hda hdb)
    (hd _ (gcd_dvd_left ..) (gcd_dvd_right ..))

/-- Euclid's lemma: if `a ∣ b * c` and `gcd a c = 1` then `a ∣ b`.
Compare with `IsCoprime.dvd_of_dvd_mul_left` and
`UniqueFactorizationMonoid.dvd_of_dvd_mul_left_of_no_prime_factors` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/GCD/Variant6ceb298aed8db60db6df0601d070316644952f796e63295053cc4879e2bc90df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/GCD/Variant6ceb298aed8db60db6df0601d070316644952f796e63295053cc4879e2bc90df.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aed4d3fb38c29e1d2d465d4b10d4c45b158fe5e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
