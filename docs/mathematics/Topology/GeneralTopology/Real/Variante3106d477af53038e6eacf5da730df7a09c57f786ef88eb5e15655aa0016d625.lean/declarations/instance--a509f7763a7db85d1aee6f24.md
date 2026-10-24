# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3b9601c307ca716197fade6db60a4fae02d7911a9487878b067e3fe7e26cdcda",
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
  "slug": "instance--a509f7763a7db85d1aee6f24",
  "source": {
    "blob": "a0c6fec9387db30b2bfab4eae689cb446d1fa33a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 39,
    "path": "GRWTSK/Topology/GeneralTopology/Real/Variante3106d477af53038e6eacf5da730df7a09c57f786ef88eb5e15655aa0016d625.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a509f7763a7db85d1aee6f24507e4fdad6fe036d8657d3ace99feb2deb4a7e90",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Real/Variante3106d477af53038e6eacf5da730df7a09c57f786ef88eb5e15655aa0016d625.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3b9601c307ca716197fade6db60a4fae02d7911a9487878b067e3fe7e26cdcda`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : ProperlyDiscontinuousVAdd (zmultiples p).op ℝ :=
  (zmultiples p).properlyDiscontinuousVAdd_opposite_of_tendsto_cofinite
    (AddSubgroup.tendsto_zmultiples_subtype_cofinite p)

end AddCircle

section UnitAddCircle

/-- The unit circle `ℝ ⧸ ℤ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Real/Variante3106d477af53038e6eacf5da730df7a09c57f786ef88eb5e15655aa0016d625.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Real/Variante3106d477af53038e6eacf5da730df7a09c57f786ef88eb5e15655aa0016d625.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0c6fec9387db30b2bfab4eae689cb446d1fa33a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
