# universalFactorizationMapPresentation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:67396b7f3c1f90eee3e66aecd4c298a803de90937ec69b2d89c40574eec8c756",
  "kind": "def",
  "lexical_name": "universalFactorizationMapPresentation",
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
  "slug": "universalfactorizationmappresentation--2d26fdb43c345a1b56afbf1c",
  "source": {
    "blob": "ae678ab555f97d3252bab1329bec03a83142e418",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 224,
    "path": "GRWTSK/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2d26fdb43c345a1b56afbf1cd18a80416fb370871cde892acfd2744a57442e86",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:67396b7f3c1f90eee3e66aecd4c298a803de90937ec69b2d89c40574eec8c756`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simps] def universalFactorizationMapPresentation :
    letI := (universalFactorizationMap R n m k hn).toAlgebra
    Algebra.PreSubmersivePresentation (MvPolynomial (Fin n) R)
      (MvPolynomial (Fin m) R ⊗[R] MvPolynomial (Fin k) R) (Fin m ⊕ Fin k) (Fin n) :=
  letI := (universalFactorizationMap R n m k hn).toAlgebra
  { val := Sum.elim (.X · ⊗ₜ 1) (1 ⊗ₜ .X ·)
    σ' f := (tensorEquivSum _ _ _ _ f).map C
    aeval_val_σ' s := by
      change ((aeval _).restrictScalars R |>.comp (mapAlgHom (Algebra.ofId _ _)) |>.comp
          (tensorEquivSum R (Fin m) (Fin k) R).toAlgHom) s = AlgHom.id R _ s
      congr 1
      ext <;> simp
    algebra := (aeval _).toAlgebra
    algebraMap_eq := rfl
    relation i := .C (.X i) - (tensorEquivSum R (Fin m) (Fin k) R
      (universalFactorizationMap R n m k hn (.X i))).map C
    span_range_relation_eq_ker := by
      exact (ker_eval₂Hom_universalFactorizationMap R n m k hn).symm,
    map := finSumFinEquiv.symm ∘ finCongr hn
    map_inj := finSumFinEquiv.symm.injective.comp (finCongr hn).injective }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae678ab555f97d3252bab1329bec03a83142e418` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
