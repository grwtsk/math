# ωSup_eq_of_isLUB

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9d355253-8710-dee2-9340-9993ad40b876",
  "kind": "lemma",
  "lexical_name": "ωSup_eq_of_isLUB",
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
  "slug": "sup-eq-of-islub--bfadba8f7565b992d4d6f33d",
  "source": {
    "blob": "51705aa6cd242dc0035dc77dc1da86f500d38843",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 227,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OmegaCompletePartialOrder/Variant925eb481de1f760cee59cf6dc04604bcfb5b2ffd2acb89def393b7d58cd8c83f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bfadba8f7565b992d4d6f33d3ea93daec4426f1c7c5a7c3d26a07fdc161aac2a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OmegaCompletePartialOrder/Variant925eb481de1f760cee59cf6dc04604bcfb5b2ffd2acb89def393b7d58cd8c83f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d355253-8710-dee2-9340-9993ad40b876`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ωSup_eq_of_isLUB {c : Chain α} {a : α} (h : IsLUB (Set.range c) a) : a = ωSup c := by
  rw [le_antisymm_iff]
  simp only [IsLUB, IsLeast, upperBounds, lowerBounds, Set.mem_range, forall_exists_index,
    forall_apply_eq_imp_iff, Set.mem_setOf_eq] at h
  constructor
  · apply h.2
    exact fun a ↦ le_ωSup c a
  · rw [ωSup_le_iff]
    apply h.1

/-- A subset `p : α → Prop` of the type closed under `ωSup` induces an
`OmegaCompletePartialOrder` on the subtype `{a : α // p a}`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OmegaCompletePartialOrder/Variant925eb481de1f760cee59cf6dc04604bcfb5b2ffd2acb89def393b7d58cd8c83f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OmegaCompletePartialOrder/Variant925eb481de1f760cee59cf6dc04604bcfb5b2ffd2acb89def393b7d58cd8c83f.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51705aa6cd242dc0035dc77dc1da86f500d38843` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
