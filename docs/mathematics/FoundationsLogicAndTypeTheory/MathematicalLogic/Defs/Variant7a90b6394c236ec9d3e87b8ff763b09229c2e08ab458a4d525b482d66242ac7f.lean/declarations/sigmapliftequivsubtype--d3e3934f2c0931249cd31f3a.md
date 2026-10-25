# sigmaPLiftEquivSubtype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fd466489312b2fc03abd2c4a772490cc2ca9abdb48310c8e762bc82ecbbfe63d",
  "kind": "def",
  "lexical_name": "sigmaPLiftEquivSubtype",
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
  "slug": "sigmapliftequivsubtype--d3e3934f2c0931249cd31f3a",
  "source": {
    "blob": "782e9a48a71ac879243cbc6a07c1eb1bf641272f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 763,
    "line": 756,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant7a90b6394c236ec9d3e87b8ff763b09229c2e08ab458a4d525b482d66242ac7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d3e3934f2c0931249cd31f3afbe46377dcfd3be75fbdf97dce62e7adc46cdd16",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant7a90b6394c236ec9d3e87b8ff763b09229c2e08ab458a4d525b482d66242ac7f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fd466489312b2fc03abd2c4a772490cc2ca9abdb48310c8e762bc82ecbbfe63d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 756–763.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sigmaPLiftEquivSubtype {α : Type v} (P : α → Prop) : (Σ i, PLift (P i)) ≃ Subtype P :=
  ((psigmaEquivSigma _).symm.trans
    (psigmaCongrRight fun _ => Equiv.plift)).trans (psigmaEquivSubtype P)
#align equiv.sigma_plift_equiv_subtype Equiv.sigmaPLiftEquivSubtype

/-- A `Sigma` with `fun i ↦ ULift (PLift (P i))` fibers is equivalent to `{ x // P x }`.
Variant of `sigmaPLiftEquivSubtype`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant7a90b6394c236ec9d3e87b8ff763b09229c2e08ab458a4d525b482d66242ac7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant7a90b6394c236ec9d3e87b8ff763b09229c2e08ab458a4d525b482d66242ac7f.lean#L756).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `782e9a48a71ac879243cbc6a07c1eb1bf641272f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
