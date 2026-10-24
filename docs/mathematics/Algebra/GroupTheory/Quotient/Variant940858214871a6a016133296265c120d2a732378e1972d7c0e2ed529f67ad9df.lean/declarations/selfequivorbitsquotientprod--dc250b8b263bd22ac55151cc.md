# selfEquivOrbitsQuotientProd'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1d1ffd85efaccbe30422984969ee21c477b938b398c739f80287baa0e1d3e3b3",
  "kind": "def",
  "lexical_name": "selfEquivOrbitsQuotientProd'",
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
  "slug": "selfequivorbitsquotientprod--dc250b8b263bd22ac55151cc",
  "source": {
    "blob": "6392262fb9f727f48726cba67bde4e46dcbc3248",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 433,
    "line": 417,
    "path": "GRWTSK/Algebra/GroupTheory/Quotient/Variant940858214871a6a016133296265c120d2a732378e1972d7c0e2ed529f67ad9df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dc250b8b263bd22ac55151cc97c96285f81263b7a9b7a18f9834c6a8299e613e",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Quotient/Variant940858214871a6a016133296265c120d2a732378e1972d7c0e2ed529f67ad9df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1d1ffd85efaccbe30422984969ee21c477b938b398c739f80287baa0e1d3e3b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 417–433.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def selfEquivOrbitsQuotientProd'
    {φ : Quotient (MulAction.orbitRel α β) → β} (hφ : Function.LeftInverse Quotient.mk'' φ)
    (h : ∀ b : β, MulAction.stabilizer α b = ⊥) :
    β ≃ Quotient (MulAction.orbitRel α β) × α :=
  (MulAction.selfEquivSigmaOrbitsQuotientStabilizer' α β hφ).trans <|
    (Equiv.sigmaCongrRight <| fun _ ↦
      (Subgroup.quotientEquivOfEq (h _)).trans (QuotientGroup.quotientEquivSelf α)).trans <|
    Equiv.sigmaEquivProd _ _

@[deprecated (since := "2025-03-11")]
alias _root_.AddAction.selfEquivOrbitsQuotientSum' := AddAction.selfEquivOrbitsQuotientProd'

/-- If `α` acts freely on `β`, `β` is equivalent to the product of the quotient of `β` by `α` and
`α`. -/
@[to_additive selfEquivOrbitsQuotientProd
  "If `α` acts freely on `β`, `β` is equivalent to the product of the quotient of `β` by
`α` and `α`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Quotient/Variant940858214871a6a016133296265c120d2a732378e1972d7c0e2ed529f67ad9df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Quotient/Variant940858214871a6a016133296265c120d2a732378e1972d7c0e2ed529f67ad9df.lean#L417).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6392262fb9f727f48726cba67bde4e46dcbc3248` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
