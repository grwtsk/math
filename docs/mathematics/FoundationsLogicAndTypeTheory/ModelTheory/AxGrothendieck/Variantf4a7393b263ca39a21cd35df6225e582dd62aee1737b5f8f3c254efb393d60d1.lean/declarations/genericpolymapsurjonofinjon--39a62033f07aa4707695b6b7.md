# genericPolyMapSurjOnOfInjOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5a9d751a0047ed8a0cfc81dd6ce9b4b897e98d6a1400773e528249e5260b696c",
  "kind": "def",
  "lexical_name": "genericPolyMapSurjOnOfInjOn",
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
  "slug": "genericpolymapsurjonofinjon--39a62033f07aa4707695b6b7",
  "source": {
    "blob": "feeaac216672146d2ea8b3aebd31019488e7e0f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 103,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/AxGrothendieck/Variantf4a7393b263ca39a21cd35df6225e582dd62aee1737b5f8f3c254efb393d60d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:39a62033f07aa4707695b6b7367b2b4cf0351b4812a6237843f75fa8e9750aef",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/AxGrothendieck/Variantf4a7393b263ca39a21cd35df6225e582dd62aee1737b5f8f3c254efb393d60d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5a9d751a0047ed8a0cfc81dd6ce9b4b897e98d6a1400773e528249e5260b696c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def genericPolyMapSurjOnOfInjOn [Finite ι]
    (φ : ring.Formula (α ⊕ ι))
    (mons : ι → Finset (ι →₀ ℕ)) : Language.ring.Sentence :=
  let l1 : ι → Language.ring.Formula ((Σ i : ι, mons i) ⊕ (Fin 2 × ι)) :=
    fun i =>
      (termOfFreeCommRing (genericPolyMap mons i)).relabel
        (Sum.inl ∘ Sum.map id (fun i => (0, i)))
    =' (termOfFreeCommRing (genericPolyMap mons i)).relabel
        (Sum.inl ∘ Sum.map id (fun i => (1, i)))
  -- p(x) = p(y) as a formula
  let f1 : Language.ring.Formula ((Σ i : ι, mons i) ⊕ (Fin 2 × ι)) :=
    iInf l1
  let l2 : ι → Language.ring.Formula ((Σ i : ι, mons i) ⊕ (Fin 2 × ι)) :=
    fun i => .var (Sum.inl (Sum.inr (0, i))) =' .var (Sum.inl (Sum.inr (1, i)))
  -- x = y as a formula
  let f2 : Language.ring.Formula ((Σ i : ι, mons i) ⊕ (Fin 2 × ι)) :=
    iInf l2
  let injOn : Language.ring.Formula (α ⊕ Σ i : ι, mons i) :=
    Formula.iAlls (Fin 2 × ι)
      (φ.relabel (Sum.map Sum.inl (fun i => (0, i))) ⟹
       φ.relabel (Sum.map Sum.inl (fun i => (1, i))) ⟹
        (f1.imp f2).relabel (fun x => (Equiv.sumAssoc _ _ _).symm (Sum.inr x)))
  let l3 : ι → Language.ring.Formula ((Σ i : ι, mons i) ⊕ (Fin 2 × ι)) :=
    fun i => (termOfFreeCommRing (genericPolyMap mons i)).relabel
        (Sum.inl ∘ Sum.map id (fun i => (0, i))) ='
      .var (Sum.inl (Sum.inr (1, i)))
  let f3 : Language.ring.Formula ((Σ i : ι, mons i) ⊕ (Fin 2 × ι)) :=
    iInf l3
  let surjOn : Language.ring.Formula (α ⊕ Σ i : ι, mons i) :=
    Formula.iAlls ι
      (Formula.imp (φ.relabel (Sum.map Sum.inl id)) <|
        Formula.iExs ι <|
          ((φ.relabel (Sum.map Sum.inl (fun i => (0, i)))) ⊓
            (f3.relabel (fun x => (Equiv.sumAssoc _ _ _).symm (Sum.inr x)))).relabel
        (fun (i : (α ⊕ (Σ i : ι, mons i)) ⊕ (Fin 2 × ι)) =>
          show ((α ⊕ (Σ i : ι, mons i)) ⊕ ι) ⊕ ι
          from Sum.elim (Sum.inl ∘ Sum.inl)
            (fun i => if i.1 = 0 then Sum.inr i.2 else (Sum.inl (Sum.inr i.2))) i))
  let mapsTo : Language.ring.Formula (α ⊕ Σ i : ι, mons i) :=
    Formula.iAlls ι
      (Formula.imp (φ.relabel (Sum.map Sum.inl id))
        (φ.subst <| Sum.elim
          (fun a => .var (Sum.inl (Sum.inl a)))
          (fun i => (termOfFreeCommRing (genericPolyMap mons i)).relabel
            (fun i => (Equiv.sumAssoc _ _ _).symm (Sum.inr i)))))
  Formula.iAlls (α ⊕ Σ i : ι, mons i) ((mapsTo.imp <| injOn.imp <| surjOn).relabel Sum.inr)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/AxGrothendieck/Variantf4a7393b263ca39a21cd35df6225e582dd62aee1737b5f8f3c254efb393d60d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/AxGrothendieck/Variantf4a7393b263ca39a21cd35df6225e582dd62aee1737b5f8f3c254efb393d60d1.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `feeaac216672146d2ea8b3aebd31019488e7e0f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
