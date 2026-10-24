# mul_lt_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ed3afc1d1509810b20e7cd587748561850c79d12",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 237,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/eb/ebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:91ae0b7c-0d9b-43b3-190f-519fff237ad0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6a8b17be-81ee-c043-a711-91c32122380e",
  "kind": "lemma",
  "lexical_name": "mul_lt_mul",
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
  "slug": "mul-lt-mul--66c5775bb32cb503e2adecd7",
  "source": {
    "blob": "ed3afc1d1509810b20e7cd587748561850c79d12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 237,
    "path": "GRWTSK/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:66c5775bb32cb503e2adecd731e65f5e586b2be857ca9f09828541088604f069",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a8b17be-81ee-c043-a711-91c32122380e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma mul_lt_mul (ha : a₁ < a₂) (hb : b₁ < b₂) : a₁ * b₁ < a₂ * b₂ := by
  have := posMulStrictMono_iff_mulPosStrictMono.1 ‹_›
  lift a₁ to α using ha.lt_top.ne
  lift b₁ to α using hb.lt_top.ne
  obtain rfl | ha₂ := eq_or_ne a₂ ⊤
  · rw [top_mul (by simpa [bot_eq_zero] using hb.bot_lt.ne')]
    exact coe_lt_top _
  obtain rfl | hb₂ := eq_or_ne b₂ ⊤
  · rw [mul_top (by simpa [bot_eq_zero] using ha.bot_lt.ne')]
    exact coe_lt_top _
  lift a₂ to α using ha₂
  lift b₂ to α using hb₂
  norm_cast at *
  obtain rfl | hb₁ := eq_zero_or_pos b₁
  · rw [mul_zero]
    exact mul_pos (by simpa [bot_eq_zero] using ha.bot_lt) hb
  · exact mul_lt_mul ha hb.le hb₁ (zero_le _)

variable [NoZeroDivisors α] [Nontrivial α] {a b : WithTop α}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed3afc1d1509810b20e7cd587748561850c79d12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
