# evalAll_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6500e6d4-d939-08b1-36d6-5cfd797cfecb",
  "kind": "theorem",
  "lexical_name": "evalAll_comp",
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
  "slug": "evalall-comp--2a9024be1203d74f0e88a375",
  "source": {
    "blob": "afc63a9822a1feb9125fe2fa6d1def2aef22894f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 180,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/ScopeIndexedStructuralReification/Variant0d107628ffc4749d/StructuralRecoveryAndTreeMetrics.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a9024be1203d74f0e88a375f639a856354b111303e2f058ecbe52a31dc82617",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ProofTheory/ScopeIndexedStructuralReification/Variant0d107628ffc4749d/StructuralRecoveryAndTreeMetrics.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6500e6d4-d939-08b1-36d6-5cfd797cfecb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  private theorem evalAll_comp
      {K : KernelPresentation.{u}} {js : List K.Judgment}
      (children : IndexedAll (RawDer K) js) :
      evalAll (compAll children) = children := by
    cases children with
    | nil => rfl
    | cons head tail =>
        simp only [compAll, evalAll]
        rw [eval_comp head, evalAll_comp tail]
end


/--
**Used by:** Consumers that select a plan by its root can reuse the exact raw
root after compilation.

**Proof idea:** Both roots are the same type index `J`, so the proof is
reflexive.

**Equality notion:** Propositional equality of scoped-judgment records.

**Architectural problem:** Compilation must retain the exact root index.
**Important data and indices:** Both roots are the implicit judgment `J`.
**Type-enforced invariant:** `Comp` returns `TreePlan K J` from `RawDer K J`.
**Layer boundary:** This compares abstract indices, not source declarations.
**Worked example:** The private identity derivation and its plan share the root.
**Boundary cases:** The result is also reflexive for leaves.
**Validation consequence:** Any change of abstract root is ruled out.
-/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/ScopeIndexedStructuralReification/Variant0d107628ffc4749d/StructuralRecoveryAndTreeMetrics.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/ScopeIndexedStructuralReification/Variant0d107628ffc4749d/StructuralRecoveryAndTreeMetrics.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afc63a9822a1feb9125fe2fa6d1def2aef22894f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
