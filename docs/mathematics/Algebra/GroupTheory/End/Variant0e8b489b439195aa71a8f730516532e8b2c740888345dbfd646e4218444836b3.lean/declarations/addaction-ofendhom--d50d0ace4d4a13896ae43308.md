# AddAction.ofEndHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:204f17c3edb4a829e83fff04cc491979faa46afbd3789ee57dab15c1b0b574f0",
  "kind": "abbrev",
  "lexical_name": "AddAction.ofEndHom",
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
  "slug": "addaction-ofendhom--d50d0ace4d4a13896ae43308",
  "source": {
    "blob": "8934b180c4eb5184209332a7ebae11afa12d495a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 171,
    "path": "GRWTSK/Algebra/GroupTheory/End/Variant0e8b489b439195aa71a8f730516532e8b2c740888345dbfd646e4218444836b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d50d0ace4d4a13896ae43308b3f557bff6110bcfc5f62f86befc0f97e4e5bc34",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/End/Variant0e8b489b439195aa71a8f730516532e8b2c740888345dbfd646e4218444836b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:204f17c3edb4a829e83fff04cc491979faa46afbd3789ee57dab15c1b0b574f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev AddAction.ofEndHom (f : M →+ Additive (Function.End α)) : AddAction M α := .compHom α f

end AddMonoid

section Group
variable (G α) [Group G] [MulAction G α]

/-- Given an action of a group `G` on a set `α`, each `g : G` defines a permutation of `α`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/End/Variant0e8b489b439195aa71a8f730516532e8b2c740888345dbfd646e4218444836b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/End/Variant0e8b489b439195aa71a8f730516532e8b2c740888345dbfd646e4218444836b3.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8934b180c4eb5184209332a7ebae11afa12d495a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
