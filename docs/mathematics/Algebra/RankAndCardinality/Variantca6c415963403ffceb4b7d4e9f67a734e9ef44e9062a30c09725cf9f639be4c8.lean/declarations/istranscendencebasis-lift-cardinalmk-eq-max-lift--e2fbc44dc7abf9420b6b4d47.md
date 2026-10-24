# IsTranscendenceBasis.lift_cardinalMk_eq_max_lift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5c81f625102826f800dbdc3f910521c285e40909",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 41,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ca/ca6c415963403ffceb4b7d4e9f67a734e9ef44e9062a30c09725cf9f639be4c8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:064f22f6-018e-5523-ebb2-80ff6e8e17ce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8521128e-62d8-8785-7ecf-dd02cf68554c",
  "kind": "theorem",
  "lexical_name": "IsTranscendenceBasis.lift_cardinalMk_eq_max_lift",
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
  "slug": "istranscendencebasis-lift-cardinalmk-eq-max-lift--e2fbc44dc7abf9420b6b4d47",
  "source": {
    "blob": "5c81f625102826f800dbdc3f910521c285e40909",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 41,
    "path": "GRWTSK/Algebra/RankAndCardinality/Variantca6c415963403ffceb4b7d4e9f67a734e9ef44e9062a30c09725cf9f639be4c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2fbc44dc7abf9420b6b4d4724d2a33e211aacafd0025668af218dbb4579eb30",
  "verification": {
    "reference": "docs/verification/Algebra/RankAndCardinality/Variantca6c415963403ffceb4b7d4e9f67a734e9ef44e9062a30c09725cf9f639be4c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8521128e-62d8-8785-7ecf-dd02cf68554c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsTranscendenceBasis.lift_cardinalMk_eq_max_lift
    {F : Type u} {E : Type v} [CommRing F] [Nontrivial F] [CommRing E] [IsDomain E] [Algebra F E]
    {ι : Type w} {x : ι → E} [Nonempty ι] (hx : IsTranscendenceBasis F x) :
    lift.{max u w} #E = lift.{max v w} #F ⊔ lift.{max u v} #ι ⊔ ℵ₀ := by
  let K := Algebra.adjoin F (Set.range x)
  suffices #E = #K by simp [K, this, ← lift_mk_eq'.2 ⟨hx.1.aevalEquiv.toEquiv⟩]
  haveI : Algebra.IsAlgebraic K E := hx.isAlgebraic
  refine le_antisymm ?_ (mk_le_of_injective Subtype.val_injective)
  haveI : Infinite K := hx.1.aevalEquiv.infinite_iff.1 inferInstance
  simpa only [sup_eq_left.2 (aleph0_le_mk K)] using Algebra.IsAlgebraic.cardinalMk_le_max K E

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RankAndCardinality/Variantca6c415963403ffceb4b7d4e9f67a734e9ef44e9062a30c09725cf9f639be4c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RankAndCardinality/Variantca6c415963403ffceb4b7d4e9f67a734e9ef44e9062a30c09725cf9f639be4c8.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c81f625102826f800dbdc3f910521c285e40909` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
