# mk_finsupp_lift_of_infinite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d8a70a44-619b-dd82-babd-efd2e5675299",
  "kind": "theorem",
  "lexical_name": "mk_finsupp_lift_of_infinite",
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
  "slug": "mk-finsupp-lift-of-infinite--7f360334ae7c287116b2af20",
  "source": {
    "blob": "d113b35b3d19c5d27cea94671fea561b0543b5e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1051,
    "line": 1036,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant5ef4db0e57d183e5eb1e8823b334e9a877a248260e12671b785d35bd45df7026.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f360334ae7c287116b2af207320ee7f5af20b35679b09847846dbed08ead6df",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant5ef4db0e57d183e5eb1e8823b334e9a877a248260e12671b785d35bd45df7026.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8a70a44-619b-dd82-babd-efd2e5675299`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1036–1051.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mk_finsupp_lift_of_infinite (α : Type u) (β : Type v) [Infinite α] [Zero β] [Nontrivial β] :
    #(α →₀ β) = max (lift.{v} #α) (lift.{u} #β) := by
  apply le_antisymm
  · calc
      #(α →₀ β) ≤ #(Finset (α × β)) := mk_le_of_injective (Finsupp.graph_injective α β)
      _ = #(α × β) := mk_finset_of_infinite _
      _ = max (lift.{v} #α) (lift.{u} #β) :=
        by rw [mk_prod, mul_eq_max_of_aleph0_le_left] <;> simp

  · apply max_le <;> rw [← lift_id #(α →₀ β), ← lift_umax]
    · cases' exists_ne (0 : β) with b hb
      exact lift_mk_le.{v}.2 ⟨⟨_, Finsupp.single_left_injective hb⟩⟩
    · inhabit α
      exact lift_mk_le.{u}.2 ⟨⟨_, Finsupp.single_injective default⟩⟩
#align cardinal.mk_finsupp_lift_of_infinite Cardinal.mk_finsupp_lift_of_infinite

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant5ef4db0e57d183e5eb1e8823b334e9a877a248260e12671b785d35bd45df7026.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant5ef4db0e57d183e5eb1e8823b334e9a877a248260e12671b785d35bd45df7026.lean#L1036).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d113b35b3d19c5d27cea94671fea561b0543b5e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
