# eLpNorm'_smul_le_mul_eLpNorm'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a4d15aeaeadbefa5a2a77a94bffdf843f692800e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 311,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c7/c706ace1d136aa10d7faa4a0b74f1d5a0257e9bbd362912805f2feded80b88d2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1b885860-b8ee-2588-6d84-235c98eca006",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:610201ce-2b3a-55ae-657d-2030ee898e50",
  "kind": "theorem",
  "lexical_name": "eLpNorm'_smul_le_mul_eLpNorm'",
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
  "slug": "elpnorm-smul-le-mul-elpnorm--302e27f2e87613cde95e9477",
  "source": {
    "blob": "a4d15aeaeadbefa5a2a77a94bffdf843f692800e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 318,
    "line": 311,
    "path": "GRWTSK/Analysis/MeasureTheory/CompareExp/Variantc706ace1d136aa10d7faa4a0b74f1d5a0257e9bbd362912805f2feded80b88d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:302e27f2e87613cde95e9477888083113055452a51f78102cc9abf79b0836225",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/CompareExp/Variantc706ace1d136aa10d7faa4a0b74f1d5a0257e9bbd362912805f2feded80b88d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:610201ce-2b3a-55ae-657d-2030ee898e50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 311–318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eLpNorm'_smul_le_mul_eLpNorm' {p q r : ℝ} {f : α → E} (hf : AEStronglyMeasurable f μ)
    {φ : α → 𝕜} (hφ : AEStronglyMeasurable φ μ) (hp0_lt : 0 < p) (hpq : p < q)
    (hpqr : 1 / p = 1 / q + 1 / r) : eLpNorm' (φ • f) p μ ≤ eLpNorm' φ q μ * eLpNorm' f r μ := by
  simpa using eLpNorm'_le_eLpNorm'_mul_eLpNorm' hφ hf (· • ·) 1
    (.of_forall fun _ => by simpa using nnnorm_smul_le _ _)
    hp0_lt hpq hpqr

/-- Hölder's inequality, as an inequality on the `ℒp` seminorm of a scalar product `φ • f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/CompareExp/Variantc706ace1d136aa10d7faa4a0b74f1d5a0257e9bbd362912805f2feded80b88d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/CompareExp/Variantc706ace1d136aa10d7faa4a0b74f1d5a0257e9bbd362912805f2feded80b88d2.lean#L311).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4d15aeaeadbefa5a2a77a94bffdf843f692800e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
