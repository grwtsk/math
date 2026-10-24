# dvd_pow_iff_of_dvd_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3e147c22-1a4f-c007-9d82-b550e5bacdfd",
  "kind": "lemma",
  "lexical_name": "dvd_pow_iff_of_dvd_sub",
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
  "slug": "dvd-pow-iff-of-dvd-sub--e163aa156e2382c3ebcc838b",
  "source": {
    "blob": "228ff3c70e8e252c951e0162d1e62becc3cfe20d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 41,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant7b84a07010ae26f45526511852dc40cc7f8b04f5b2c77f0a2257d64128ede019.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e163aa156e2382c3ebcc838bd26a99189540dd8fe86dc2f8bfb7de9badffc48f",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant7b84a07010ae26f45526511852dc40cc7f8b04f5b2c77f0a2257d64128ede019.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e147c22-1a4f-c007-9d82-b550e5bacdfd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma dvd_pow_iff_of_dvd_sub {a b d n : ℕ} {z : ℤ} (ha : a.Coprime d)
    (hd : (φ d : ℤ) ∣ (n : ℤ) - z) :
    d ∣ a ^ n + b ↔ (((ZMod.unitOfCoprime _ ha) ^ z : (ZMod d)ˣ) : ZMod d) + b = 0 := by
  rcases hd with ⟨k, hk⟩
  rw [← ZMod.natCast_eq_zero_iff]
  convert! Iff.rfl
  push_cast
  congr
  suffices (((ZMod.unitOfCoprime _ ha) ^ z : (ZMod d)ˣ) : ZMod d) =
      (((ZMod.unitOfCoprime _ ha) ^ (n : ℤ) : (ZMod d)ˣ) : ZMod d) by
    convert! this
  rw [sub_eq_iff_eq_add] at hk
  rw [hk, zpow_add, zpow_mul]
  norm_cast
  rw [ZMod.pow_totient, one_zpow, one_mul]

namespace Condition

variable {a b : ℕ} (h : Condition a b)

section
include h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant7b84a07010ae26f45526511852dc40cc7f8b04f5b2c77f0a2257d64128ede019.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant7b84a07010ae26f45526511852dc40cc7f8b04f5b2c77f0a2257d64128ede019.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `228ff3c70e8e252c951e0162d1e62becc3cfe20d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
