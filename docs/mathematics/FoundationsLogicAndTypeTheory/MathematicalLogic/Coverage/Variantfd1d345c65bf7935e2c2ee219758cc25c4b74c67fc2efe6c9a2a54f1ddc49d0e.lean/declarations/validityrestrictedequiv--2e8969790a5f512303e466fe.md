# validityRestrictedEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:698e5d087397389e2343264a05f1340039b184d158b9867287c5f62fe7057fe7",
  "kind": "def",
  "lexical_name": "validityRestrictedEquiv",
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
  "slug": "validityrestrictedequiv--2e8969790a5f512303e466fe",
  "source": {
    "blob": "d33175d49dd960b739df0216197def0c4bc1ea0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 110,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Coverage/Variantfd1d345c65bf7935e2c2ee219758cc25c4b74c67fc2efe6c9a2a54f1ddc49d0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2e8969790a5f512303e466fe6757055778d3e9e48776815f1254e5d6ca5d6a6b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Coverage/Variantfd1d345c65bf7935e2c2ee219758cc25c4b74c67fc2efe6c9a2a54f1ddc49d0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:698e5d087397389e2343264a05f1340039b184d158b9867287c5f62fe7057fe7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def validityRestrictedEquiv
    (theory : InvariantTheory)
    (Valid : BitMatrix.Carrier.BooleanState theory.Address → Prop) :
    { scalar : theory.cantor.Scalar //
      Valid ((BitMatrix.Carrier.baselineEquiv
        theory.enumeration.enumerate theory.cantor theory.baseline) scalar) } ≃
    { state : BitMatrix.Carrier.BooleanState theory.Address // Valid state } where
  toFun scalar := ⟨
    (BitMatrix.Carrier.baselineEquiv
      theory.enumeration.enumerate theory.cantor theory.baseline) scalar,
    scalar.property⟩
  invFun state := ⟨
    (BitMatrix.Carrier.baselineEquiv
      theory.enumeration.enumerate theory.cantor theory.baseline).symm state,
    by
      rw [(BitMatrix.Carrier.baselineEquiv
        theory.enumeration.enumerate theory.cantor theory.baseline).apply_symm_apply]
      exact state.property⟩
  left_inv scalar := by
    apply Subtype.ext
    exact (BitMatrix.Carrier.baselineEquiv
      theory.enumeration.enumerate theory.cantor theory.baseline).symm_apply_apply scalar
  right_inv state := by
    apply Subtype.ext
    exact (BitMatrix.Carrier.baselineEquiv
      theory.enumeration.enumerate theory.cantor theory.baseline).apply_symm_apply state

/--
Formal classification of the transformation-cardinality boundary.  A proof of
this proposition for the concrete infinite carrier remains an external set-
theoretic theorem; the interface prevents it from being confused with the
state-parameterization theorem above.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Coverage/Variantfd1d345c65bf7935e2c2ee219758cc25c4b74c67fc2efe6c9a2a54f1ddc49d0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Coverage/Variantfd1d345c65bf7935e2c2ee219758cc25c4b74c67fc2efe6c9a2a54f1ddc49d0e.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d33175d49dd960b739df0216197def0c4bc1ea0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
