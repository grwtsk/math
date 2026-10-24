# union_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:68b4c44a-8767-1502-7053-28541f7774ec",
  "kind": "theorem",
  "lexical_name": "union_left",
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
  "slug": "union-left--5337d7dfe3565d7da0b0d6f9",
  "source": {
    "blob": "5456111966d1c90879da68276d6db1edb51fddfb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 197,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantad2743883129b571b560a463454fc1d95464d75d9adb8c5788c82693156909bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5337d7dfe3565d7da0b0d6f9e4f401bfa4907e862f77c3ce0af6fb8577375c3c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Variantad2743883129b571b560a463454fc1d95464d75d9adb8c5788c82693156909bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68b4c44a-8767-1502-7053-28541f7774ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem union_left [h : IsCyclotomicExtension T A B] (hS : S ⊆ T) :
    IsCyclotomicExtension S A (adjoin A {b : B | ∃ a : ℕ+, a ∈ S ∧ b ^ (a : ℕ) = 1}) := by
  refine ⟨@fun n hn => ?_, fun b => ?_⟩
  · obtain ⟨b, hb⟩ := ((isCyclotomicExtension_iff _ _ _).1 h).1 (hS hn)
    refine ⟨⟨b, subset_adjoin ⟨n, hn, hb.pow_eq_one⟩⟩, ?_⟩
    rwa [← IsPrimitiveRoot.coe_submonoidClass_iff, Subtype.coe_mk]
  · convert mem_top (R := A) (x := b)
    rw [← adjoin_adjoin_coe_preimage, preimage_setOf_eq]
    norm_cast

variable {n S}

/-- If `∀ s ∈ S, n ∣ s` and `S` is not empty, then `IsCyclotomicExtension S A B` implies
`IsCyclotomicExtension (S ∪ {n}) A B`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Variantad2743883129b571b560a463454fc1d95464d75d9adb8c5788c82693156909bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantad2743883129b571b560a463454fc1d95464d75d9adb8c5788c82693156909bb.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5456111966d1c90879da68276d6db1edb51fddfb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
