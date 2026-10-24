# IsAdmissible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d3aaf5a1471713318ba314988ad2b0563d4f1de4adfd15e535a5912e33db5fb2",
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
  "slug": "isadmissible--1b63db395455fe632b6559c6",
  "source": {
    "blob": "8be86ba538ae4df76237e7a147d09a95e9ce93c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 40,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/AdmissibleAbsoluteValue/Variante06b5ebe683706d12edf3aed1b3e106d6a391d78a38016b227d2d5964e9da587.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1b63db395455fe632b6559c672b7c2be078eccb7fd7426d682c00514e714c127",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/AdmissibleAbsoluteValue/Variante06b5ebe683706d12edf3aed1b3e106d6a391d78a38016b227d2d5964e9da587.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d3aaf5a1471713318ba314988ad2b0563d4f1de4adfd15e535a5912e33db5fb2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–54.

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

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/AdmissibleAbsoluteValue/Variante06b5ebe683706d12edf3aed1b3e106d6a391d78a38016b227d2d5964e9da587.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/AdmissibleAbsoluteValue/Variante06b5ebe683706d12edf3aed1b3e106d6a391d78a38016b227d2d5964e9da587.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8be86ba538ae4df76237e7a147d09a95e9ce93c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
