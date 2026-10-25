# isQuasiregular_iff_isUnit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:40806f84-79a6-1dfc-3363-eaecca5b5808",
  "kind": "lemma",
  "lexical_name": "isQuasiregular_iff_isUnit",
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
  "slug": "isquasiregular-iff-isunit--25faa5b8cd949357f67ac667",
  "source": {
    "blob": "dbd8602c2cd8a81cb090f9586748676b155ace91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 229,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Quasispectrum/Variantcfec575f67c3af9874cafd6dcbabc73b7c80c95c717dd60dbbb31ee4d65b0216.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25faa5b8cd949357f67ac66717d0b0961f65bce21c8c42522d5dd5c529a8f4dc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Quasispectrum/Variantcfec575f67c3af9874cafd6dcbabc73b7c80c95c717dd60dbbb31ee4d65b0216.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40806f84-79a6-1dfc-3363-eaecca5b5808`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isQuasiregular_iff_isUnit {R : Type*} [Ring R] {x : R} :
    IsQuasiregular x ↔ IsUnit (1 + x) := by
  refine ⟨IsQuasiregular.isUnit_one_add, fun hx ↦ ?_⟩
  rw [isQuasiregular_iff]
  use hx.unit⁻¹ - 1
  constructor
  case' h.left => have := congr($(hx.mul_val_inv) - 1)
  case' h.right => have := congr($(hx.val_inv_mul) - 1)
  all_goals
    rw [← sub_add_cancel (↑hx.unit⁻¹ : R) 1, sub_self] at this
    convert this using 1
    noncomm_ring

-- interestingly, this holds even in the semiring case.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Quasispectrum/Variantcfec575f67c3af9874cafd6dcbabc73b7c80c95c717dd60dbbb31ee4d65b0216.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Quasispectrum/Variantcfec575f67c3af9874cafd6dcbabc73b7c80c95c717dd60dbbb31ee4d65b0216.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbd8602c2cd8a81cb090f9586748676b155ace91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
