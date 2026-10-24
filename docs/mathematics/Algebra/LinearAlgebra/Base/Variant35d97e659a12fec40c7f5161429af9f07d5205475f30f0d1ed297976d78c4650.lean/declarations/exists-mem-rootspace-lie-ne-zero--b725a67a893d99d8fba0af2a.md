# exists_mem_rootSpace_lie_ne_zero'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a5ed563d-3ee1-4ef7-714a-d1a04789da7b",
  "kind": "lemma",
  "lexical_name": "exists_mem_rootSpace_lie_ne_zero'",
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
  "slug": "exists-mem-rootspace-lie-ne-zero--b725a67a893d99d8fba0af2a",
  "source": {
    "blob": "fcd966880c88aac6c2fc3ba90614088bf6597a25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 152,
    "path": "GRWTSK/Algebra/LinearAlgebra/Base/Variant35d97e659a12fec40c7f5161429af9f07d5205475f30f0d1ed297976d78c4650.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b725a67a893d99d8fba0af2a5a2c3d09ed68592da5c272036f53bf4acacf3e1f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Base/Variant35d97e659a12fec40c7f5161429af9f07d5205475f30f0d1ed297976d78c4650.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5ed563d-3ee1-4ef7-714a-d1a04789da7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma exists_mem_rootSpace_lie_ne_zero' [IsKilling K L]
    {α β : Weight K H L} (hα : α.IsNonZero) (h_ne_bot : rootSpace H (α + β) ≠ ⊥)
    {a : L} (ha : a ∈ rootSpace H α) (ha₀ : a ≠ 0) :
    ∃ b ∈ rootSpace H β, ⁅a, b⁆ ≠ 0 := by
  obtain ⟨a', ha', b, hb, hab⟩ := exists_mem_rootSpace_lie_ne_zero hα h_ne_bot
  obtain ⟨t, rfl⟩ : ∃ t : K, t • a = a' :=
    Submodule.mem_span_singleton.mp <| by rwa [← toSubmodule_rootSpace_eq_span α hα a ha₀ ha]
  exact ⟨b, hb, by contrapose! hab; simp [hab]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Base/Variant35d97e659a12fec40c7f5161429af9f07d5205475f30f0d1ed297976d78c4650.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Base/Variant35d97e659a12fec40c7f5161429af9f07d5205475f30f0d1ed297976d78c4650.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcd966880c88aac6c2fc3ba90614088bf6597a25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
