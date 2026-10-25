# RelationshipOccurrenceReification

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a3e7f1943ad42b7a75151c47d8659cf874f4971df894c110120b9adc614128fa",
  "kind": "structure",
  "lexical_name": "RelationshipOccurrenceReification",
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
  "slug": "relationshipoccurrencereification--93ed6bda7538fab3a32344c1",
  "source": {
    "blob": "6e7cfcb736bde72c3d663ed2dc7a8ba3e935b684",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 861,
    "line": 837,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReificationExactness/Variantb89c21488cc667e5a55f53ea7427b3f55832995678d10ff343b5dcc490d78d59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:93ed6bda7538fab3a32344c19959334dcdbfc0b815a29f8aac58ff2e947b82b4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReificationExactness/Variantb89c21488cc667e5a55f53ea7427b3f55832995678d10ff343b5dcc490d78d59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a3e7f1943ad42b7a75151c47d8659cf874f4971df894c110120b9adc614128fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 837–861.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RelationshipOccurrenceReification
    (Occurrence : Type u) (ProxyEntity : Type v)
    [Setoid Occurrence] [Setoid ProxyEntity]
    (Role : Type w) (RoleValue : Role → Type u) where
  reference : ReificationReference Occurrence ProxyEntity
  referenceExact : reference.ReferenceExact
  addressedOccurrence : Occurrence
  addressableProxy : ProxyEntity
  addressable : reference.Reifies addressableProxy addressedOccurrence
  occurrenceRole : (role : Role) → Occurrence → RoleValue role
  proxyRole : (role : Role) → ProxyEntity → RoleValue role
  proxyRoleExtensional : ∀ (role : Role) {left right},
    left ≈ right → proxyRole role left = proxyRole role right
  reconstructRole : ∀ (role : Role) (occurrence : Occurrence)
      (defined : occurrence ∈ reference.rho.dom),
    proxyRole role (reference.rho.eval occurrence defined) =
      occurrenceRole role occurrence

namespace RelationshipOccurrenceReification

variable {Occurrence : Type u} {ProxyEntity : Type v}
  [Setoid Occurrence] [Setoid ProxyEntity]
  {Role : Type w} {RoleValue : Role → Type u}

/-- Every role is recovered from the proxy of its relation occurrence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReificationExactness/Variantb89c21488cc667e5a55f53ea7427b3f55832995678d10ff343b5dcc490d78d59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReificationExactness/Variantb89c21488cc667e5a55f53ea7427b3f55832995678d10ff343b5dcc490d78d59.lean#L837).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e7cfcb736bde72c3d663ed2dc7a8ba3e935b684` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
