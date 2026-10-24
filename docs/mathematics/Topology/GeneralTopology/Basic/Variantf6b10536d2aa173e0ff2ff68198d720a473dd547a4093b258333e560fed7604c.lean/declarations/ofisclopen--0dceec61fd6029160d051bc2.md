# ofIsClopen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:580c36b355164a2cb93c5bb80efb5ebad33d218b5c9349e627e564fdf12946f3",
  "kind": "def",
  "lexical_name": "ofIsClopen",
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
  "slug": "ofisclopen--0dceec61fd6029160d051bc2",
  "source": {
    "blob": "f103795e0f8e62a82bde7bac993c4bc3a8c1ff91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 312,
    "line": 297,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantf6b10536d2aa173e0ff2ff68198d720a473dd547a4093b258333e560fed7604c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0dceec61fd6029160d051bc2efd4c9bfb09b28919c5152437eaaef7eeab834a8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantf6b10536d2aa173e0ff2ff68198d720a473dd547a4093b258333e560fed7604c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:580c36b355164a2cb93c5bb80efb5ebad33d218b5c9349e627e564fdf12946f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 297–312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofIsClopen {X : Type*} [TopologicalSpace X] {U : Set X} [∀ x, Decidable (x ∈ U)]
    (hU : IsClopen U) : LocallyConstant X (Fin 2) where
  toFun x := if x ∈ U then 0 else 1
  isLocallyConstant := by
    refine IsLocallyConstant.iff_isOpen_fiber.2 <| Fin.forall_fin_two.2 ⟨?_, ?_⟩
    · convert hU.2 using 1
      ext
      simp only [mem_singleton_iff, Fin.one_eq_zero_iff, mem_preimage, ite_eq_left_iff,
        Nat.succ_succ_ne_one]
      tauto
    · rw [← isClosed_compl_iff]
      convert hU.1
      ext
      simp

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantf6b10536d2aa173e0ff2ff68198d720a473dd547a4093b258333e560fed7604c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantf6b10536d2aa173e0ff2ff68198d720a473dd547a4093b258333e560fed7604c.lean#L297).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f103795e0f8e62a82bde7bac993c4bc3a8c1ff91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
