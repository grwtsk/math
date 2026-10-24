# ExistsAddOfLE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f57dbe5ea6368008184001b55610eaa7bf68d732ee22730c75ed360c15952702",
  "kind": "class",
  "lexical_name": "ExistsAddOfLE",
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
  "slug": "existsaddofle--477cf1c52881ea16821cadb7",
  "source": {
    "blob": "4ac7bfe7e53f500f19f20a67899ac287f94b31fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 43,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variant8ee4d64a18e01a909e0b1178ff1eb41b9fee48d87bc17b3cc3dab7ed8fbc11f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:477cf1c52881ea16821cadb7c60f1c274671dd8cce7149443d57ba1dd21b648a",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variant8ee4d64a18e01a909e0b1178ff1eb41b9fee48d87bc17b3cc3dab7ed8fbc11f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f57dbe5ea6368008184001b55610eaa7bf68d732ee22730c75ed360c15952702`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class ExistsAddOfLE (α : Type u) [Add α] [LE α] : Prop where
  /-- For `a ≤ b`, there is a `c` so `b = a + c`. -/
  exists_add_of_le : ∀ {a b : α}, a ≤ b → ∃ c : α, b = a + c
#align has_exists_add_of_le ExistsAddOfLE

attribute [to_additive] ExistsMulOfLE

export ExistsMulOfLE (exists_mul_of_le)

export ExistsAddOfLE (exists_add_of_le)

-- See note [lower instance priority]
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variant8ee4d64a18e01a909e0b1178ff1eb41b9fee48d87bc17b3cc3dab7ed8fbc11f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variant8ee4d64a18e01a909e0b1178ff1eb41b9fee48d87bc17b3cc3dab7ed8fbc11f8.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ac7bfe7e53f500f19f20a67899ac287f94b31fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
