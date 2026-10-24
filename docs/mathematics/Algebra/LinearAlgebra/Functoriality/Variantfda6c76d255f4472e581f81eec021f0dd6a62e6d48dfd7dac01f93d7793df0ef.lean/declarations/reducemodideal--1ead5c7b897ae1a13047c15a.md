# reduceModIdeal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1067f0fd8b33a32cb2ffe8059ec46c8791cb380b86aaa39c234685b730221b74",
  "kind": "def",
  "lexical_name": "reduceModIdeal",
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
  "slug": "reducemodideal--1ead5c7b897ae1a13047c15a",
  "source": {
    "blob": "28f2f2968b87cce2349af273c5647bfcf53dc312",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 61,
    "path": "GRWTSK/Algebra/LinearAlgebra/Functoriality/Variantfda6c76d255f4472e581f81eec021f0dd6a62e6d48dfd7dac01f93d7793df0ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1ead5c7b897ae1a13047c15a200d3267289eb833e4f5130efea7986bd93b71f0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Functoriality/Variantfda6c76d255f4472e581f81eec021f0dd6a62e6d48dfd7dac01f93d7793df0ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1067f0fd8b33a32cb2ffe8059ec46c8791cb380b86aaa39c234685b730221b74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def reduceModIdeal (f : M →ₗ[R] N) :
    M ⧸ (I • ⊤ : Submodule R M) →ₗ[R ⧸ I] N ⧸ (I • ⊤ : Submodule R N) where
  toFun := f.reduceModIdealAux I
  map_add' := by simp
  map_smul' r x := by
    refine Quotient.inductionOn' r (fun r ↦ ?_)
    refine Quotient.inductionOn' x (fun x ↦ ?_)
    simp only [Submodule.Quotient.mk''_eq_mk, Ideal.Quotient.mk_eq_mk, Module.Quotient.mk_smul_mk,
      Submodule.Quotient.mk_smul, LinearMapClass.map_smul, reduceModIdealAux_apply,
      RingHomCompTriple.comp_apply]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Functoriality/Variantfda6c76d255f4472e581f81eec021f0dd6a62e6d48dfd7dac01f93d7793df0ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Functoriality/Variantfda6c76d255f4472e581f81eec021f0dd6a62e6d48dfd7dac01f93d7793df0ef.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28f2f2968b87cce2349af273c5647bfcf53dc312` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
