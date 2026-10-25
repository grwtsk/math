# IsEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:17cf6c6953cbaecd305537d1f10f5c1c4a152b4a8ee3d36d208755282d35f08f",
  "kind": "class",
  "lexical_name": "IsEquiv",
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
  "slug": "isequiv--a0d2adaf0ad70a724306ddd4",
  "source": {
    "blob": "b7fc8f8b560dfe6653aac8f50d2076274c1aab3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 259,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Classes/Variant9e8fe2cafe6a5f0cca6f21518f13d6f8829539e4500caddf13a560574718f6de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a0d2adaf0ad70a724306ddd470e8f2edec342ec492a95f316d1658f44f57e6d1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Classes/Variant9e8fe2cafe6a5f0cca6f21518f13d6f8829539e4500caddf13a560574718f6de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:17cf6c6953cbaecd305537d1f10f5c1c4a152b4a8ee3d36d208755282d35f08f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class IsEquiv (α : Type u) (r : α → α → Prop) extends IsPreorder α r, IsSymm α r : Prop
#align is_equiv IsEquiv

-- /-- `IsPer X r` means that the binary relation `r` on `X` is a partial equivalence relation, that
-- is, `IsSymm X r` and `IsTrans X r`. -/
-- class IsPer (α : Type u) (r : α → α → Prop) extends IsSymm α r, IsTrans α r : Prop
#noalign is_per -- IsPer

/-- `IsStrictOrder X r` means that the binary relation `r` on `X` is a strict order, that is,
`IsIrrefl X r` and `IsTrans X r`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Classes/Variant9e8fe2cafe6a5f0cca6f21518f13d6f8829539e4500caddf13a560574718f6de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Classes/Variant9e8fe2cafe6a5f0cca6f21518f13d6f8829539e4500caddf13a560574718f6de.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7fc8f8b560dfe6653aac8f50d2076274c1aab3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
