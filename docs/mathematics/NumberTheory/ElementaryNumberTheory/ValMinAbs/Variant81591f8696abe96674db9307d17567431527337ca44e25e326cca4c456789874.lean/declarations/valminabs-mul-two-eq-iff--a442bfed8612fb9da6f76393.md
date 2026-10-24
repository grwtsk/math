# valMinAbs_mul_two_eq_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:078806ca-4725-ffe8-44c9-ca19fc2c00ec",
  "kind": "lemma",
  "lexical_name": "valMinAbs_mul_two_eq_iff",
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
  "slug": "valminabs-mul-two-eq-iff--a442bfed8612fb9da6f76393",
  "source": {
    "blob": "e35d071eb7eb169beccefdc3ee4125dfb0046f7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 56,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant81591f8696abe96674db9307d17567431527337ca44e25e326cca4c456789874.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a442bfed8612fb9da6f76393d0d74a0e15088af09cc2bd038586efb4455444ad",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant81591f8696abe96674db9307d17567431527337ca44e25e326cca4c456789874.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:078806ca-4725-ffe8-44c9-ca19fc2c00ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma valMinAbs_mul_two_eq_iff (a : ZMod n) : a.valMinAbs * 2 = n ↔ 2 * a.val = n := by
  rcases n with - | n
  · simp
  by_cases h : a.val ≤ n.succ / 2
  · dsimp [valMinAbs]
    rw [if_pos h, ← Int.natCast_inj, Nat.cast_mul, Nat.cast_two, mul_comm, Int.natCast_add,
      Nat.cast_one]
  apply iff_of_false _ (mt _ h)
  · intro he
    rw [← a.valMinAbs_nonneg_iff, ← mul_nonneg_iff_left_nonneg_of_pos, he] at h
    exacts [h (Nat.cast_nonneg _), zero_lt_two]
  · rw [mul_comm]
    exact fun h => (Nat.le_div_iff_mul_le zero_lt_two).2 h.le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant81591f8696abe96674db9307d17567431527337ca44e25e326cca4c456789874.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant81591f8696abe96674db9307d17567431527337ca44e25e326cca4c456789874.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e35d071eb7eb169beccefdc3ee4125dfb0046f7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
