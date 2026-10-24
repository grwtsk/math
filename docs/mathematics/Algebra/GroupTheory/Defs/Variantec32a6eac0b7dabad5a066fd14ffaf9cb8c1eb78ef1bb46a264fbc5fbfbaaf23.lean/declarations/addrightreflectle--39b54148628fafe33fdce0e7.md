# AddRightReflectLE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:99673a717178322fe2a0aa2e35f384d539acdb26b9620634c9e9476cf608e926",
  "kind": "class",
  "lexical_name": "AddRightReflectLE",
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
  "slug": "addrightreflectle--39b54148628fafe33fdce0e7",
  "source": {
    "blob": "6d69b93b3f548d8bc70a8fc6b280cf74354becb9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 261,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variantec32a6eac0b7dabad5a066fd14ffaf9cb8c1eb78ef1bb46a264fbc5fbfbaaf23.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:39b54148628fafe33fdce0e77c92d42d29780bd9f084ad1bc3e61e0b18c2871f",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variantec32a6eac0b7dabad5a066fd14ffaf9cb8c1eb78ef1bb46a264fbc5fbfbaaf23.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:99673a717178322fe2a0aa2e35f384d539acdb26b9620634c9e9476cf608e926`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 261–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class AddRightReflectLE [Add M] [LE M] : Prop where
  /-- Do not use this. Use `le_of_add_le_add_right` instead. -/
  protected le_of_add_le_add_right {b a₁ a₂ : M} : a₁ + b ≤ a₂ + b → a₁ ≤ a₂

attribute [to_additive existing] MulLeftReflectLE MulRightReflectLE

variable {M N μ r} in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variantec32a6eac0b7dabad5a066fd14ffaf9cb8c1eb78ef1bb46a264fbc5fbfbaaf23.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variantec32a6eac0b7dabad5a066fd14ffaf9cb8c1eb78ef1bb46a264fbc5fbfbaaf23.lean#L261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d69b93b3f548d8bc70a8fc6b280cf74354becb9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
