# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:77bdb47e4f5b638b5eb2f858fbe3646c7391313244b3eef7ce727032245c7d58",
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
  "slug": "instance--56f4b9b3bde943123dec91b5",
  "source": {
    "blob": "e71ba081da78279daa1d0312d252f73f477bb8c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 102,
    "path": "GRWTSK/Algebra/GroupTheory/Res/Variant920567d8902528136b31c95856921c77c41d08f8eb39178a231245ea69e70d57.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:56f4b9b3bde943123dec91b5796e59ae27f323b3e2000a55c780509efb3c09ed",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Res/Variant920567d8902528136b31c95856921c77c41d08f8eb39178a231245ea69e70d57.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:77bdb47e4f5b638b5eb2f858fbe3646c7391313244b3eef7ce727032245c7d58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : Limits.PreservesColimits (resFunctor.{w} (k := k) f) :=
  have : PreservesColimitsOfSize.{w, w} (resFunctor (k := k) f ⋙
      forget₂ (Rep.{w} k H) (ModuleCat k)) :=
    inferInstanceAs (PreservesColimitsOfSize.{w, w} (forget₂ (Rep.{w} k G) (ModuleCat k)))
  preservesColimits_of_reflects_of_preserves _ (forget₂ (Rep.{w} k H) (ModuleCat k))

/-- An object of `Rep k G` is zero iff its restriction to `H` is zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Res/Variant920567d8902528136b31c95856921c77c41d08f8eb39178a231245ea69e70d57.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Res/Variant920567d8902528136b31c95856921c77c41d08f8eb39178a231245ea69e70d57.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e71ba081da78279daa1d0312d252f73f477bb8c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
