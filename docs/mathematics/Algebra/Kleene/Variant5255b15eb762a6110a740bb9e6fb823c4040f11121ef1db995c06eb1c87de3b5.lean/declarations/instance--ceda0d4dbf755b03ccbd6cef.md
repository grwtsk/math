# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f1a51aa59f753bb4b645c81afa0a251b8ab06cc3b1008a7ebf84e657a037b2dc",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--ceda0d4dbf755b03ccbd6cef",
  "source": {
    "blob": "7d3c281067cd5f23ac049a3c9e56e0bd4d2a4c13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 265,
    "path": "GRWTSK/Algebra/Kleene/Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ceda0d4dbf755b03ccbd6cefc274c89bd14effbae6bb00a20b9432f087a996e9",
  "verification": {
    "reference": "docs/verification/Algebra/Kleene/Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f1a51aa59f753bb4b645c81afa0a251b8ab06cc3b1008a7ebf84e657a037b2dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : KleeneAlgebra (α × β) :=
  { Prod.instIdemSemiring with
    kstar := fun a ↦ (a.1∗, a.2∗)
    one_le_kstar := fun _ ↦ ⟨one_le_kstar, one_le_kstar⟩
    mul_kstar_le_kstar := fun _ ↦ ⟨mul_kstar_le_kstar, mul_kstar_le_kstar⟩
    kstar_mul_le_kstar := fun _ ↦ ⟨kstar_mul_le_kstar, kstar_mul_le_kstar⟩
    mul_kstar_le_self := fun _ _ ↦ And.imp mul_kstar_le_self mul_kstar_le_self
    kstar_mul_le_self := fun _ _ ↦ And.imp kstar_mul_le_self kstar_mul_le_self }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Kleene/Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Kleene/Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d3c281067cd5f23ac049a3c9e56e0bd4d2a4c13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
