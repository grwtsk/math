# IsAdmissible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a6e5e7590f49adb4f88c325800759871131220af3ae5a56c4423856cf7387af3",
  "kind": "structure",
  "lexical_name": "IsAdmissible",
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
  "slug": "isadmissible--4e908230e705bc82f1430bcc",
  "source": {
    "blob": "fe89bce3a9c22385db1b7f59582b49883e8e135f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 53,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/AdmissibleAbsoluteValue/Variantd554fd3aeeed4d2c165429f12e3ed04aaaff22b8bca8bf3be01c4a6c0019dfa3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4e908230e705bc82f1430bcc723f5f056e759ef60cd322fa6246cb68ae5b619e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/AdmissibleAbsoluteValue/Variantd554fd3aeeed4d2c165429f12e3ed04aaaff22b8bca8bf3be01c4a6c0019dfa3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a6e5e7590f49adb4f88c325800759871131220af3ae5a56c4423856cf7387af3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure IsAdmissible extends IsEuclidean abv where
  /-- The cardinality required for a given `ε`. -/
  protected card : ℝ → ℕ
  /-- For all `ε > 0` and finite families `A`, we can partition the remainders of `A` mod `b`
  into `abv.card ε` sets, such that all elements in each part of remainders are close together. -/
  exists_partition' :
    ∀ (n : ℕ) {ε : ℝ} (_ : 0 < ε) {b : R} (_ : b ≠ 0) (A : Fin n → R),
      ∃ t : Fin n → Fin (card ε), ∀ i₀ i₁, t i₀ = t i₁ → (abv (A i₁ % b - A i₀ % b) : ℝ) < abv b • ε

namespace IsAdmissible

variable {abv}

/-- For all `ε > 0` and finite families `A`, we can partition the remainders of `A` mod `b`
into `abv.card ε` sets, such that all elements in each part of remainders are close together. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/AdmissibleAbsoluteValue/Variantd554fd3aeeed4d2c165429f12e3ed04aaaff22b8bca8bf3be01c4a6c0019dfa3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/AdmissibleAbsoluteValue/Variantd554fd3aeeed4d2c165429f12e3ed04aaaff22b8bca8bf3be01c4a6c0019dfa3.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe89bce3a9c22385db1b7f59582b49883e8e135f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
