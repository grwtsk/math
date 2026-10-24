# Congruent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3f0c4fd4f9e70124c9672ce00397ccd8362602de2daf30529f2d08c0e977fafe",
  "kind": "def",
  "lexical_name": "Congruent",
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
  "slug": "congruent--6b94cee8147e1c06beb4647c",
  "source": {
    "blob": "fa01a3b591b737686a929bb0a5952cefa84a146e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 37,
    "path": "GRWTSK/Topology/MetricTopology/Congruence/Variant5a6793f9b379d025deb71ce489fc5b2e1917726b840ab2df2618a13315d3d36a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6b94cee8147e1c06beb4647c565530d19527feaeaed7b8d1512d127af2899e20",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Congruence/Variant5a6793f9b379d025deb71ce489fc5b2e1917726b840ab2df2618a13315d3d36a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3f0c4fd4f9e70124c9672ce00397ccd8362602de2daf30529f2d08c0e977fafe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Congruent (v₁ : ι → P₁) (v₂ : ι → P₂) : Prop :=
  ∀ i₁ i₂, edist (v₁ i₁) (v₁ i₂) = edist (v₂ i₁) (v₂ i₂)

@[inherit_doc]
scoped[Congruent] infixl:25 " ≅ " => Congruent

/-- Congruence holds if and only if all extended distances are the same. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Congruence/Variant5a6793f9b379d025deb71ce489fc5b2e1917726b840ab2df2618a13315d3d36a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Congruence/Variant5a6793f9b379d025deb71ce489fc5b2e1917726b840ab2df2618a13315d3d36a.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa01a3b591b737686a929bb0a5952cefa84a146e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
