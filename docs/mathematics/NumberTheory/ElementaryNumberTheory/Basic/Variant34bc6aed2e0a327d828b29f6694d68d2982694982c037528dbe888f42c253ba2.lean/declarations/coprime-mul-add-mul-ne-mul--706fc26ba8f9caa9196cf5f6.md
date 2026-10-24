# coprime.mul_add_mul_ne_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a11f7f68-eea9-96ba-6eb0-d09cb14ccd40",
  "kind": "theorem",
  "lexical_name": "coprime.mul_add_mul_ne_mul",
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
  "slug": "coprime-mul-add-mul-ne-mul--706fc26ba8f9caa9196cf5f6",
  "source": {
    "blob": "4d85dfd8b99817b939efd1b148689d995e6f11b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 285,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant34bc6aed2e0a327d828b29f6694d68d2982694982c037528dbe888f42c253ba2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:706fc26ba8f9caa9196cf5f6c4e15f79ecdd3abb7d241dfbb903d998fec5e952",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Basic/Variant34bc6aed2e0a327d828b29f6694d68d2982694982c037528dbe888f42c253ba2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a11f7f68-eea9-96ba-6eb0-d09cb14ccd40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coprime.mul_add_mul_ne_mul {m n a b : ℕ} (cop : coprime m n) (ha : a ≠ 0) (hb : b ≠ 0) :
    a * m + b * n ≠ m * n := by
  intro h
  obtain ⟨x, rfl⟩ : n ∣ a :=
    cop.symm.dvd_of_dvd_mul_right
      ((Nat.dvd_add_iff_left (Nat.dvd_mul_left n b)).mpr
        ((congr_arg _ h).mpr (Nat.dvd_mul_left n m)))
  obtain ⟨y, rfl⟩ : m ∣ b :=
    cop.dvd_of_dvd_mul_right
      ((Nat.dvd_add_iff_right (Nat.dvd_mul_left m (n * x))).mpr
        ((congr_arg _ h).mpr (Nat.dvd_mul_right m n)))
  rw [mul_comm, mul_ne_zero_iff, ← one_le_iff_ne_zero] at ha hb
  refine' mul_ne_zero hb.2 ha.2 (eq_zero_of_mul_eq_self_left (ne_of_gt (add_le_add ha.1 hb.1)) _)
  rw [← mul_assoc, ← h, add_mul, add_mul, mul_comm _ n, ← mul_assoc, mul_comm y]
#align nat.coprime.mul_add_mul_ne_mul Nat.coprime.mul_add_mul_ne_mul

end Nat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Basic/Variant34bc6aed2e0a327d828b29f6694d68d2982694982c037528dbe888f42c253ba2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant34bc6aed2e0a327d828b29f6694d68d2982694982c037528dbe888f42c253ba2.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d85dfd8b99817b939efd1b148689d995e6f11b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
