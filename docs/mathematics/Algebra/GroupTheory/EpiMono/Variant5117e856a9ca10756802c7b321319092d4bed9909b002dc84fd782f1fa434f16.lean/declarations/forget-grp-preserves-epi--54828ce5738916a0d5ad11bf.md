# forget_grp_preserves_epi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:56dbab355d1b4975b1c93cba201cf34e73a7528b2cb2bb37ef7c4a722b00a40f",
  "kind": "instance",
  "lexical_name": "forget_grp_preserves_epi",
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
  "slug": "forget-grp-preserves-epi--54828ce5738916a0d5ad11bf",
  "source": {
    "blob": "5c5142d140008a2bbf508ec725e013533e44681c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 345,
    "line": 335,
    "path": "GRWTSK/Algebra/GroupTheory/EpiMono/Variant5117e856a9ca10756802c7b321319092d4bed9909b002dc84fd782f1fa434f16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:54828ce5738916a0d5ad11bfe71db7c8300329b67257a585cc21885b805867aa",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/EpiMono/Variant5117e856a9ca10756802c7b321319092d4bed9909b002dc84fd782f1fa434f16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:56dbab355d1b4975b1c93cba201cf34e73a7528b2cb2bb37ef7c4a722b00a40f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 335–345.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance forget_grp_preserves_epi : (forget GrpCat).PreservesEpimorphisms where
  preserves f e := by rwa [epi_iff_surjective, ← CategoryTheory.ofHom_epi_iff_surjective] at e

end GrpCat

namespace CommGrpCat


variable {A B : CommGrpCat.{u}} (f : A ⟶ B)

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/EpiMono/Variant5117e856a9ca10756802c7b321319092d4bed9909b002dc84fd782f1fa434f16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/EpiMono/Variant5117e856a9ca10756802c7b321319092d4bed9909b002dc84fd782f1fa434f16.lean#L335).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c5142d140008a2bbf508ec725e013533e44681c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
