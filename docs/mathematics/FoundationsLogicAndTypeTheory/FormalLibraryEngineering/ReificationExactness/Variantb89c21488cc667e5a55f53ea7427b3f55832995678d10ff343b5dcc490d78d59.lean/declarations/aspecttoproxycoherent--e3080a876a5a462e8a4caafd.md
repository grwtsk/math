# AspectToProxyCoherent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b1c1e4ce7bdd31c4eabb5fc1a8666e38af25d00f46b080ced0c74a209dff6539",
  "kind": "def",
  "lexical_name": "AspectToProxyCoherent",
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
  "slug": "aspecttoproxycoherent--e3080a876a5a462e8a4caafd",
  "source": {
    "blob": "6e7cfcb736bde72c3d663ed2dc7a8ba3e935b684",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 258,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReificationExactness/Variantb89c21488cc667e5a55f53ea7427b3f55832995678d10ff343b5dcc490d78d59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e3080a876a5a462e8a4caafd4530d0be974e10e1e34e2e9658e7e4c7afee0f5e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReificationExactness/Variantb89c21488cc667e5a55f53ea7427b3f55832995678d10ff343b5dcc490d78d59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b1c1e4ce7bdd31c4eabb5fc1a8666e38af25d00f46b080ced0c74a209dff6539`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def AspectToProxyCoherent
    {Aspect : Type u} {Proxy : Type v}
    [Setoid Aspect] [Setoid Proxy]
    {AspectLabel : Type w} {ProxyLabel : Type w}
    (reference : ReificationReference Aspect Proxy)
    (referenceExact : reference.ReferenceExact)
    (aspectSystem : QuotientTransitionSystem Aspect AspectLabel)
    (proxySystem : QuotientTransitionSystem Proxy ProxyLabel)
    (labels : AdmittedLabelTranslation AspectLabel ProxyLabel) : Prop :=
  ∀ {source target} (label : AspectLabel), label ∈ labels.admitted →
    aspectSystem.step source label target →
      proxySystem.step
        (reference.quotientReify referenceExact source)
        (labels.translate label)
        (reference.quotientReify referenceExact target)

/--
Every admitted transition from a designated proxy has an underlying aspect
transition and ends at the designated proxy for the resulting aspect.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReificationExactness/Variantb89c21488cc667e5a55f53ea7427b3f55832995678d10ff343b5dcc490d78d59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReificationExactness/Variantb89c21488cc667e5a55f53ea7427b3f55832995678d10ff343b5dcc490d78d59.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e7cfcb736bde72c3d663ed2dc7a8ba3e935b684` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
