# not_commutative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1f3fad1c-928d-fb2e-ad89-dfa60a034a29",
  "kind": "lemma",
  "lexical_name": "not_commutative",
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
  "slug": "not-commutative--bb546edcff4df5c1b42581db",
  "source": {
    "blob": "2f132e224ed1957eadfce84e1567123d7f859633",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 222,
    "path": "GRWTSK/Algebra/GroupTheory/Dihedral/Varianta388b5d276503bd196f29a4ab224a59f5757eb98c401bd54f63bf25348c8cd51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb546edcff4df5c1b42581db5f0324c01988d280fb7ecb9697a43ac42c9bc5d4",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Dihedral/Varianta388b5d276503bd196f29a4ab224a59f5757eb98c401bd54f63bf25348c8cd51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f3fad1c-928d-fb2e-ad89-dfa60a034a29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma not_commutative : ∀ {n : ℕ}, n ≠ 1 → n ≠ 2 →
    ¬Std.Commutative fun (x y : DihedralGroup n) => x * y
  | 0, _, _ => fun ⟨h'⟩ ↦ by simpa using h' (r 1) (sr 0)
  | n + 3, _, _ => by
    rintro ⟨h'⟩
    specialize h' (r 1) (sr 0)
    rw [r_mul_sr, zero_sub, sr_mul_r, zero_add, sr.injEq, neg_eq_iff_add_eq_zero,
      one_add_one_eq_two, ← ZMod.val_eq_zero, ZMod.val_two_eq_two_mod] at h'
    simpa using Nat.le_of_dvd Nat.zero_lt_two <| Nat.dvd_of_mod_eq_zero h'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Dihedral/Varianta388b5d276503bd196f29a4ab224a59f5757eb98c401bd54f63bf25348c8cd51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Dihedral/Varianta388b5d276503bd196f29a4ab224a59f5757eb98c401bd54f63bf25348c8cd51.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f132e224ed1957eadfce84e1567123d7f859633` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
