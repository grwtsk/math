# coprime_monomial_totals_of_support

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:27249376-79ce-8da0-48a7-c1419cabab0f",
  "kind": "theorem",
  "lexical_name": "coprime_monomial_totals_of_support",
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
  "slug": "coprime-monomial-totals-of-support--7b1d50c35dd169f07d8a9efe",
  "source": {
    "blob": "40126fd7a4b454d8ed53c36324dde81ea8d5fc94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 139,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AnatomicBoxes.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b1d50c35dd169f07d8a9efe49f9a323da856348e1169c2297e857ec1d371f85",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AnatomicBoxes.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:27249376-79ce-8da0-48a7-c1419cabab0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem coprime_monomial_totals_of_support
    {d : ℕ} {r s : ℕ} {x y : Fin d → ℕ}
    (h : Nat.Coprime (r * supportProduct x) (s * supportProduct y)) :
    Nat.Coprime (r * monomial x) (s * monomial y) := by
  simpa only [Parameters.carrierA, Parameters.carrierB,
    supportProduct, monomial, Nat.coprime_mul_iff_left,
    Nat.coprime_mul_iff_right, Nat.coprime_prod_left_iff,
    Nat.coprime_prod_right_iff, Nat.succ_pos,
    Nat.coprime_pow_left_iff, Nat.coprime_pow_right_iff] using h

/-- Project a certified box point to the repository's primitive additive
triple type. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AnatomicBoxes.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AnatomicBoxes.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40126fd7a4b454d8ed53c36324dde81ea8d5fc94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
