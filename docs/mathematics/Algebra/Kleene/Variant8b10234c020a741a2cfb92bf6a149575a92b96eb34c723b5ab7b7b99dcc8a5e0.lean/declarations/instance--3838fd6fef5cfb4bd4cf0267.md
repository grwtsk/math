# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:220273ea89fb3bde0a40f4be920de1ff84e9bb3417411e907cd99ffa26ed1aff",
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
  "slug": "instance--3838fd6fef5cfb4bd4cf0267",
  "source": {
    "blob": "e997a9d785530c4423087c71dd2b3ce3229ba11a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 307,
    "line": 299,
    "path": "GRWTSK/Algebra/Kleene/Variant8b10234c020a741a2cfb92bf6a149575a92b96eb34c723b5ab7b7b99dcc8a5e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3838fd6fef5cfb4bd4cf0267937b531a0e0beaf4af3c6e1f03a412dc7ac036ea",
  "verification": {
    "reference": "docs/verification/Algebra/Kleene/Variant8b10234c020a741a2cfb92bf6a149575a92b96eb34c723b5ab7b7b99dcc8a5e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:220273ea89fb3bde0a40f4be920de1ff84e9bb3417411e907cd99ffa26ed1aff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 299–307.

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

[Verification target and public status](../../../../../verification/Algebra/Kleene/Variant8b10234c020a741a2cfb92bf6a149575a92b96eb34c723b5ab7b7b99dcc8a5e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Kleene/Variant8b10234c020a741a2cfb92bf6a149575a92b96eb34c723b5ab7b7b99dcc8a5e0.lean#L299).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e997a9d785530c4423087c71dd2b3ce3229ba11a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
