# noConfusionTypeEnum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:86ef8ae9336203ca93f60db5453a1d25d8e31dd4f9403d0ea2584d39e56cda96",
  "kind": "abbrev",
  "lexical_name": "noConfusionTypeEnum",
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
  "slug": "noconfusiontypeenum--17cca85ca51a5e492d64cc13",
  "source": {
    "blob": "1fab3e725a3b89d0f36bba9b929c61cb1a68b3c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1231,
    "line": 1226,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Varianta427efee8bddaa213003c7eae599a6f9db359b30e10b312e997a29580bad0cf9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:17cca85ca51a5e492d64cc13535fa36d657c14b15a37574e537b4c3b8e9e099f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Varianta427efee8bddaa213003c7eae599a6f9db359b30e10b312e997a29580bad0cf9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:86ef8ae9336203ca93f60db5453a1d25d8e31dd4f9403d0ea2584d39e56cda96`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1226–1231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev noConfusionTypeEnum {α : Sort u} {β : Sort v} [inst : DecidableEq β] (f : α → β) (P : Sort w) (x y : α) : Sort w :=
  (inst (f x) (f y)).casesOn
    (fun _ => P)
    (fun _ => P → P)

/-- Auxiliary definition for generating compact `noConfusion` for enumeration types -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Varianta427efee8bddaa213003c7eae599a6f9db359b30e10b312e997a29580bad0cf9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Varianta427efee8bddaa213003c7eae599a6f9db359b30e10b312e997a29580bad0cf9.lean#L1226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fab3e725a3b89d0f36bba9b929c61cb1a68b3c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
