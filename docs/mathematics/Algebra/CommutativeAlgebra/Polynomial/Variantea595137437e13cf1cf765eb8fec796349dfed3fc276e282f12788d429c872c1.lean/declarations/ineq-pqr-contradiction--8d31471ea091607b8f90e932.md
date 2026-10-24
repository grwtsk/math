# ineq_pqr_contradiction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1046b97c-7303-a7b2-c99e-e39cf0090157",
  "kind": "lemma",
  "lexical_name": "ineq_pqr_contradiction",
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
  "slug": "ineq-pqr-contradiction--8d31471ea091607b8f90e932",
  "source": {
    "blob": "afc4df8a8e7c9dd13ad44aaf76533baa245392de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 66,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variantea595137437e13cf1cf765eb8fec796349dfed3fc276e282f12788d429c872c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d31471ea091607b8f90e932f17ed057b09b2ac9962eb4148cf9964bee12b112",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Polynomial/Variantea595137437e13cf1cf765eb8fec796349dfed3fc276e282f12788d429c872c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1046b97c-7303-a7b2-c99e-e39cf0090157`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma ineq_pqr_contradiction {p q r a b c : ℕ}
    (hp : p ≠ 0) (hq : q ≠ 0) (hr : r ≠ 0)
    (hineq : q * r + r * p + p * q ≤ p * q * r)
    (hpa : p * a < a + b + c)
    (hqb : q * b < a + b + c)
    (hrc : r * c < a + b + c) : False := by
  suffices h : p * q * r * (a + b + c) + 1 ≤ p * q * r * (a + b + c) by simp at h
  calc
    _ = (p * a) * (q * r) + (q * b) * (r * p) + (r * c) * (p * q) + 1 := by ring
    _ ≤ (a + b + c) * (q * r) + (a + b + c) * (r * p) + (a + b + c) * (p * q) := by
      rw [Nat.succ_le_iff]
      gcongr
    _ = (q * r + r * p + p * q) * (a + b + c) := by ring
    _ ≤ _ := by gcongr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Polynomial/Variantea595137437e13cf1cf765eb8fec796349dfed3fc276e282f12788d429c872c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variantea595137437e13cf1cf765eb8fec796349dfed3fc276e282f12788d429c872c1.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afc4df8a8e7c9dd13ad44aaf76533baa245392de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
