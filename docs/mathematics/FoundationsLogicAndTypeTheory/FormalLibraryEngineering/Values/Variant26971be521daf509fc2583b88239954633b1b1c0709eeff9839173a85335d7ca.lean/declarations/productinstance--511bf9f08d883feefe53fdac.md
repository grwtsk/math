# ProductInstance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b8e62ec892d77b3523e198ba070eee0a985bb7f45e6c1c690277234ff566a977",
  "kind": "structure",
  "lexical_name": "ProductInstance",
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
  "slug": "productinstance--511bf9f08d883feefe53fdac",
  "source": {
    "blob": "c3a6d2fcde8711ed324cba0eed98a82f968b9ab2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 774,
    "line": 752,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Values/Variant26971be521daf509fc2583b88239954633b1b1c0709eeff9839173a85335d7ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:511bf9f08d883feefe53fdac98dad6bf6845edc4319b676f9c377af09ef72182",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Values/Variant26971be521daf509fc2583b88239954633b1b1c0709eeff9839173a85335d7ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b8e62ec892d77b3523e198ba070eee0a985bb7f45e6c1c690277234ff566a977`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 752–774.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ProductInstance where
  /-- The source context in which the product domain is typed. -/
  context : List (Expr S)
  /-- The source expression forming the dependent product domain. -/
  domain : Expr S
  /-- The source expression forming the product body under the extended context. -/
  body : Expr S
  /-- The sort assigned to the source product domain. -/
  domainSort : S
  /-- The sort assigned to the source product body. -/
  bodySort : S
  /-- The result sort selected by the specification product rule. -/
  resultSort : S
  domainTyping : HasType P context domain (.sort domainSort)
  bodyTyping : HasType P (domain :: context) body (.sort bodySort)
  rule : P.rule domainSort bodySort resultSort
  /-- The typed substitution and semantic payloads for the source product context. -/
  environment : Environment (hw := hw) Ω C hno context

namespace ProductInstance
variable {Ω C hno} (t : ProductInstance (hw := hw) Ω C hno)
open Classical in
/-- Substitute the environment images into the source domain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Values/Variant26971be521daf509fc2583b88239954633b1b1c0709eeff9839173a85335d7ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Values/Variant26971be521daf509fc2583b88239954633b1b1c0709eeff9839173a85335d7ca.lean#L752).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3a6d2fcde8711ed324cba0eed98a82f968b9ab2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
