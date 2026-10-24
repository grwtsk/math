# ErgodicSMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5e757439733aaec8a9d86611f5e967bc9bf196a2693a323995a0d44df05d00b8",
  "kind": "class",
  "lexical_name": "ErgodicSMul",
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
  "slug": "ergodicsmul--7dd3dca89ea7c66cc96062a1",
  "source": {
    "blob": "f6a6915cc25dde87fcbd442748a7813213bca46e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 39,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variantf4bc6e3f106be63339ed3cebf6ddf44707e5295b505c534ff9c4ca61eee29492.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7dd3dca89ea7c66cc96062a1ca011e472b1da4c3f880f1191d919b5078aaa4da",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variantf4bc6e3f106be63339ed3cebf6ddf44707e5295b505c534ff9c4ca61eee29492.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5e757439733aaec8a9d86611f5e967bc9bf196a2693a323995a0d44df05d00b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class ErgodicSMul (G α : Type*) [SMul G α] {_ : MeasurableSpace α} (μ : Measure α) : Prop
    extends SMulInvariantMeasure G α μ where
  aeconst_of_forall_preimage_smul_ae_eq {s : Set α} : MeasurableSet s →
    (∀ g : G, (g • ·) ⁻¹' s =ᵐ[μ] s) → EventuallyConst s (ae μ)

attribute [to_additive] ergodicSMul_iff

namespace MeasureTheory

variable (G : Type*) {α : Type*} {m : MeasurableSpace α} {μ : Measure α}

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variantf4bc6e3f106be63339ed3cebf6ddf44707e5295b505c534ff9c4ca61eee29492.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variantf4bc6e3f106be63339ed3cebf6ddf44707e5295b505c534ff9c4ca61eee29492.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6a6915cc25dde87fcbd442748a7813213bca46e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
