# orderedPermutationEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e24025e959bc637a5c1650f28050360a3b91e5fcebdb5e981eebb38baf76d5da",
  "kind": "def",
  "lexical_name": "orderedPermutationEquiv",
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
  "slug": "orderedpermutationequiv--0e70896cf23f0d3c67246668",
  "source": {
    "blob": "8a6f5451b53faaf00804b52b39a7ebe0aefea395",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 46,
    "path": "GRWTSK/Topology/GeneralTopology/BoundsRound3Source/Variant605b5fda80a64ca60df025c4583db023f9f87894ef7591750c44bf6384bb8613.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0e70896cf23f0d3c67246668a1850dbbc831328bd5e1711c2f23b73b496a0b36",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/BoundsRound3Source/Variant605b5fda80a64ca60df025c4583db023f9f87894ef7591750c44bf6384bb8613.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e24025e959bc637a5c1650f28050360a3b91e5fcebdb5e981eebb38baf76d5da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def orderedPermutationEquiv :
    ((Fin k ↪o Fin n) × Equiv.Perm (Fin k)) ≃
      {c : Fin k → Fin n // Function.Injective c} :=
  Equiv.ofBijective
    (fun p => ⟨fun i => p.1 (p.2 i), p.1.injective.comp p.2.injective⟩) (by
      constructor
      · intro p q hpq
        have he : (fun i => p.1 (p.2 i)) = fun i => q.1 (q.2 i) :=
          congrArg Subtype.val hpq
        have hr : Set.range p.1 = Set.range q.1 := by
          simpa only [← Function.comp_def, Set.range_comp, Equiv.range_eq_univ,
            Set.image_univ] using congrArg Set.range he
        have hI : p.1 = q.1 :=
          RelEmbedding.ext (fun i => congrFun (p.1.strictMono.range_inj q.1.strictMono |>.mp hr) i)
        have hp : p.2 = q.2 := by
          apply Equiv.ext
          intro i
          apply q.1.injective
          simpa only [hI] using congrFun he i
        exact Prod.ext hI hp
      · intro c
        obtain ⟨I, e, he⟩ := exists_ordered_selection c.val c.property
        exact ⟨(I, e), Subtype.ext (funext fun i => (he i).symm)⟩)

/-- A permutation changes the determinant sign, and leaves its square unchanged. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/BoundsRound3Source/Variant605b5fda80a64ca60df025c4583db023f9f87894ef7591750c44bf6384bb8613.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/BoundsRound3Source/Variant605b5fda80a64ca60df025c4583db023f9f87894ef7591750c44bf6384bb8613.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a6f5451b53faaf00804b52b39a7ebe0aefea395` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
