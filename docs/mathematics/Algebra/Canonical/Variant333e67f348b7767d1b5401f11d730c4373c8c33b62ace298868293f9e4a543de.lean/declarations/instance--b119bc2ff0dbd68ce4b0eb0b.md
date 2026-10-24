# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2574c95e11406dcc9b4f739033ea514a965defaf1550896381e7818a117146bf",
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
  "slug": "instance--b119bc2ff0dbd68ce4b0eb0b",
  "source": {
    "blob": "1b1ab9fb19ba1c69b45d6d4d1f1ddc63cb77e58c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 107,
    "path": "GRWTSK/Algebra/Canonical/Variant333e67f348b7767d1b5401f11d730c4373c8c33b62ace298868293f9e4a543de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b119bc2ff0dbd68ce4b0eb0b698fc25f7752546acb122890315e0ada1547a7c0",
  "verification": {
    "reference": "docs/verification/Algebra/Canonical/Variant333e67f348b7767d1b5401f11d730c4373c8c33b62ace298868293f9e4a543de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2574c95e11406dcc9b4f739033ea514a965defaf1550896381e7818a117146bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) toOrderedCommSemiring : OrderedCommSemiring α :=
  { ‹CanonicallyOrderedCommSemiring α› with
    zero_le_one := zero_le _,
    mul_le_mul_of_nonneg_left := fun a b c h _ => mul_le_mul_left' h _,
    mul_le_mul_of_nonneg_right := fun a b c h _ => mul_le_mul_right' h _ }
#align canonically_ordered_comm_semiring.to_ordered_comm_semiring CanonicallyOrderedCommSemiring.toOrderedCommSemiring

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Canonical/Variant333e67f348b7767d1b5401f11d730c4373c8c33b62ace298868293f9e4a543de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Canonical/Variant333e67f348b7767d1b5401f11d730c4373c8c33b62ace298868293f9e4a543de.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b1ab9fb19ba1c69b45d6d4d1f1ddc63cb77e58c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
