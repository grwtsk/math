# reflection_indexEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:45933688-6545-71d2-9058-2b6eec04862e",
  "kind": "lemma",
  "lexical_name": "reflection_indexEquiv",
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
  "slug": "reflection-indexequiv--3ec02586fe53ed8d8ffcef2d",
  "source": {
    "blob": "f46805e1a70c535e1959f9b4474ab99902d7a8fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 724,
    "line": 720,
    "path": "GRWTSK/Algebra/LinearAlgebra/Hom/Variant3f46a4148103294c7c1b46070663c3751cb7f78b844407992559d971b82c61fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ec02586fe53ed8d8ffcef2da3a3a65ce206ed438e214ccb4684dd0f842395c3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Hom/Variant3f46a4148103294c7c1b46070663c3751cb7f78b844407992559d971b82c61fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45933688-6545-71d2-9058-2b6eec04862e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 720–724.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma reflection_indexEquiv (P : RootPairing ι R M N) (i : ι) :
    (reflection P i).indexEquiv = P.reflectionPerm i :=
  rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Hom/Variant3f46a4148103294c7c1b46070663c3751cb7f78b844407992559d971b82c61fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Hom/Variant3f46a4148103294c7c1b46070663c3751cb7f78b844407992559d971b82c61fa.lean#L720).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f46805e1a70c535e1959f9b4474ab99902d7a8fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
