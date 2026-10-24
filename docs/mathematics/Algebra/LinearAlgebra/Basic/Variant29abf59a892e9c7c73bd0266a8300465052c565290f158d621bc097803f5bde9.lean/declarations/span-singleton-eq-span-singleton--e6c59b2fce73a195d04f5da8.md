# span_singleton_eq_span_singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7eb4be36-d9e7-2ac4-0fc2-0ab7c9b409dd",
  "kind": "theorem",
  "lexical_name": "span_singleton_eq_span_singleton",
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
  "slug": "span-singleton-eq-span-singleton--e6c59b2fce73a195d04f5da8",
  "source": {
    "blob": "5d128fb58c9f480cc3665978b0329ac22edfe3ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 233,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant29abf59a892e9c7c73bd0266a8300465052c565290f158d621bc097803f5bde9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6c59b2fce73a195d04f5da8ec831272dde90121204b8bbc0329faab4a6f7099",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant29abf59a892e9c7c73bd0266a8300465052c565290f158d621bc097803f5bde9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7eb4be36-d9e7-2ac4-0fc2-0ab7c9b409dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem span_singleton_eq_span_singleton {R M : Type*} [Ring R] [AddCommGroup M] [Module R M]
    [NoZeroSMulDivisors R M] {x y : M} : ((R ∙ x) = R ∙ y) ↔ ∃ z : Rˣ, z • x = y := by
  constructor
  · simp only [le_antisymm_iff, span_singleton_le_iff_mem, mem_span_singleton]
    rintro ⟨⟨a, rfl⟩, b, hb⟩
    rcases eq_or_ne y 0 with rfl | hy; · simp
    refine ⟨⟨b, a, ?_, ?_⟩, hb⟩
    · apply smul_left_injective R hy
      simpa only [mul_smul, one_smul]
    · rw [← hb] at hy
      apply smul_left_injective R (smul_ne_zero_iff.1 hy).2
      simp only [mul_smul, one_smul, hb]
  · rintro ⟨u, rfl⟩
    exact (span_singleton_group_smul_eq _ _ _).symm

-- Should be `@[simp]` but doesn't fire due to https://github.com/leanprover/lean4/pull/3701.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant29abf59a892e9c7c73bd0266a8300465052c565290f158d621bc097803f5bde9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant29abf59a892e9c7c73bd0266a8300465052c565290f158d621bc097803f5bde9.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d128fb58c9f480cc3665978b0329ac22edfe3ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
