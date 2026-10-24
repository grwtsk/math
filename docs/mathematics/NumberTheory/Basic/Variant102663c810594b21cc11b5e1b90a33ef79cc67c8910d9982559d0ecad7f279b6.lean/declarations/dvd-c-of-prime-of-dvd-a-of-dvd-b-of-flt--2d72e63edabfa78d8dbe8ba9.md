# dvd_c_of_prime_of_dvd_a_of_dvd_b_of_FLT

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:65838275-f257-bf4f-2d2b-65b36ca26e52",
  "kind": "lemma",
  "lexical_name": "dvd_c_of_prime_of_dvd_a_of_dvd_b_of_FLT",
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
  "slug": "dvd-c-of-prime-of-dvd-a-of-dvd-b-of-flt--2d72e63edabfa78d8dbe8ba9",
  "source": {
    "blob": "90922bd0464359af2f9ff8cb304f2a52b0429e4d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 244,
    "path": "GRWTSK/NumberTheory/Basic/Variant102663c810594b21cc11b5e1b90a33ef79cc67c8910d9982559d0ecad7f279b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d72e63edabfa78d8dbe8ba95cd03908193f5c0d7e14fef3a58f9b1a6a866c24",
  "verification": {
    "reference": "docs/verification/NumberTheory/Basic/Variant102663c810594b21cc11b5e1b90a33ef79cc67c8910d9982559d0ecad7f279b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65838275-f257-bf4f-2d2b-65b36ca26e52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma dvd_c_of_prime_of_dvd_a_of_dvd_b_of_FLT {n : ℕ} {p : ℤ} (hp : Prime p) {a b c : ℤ}
    (hpa : p ∣ a) (hpb : p ∣ b) (HF : a ^ n + b ^ n + c ^ n = 0) : p ∣ c := by
  rcases eq_or_ne n 0 with rfl | hn
  · simp at HF
  refine hp.dvd_of_dvd_pow (n := n) (dvd_neg.1 ?_)
  rw [add_eq_zero_iff_eq_neg] at HF
  exact HF.symm ▸ dvd_add (dvd_pow hpa hn) (dvd_pow hpb hn)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Basic/Variant102663c810594b21cc11b5e1b90a33ef79cc67c8910d9982559d0ecad7f279b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Basic/Variant102663c810594b21cc11b5e1b90a33ef79cc67c8910d9982559d0ecad7f279b6.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90922bd0464359af2f9ff8cb304f2a52b0429e4d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
