# dvd_pow_iff_of_dvd_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9bfc8bc8bb4855742912237d94097398a6cfd0ab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 30,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/93/932a1645d08fa41bbe6e54875572f267fd0d18b178a54808a4615ae9f23963c7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fc8d5ecf-5f4c-33fd-793e-60679bec9d0b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4f2a8347-b054-d71e-9931-d024f56ac7da",
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
  "slug": "dvd-pow-iff-of-dvd-sub--15ab65e221db4ddb57770712",
  "source": {
    "blob": "9bfc8bc8bb4855742912237d94097398a6cfd0ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 30,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant932a1645d08fa41bbe6e54875572f267fd0d18b178a54808a4615ae9f23963c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15ab65e221db4ddb57770712fc40b82b8fb24da335985cb260d5c66ae0e394d1",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant932a1645d08fa41bbe6e54875572f267fd0d18b178a54808a4615ae9f23963c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f2a8347-b054-d71e-9931-d024f56ac7da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma dvd_pow_iff_of_dvd_sub {a b d n : ℕ} {z : ℤ} (ha : a.Coprime d)
    (hd : (φ d : ℤ) ∣ (n : ℤ) - z) :
    d ∣ a ^ n + b ↔ (((ZMod.unitOfCoprime _ ha) ^ z : (ZMod d)ˣ) : ZMod d) + b = 0 := by
  rcases hd with ⟨k, hk⟩
  rw [← ZMod.natCast_zmod_eq_zero_iff_dvd]
  convert Iff.rfl
  push_cast
  congr
  suffices (((ZMod.unitOfCoprime _ ha) ^ z : (ZMod d)ˣ) : ZMod d) =
      (((ZMod.unitOfCoprime _ ha) ^ (n : ℤ) : (ZMod d)ˣ) : ZMod d) by
    convert this
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

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant932a1645d08fa41bbe6e54875572f267fd0d18b178a54808a4615ae9f23963c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant932a1645d08fa41bbe6e54875572f267fd0d18b178a54808a4615ae9f23963c7.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bfc8bc8bb4855742912237d94097398a6cfd0ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
