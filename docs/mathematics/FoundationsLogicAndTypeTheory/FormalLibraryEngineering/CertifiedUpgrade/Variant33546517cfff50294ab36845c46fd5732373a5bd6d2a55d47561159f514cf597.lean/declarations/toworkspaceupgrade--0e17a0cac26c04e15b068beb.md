# toWorkspaceUpgrade

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c890ffc2c0d2875b677cfc3c022e0b48c1f5a22115c51f2a572266ff1d24a8c6",
  "kind": "abbrev",
  "lexical_name": "toWorkspaceUpgrade",
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
  "slug": "toworkspaceupgrade--0e17a0cac26c04e15b068beb",
  "source": {
    "blob": "5c61330cd259760e9aeb42ddb343084f932e473f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 50,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CertifiedUpgrade/Variant33546517cfff50294ab36845c46fd5732373a5bd6d2a55d47561159f514cf597.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0e17a0cac26c04e15b068beb1df64a769c0bfd3089871dcea5773de09c848d01",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CertifiedUpgrade/Variant33546517cfff50294ab36845c46fd5732373a5bd6d2a55d47561159f514cf597.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c890ffc2c0d2875b677cfc3c022e0b48c1f5a22115c51f2a572266ff1d24a8c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev toWorkspaceUpgrade
    {G : DependencyGraph.{u}}
    {W₀ : WorkspaceDiagram.{u, v, w₀} G}
    {W₁ : WorkspaceDiagram.{u, v, w₁} G}
    (U : CertifiedWorkspaceUpgrade W₀ W₁) :
    WorkspaceUpgrade W₀ W₁ :=
  U.upgrade

end CertifiedWorkspaceUpgrade

/-! ## Root-export behavioral capabilities -/

/--
A project export explicitly carries old and new systems, and the systems
obtained from the recursively evaluated exports are related by a homomorphism.
The workspace upgrade already proves that the new evaluated export is the
public image of the old one (`Upgrade.evaluate_natural`).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CertifiedUpgrade/Variant33546517cfff50294ab36845c46fd5732373a5bd6d2a55d47561159f514cf597.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CertifiedUpgrade/Variant33546517cfff50294ab36845c46fd5732373a5bd6d2a55d47561159f514cf597.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c61330cd259760e9aeb42ddb343084f932e473f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
