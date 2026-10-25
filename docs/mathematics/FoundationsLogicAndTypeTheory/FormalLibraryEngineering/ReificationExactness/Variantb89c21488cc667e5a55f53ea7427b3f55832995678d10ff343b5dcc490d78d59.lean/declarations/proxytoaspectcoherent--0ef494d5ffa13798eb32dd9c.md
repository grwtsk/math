# ProxyToAspectCoherent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8183a4a84a8f60048967f374fab723f87fa11725b45207b4e073550b72e8e8d6",
  "kind": "def",
  "lexical_name": "ProxyToAspectCoherent",
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
  "slug": "proxytoaspectcoherent--0ef494d5ffa13798eb32dd9c",
  "source": {
    "blob": "6e7cfcb736bde72c3d663ed2dc7a8ba3e935b684",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 307,
    "line": 278,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReificationExactness/Variantb89c21488cc667e5a55f53ea7427b3f55832995678d10ff343b5dcc490d78d59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0ef494d5ffa13798eb32dd9ca385c4319d4cbb60e86f92fa2299ce42a948bca2",
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

Occurrence: `declaration:8183a4a84a8f60048967f374fab723f87fa11725b45207b4e073550b72e8e8d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 278–307.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ProxyToAspectCoherent
    {Aspect : Type u} {Proxy : Type v}
    [Setoid Aspect] [Setoid Proxy]
    {AspectLabel : Type w} {ProxyLabel : Type w}
    (reference : ReificationReference Aspect Proxy)
    (referenceExact : reference.ReferenceExact)
    (aspectSystem : QuotientTransitionSystem Aspect AspectLabel)
    (proxySystem : QuotientTransitionSystem Proxy ProxyLabel)
    (labels : AdmittedLabelTranslation AspectLabel ProxyLabel) : Prop :=
  ∀ (source : Quotient (inferInstance : Setoid Aspect))
      (label : AspectLabel)
      (proxyTarget : Quotient (inferInstance : Setoid Proxy)),
    label ∈ labels.admitted →
    proxySystem.step
        (reference.quotientReify referenceExact source)
        (labels.translate label) proxyTarget →
      ∃ authority : ProofBearingProxyTransitionAuthority
          (Quotient (inferInstance : Setoid Proxy)) ProxyLabel,
        authority.source = reference.quotientReify referenceExact source ∧
          authority.label = labels.translate label ∧
          authority.target = proxyTarget ∧
          ∃ aspectTarget,
            aspectSystem.step source label aspectTarget ∧
              proxyTarget = reference.quotientReify referenceExact aspectTarget

/--
The shared observer-visible boundary for live reification.  It identifies the
system state, translated inputs/outputs, and forward feedback law without
selecting an intervention authority mode.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReificationExactness/Variantb89c21488cc667e5a55f53ea7427b3f55832995678d10ff343b5dcc490d78d59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReificationExactness/Variantb89c21488cc667e5a55f53ea7427b3f55832995678d10ff343b5dcc490d78d59.lean#L278).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e7cfcb736bde72c3d663ed2dc7a8ba3e935b684` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
