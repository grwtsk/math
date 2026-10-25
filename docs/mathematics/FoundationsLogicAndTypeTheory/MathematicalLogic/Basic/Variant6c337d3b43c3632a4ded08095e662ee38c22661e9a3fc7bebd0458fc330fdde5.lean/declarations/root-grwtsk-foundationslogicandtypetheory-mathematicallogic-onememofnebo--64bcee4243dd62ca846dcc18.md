# _root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.OneMemOfNeBot.Variant865a8caa40562ac99921803fcf16615c4143a8a85a15dbb95bd93d4b3d24dda7.RingHom.injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:30d67ddd-0903-0f31-db03-a05ddf28c3c5",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.OneMemOfNeBot.Variant865a8caa40562ac99921803fcf16615c4143a8a85a15dbb95bd93d4b3d24dda7.RingHom.injective",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-mathematicallogic-onememofnebo--64bcee4243dd62ca846dcc18",
  "source": {
    "blob": "4250720ec91b7ffa5b1fa9389439fed2845ea0b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 72,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6c337d3b43c3632a4ded08095e662ee38c22661e9a3fc7bebd0458fc330fdde5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:64bcee4243dd62ca846dcc1840e100dea071a344d5014c35477ebd33ccfab63d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6c337d3b43c3632a4ded08095e662ee38c22661e9a3fc7bebd0458fc330fdde5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30d67ddd-0903-0f31-db03-a05ddf28c3c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem _root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.OneMemOfNeBot.Variant865a8caa40562ac99921803fcf16615c4143a8a85a15dbb95bd93d4b3d24dda7.RingHom.injective
    {R S : Type*} [NonAssocRing R] [IsSimpleRing R] [NonAssocSemiring S] [Nontrivial S]
    (f : R →+* S) : Function.Injective f :=
  injective_ringHom_or_subsingleton_codomain f |>.resolve_right fun r => not_subsingleton _ r

universe u in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6c337d3b43c3632a4ded08095e662ee38c22661e9a3fc7bebd0458fc330fdde5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6c337d3b43c3632a4ded08095e662ee38c22661e9a3fc7bebd0458fc330fdde5.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4250720ec91b7ffa5b1fa9389439fed2845ea0b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
