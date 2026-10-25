# reflectsSmallestColimits_of_reflectsColimits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f7abe141-1c6e-c543-0760-14ee440c809d",
  "kind": "lemma",
  "lexical_name": "reflectsSmallestColimits_of_reflectsColimits",
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
  "slug": "reflectssmallestcolimits-of-reflectscolimits--5e01bf99379739f5f174378e",
  "source": {
    "blob": "6c0beb151e414058a08295f272c97796b54790c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 957,
    "line": 953,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3eb676e9380ff9cbd7d1804e4d109cc3982f3db92646f56f533e516f9f134434.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e01bf99379739f5f174378ee326638a93aeed26b5e1f96d66df715d5993e3d5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3eb676e9380ff9cbd7d1804e4d109cc3982f3db92646f56f533e516f9f134434.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7abe141-1c6e-c543-0760-14ee440c809d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 953–957.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma reflectsSmallestColimits_of_reflectsColimits (F : C ⥤ D) [ReflectsColimitsOfSize.{v₃, u₃} F] :
    ReflectsColimitsOfSize.{0, 0} F :=
  reflectsColimitsOfSize_shrink F

@[deprecated "use reflectsSmallestColimits_of_reflectsColimits" (since := "2024-11-19")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3eb676e9380ff9cbd7d1804e4d109cc3982f3db92646f56f533e516f9f134434.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3eb676e9380ff9cbd7d1804e4d109cc3982f3db92646f56f533e516f9f134434.lean#L953).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c0beb151e414058a08295f272c97796b54790c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
