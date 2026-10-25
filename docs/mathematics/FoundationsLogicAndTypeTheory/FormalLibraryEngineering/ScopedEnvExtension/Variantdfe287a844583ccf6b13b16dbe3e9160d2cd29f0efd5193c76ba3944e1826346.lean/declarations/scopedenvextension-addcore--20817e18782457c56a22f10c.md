# ScopedEnvExtension.addCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9d421ece3744c6fb07db2e96a1d886aebfa2556d447c5fef27e894fc1ed40411",
  "kind": "def",
  "lexical_name": "ScopedEnvExtension.addCore",
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
  "slug": "scopedenvextension-addcore--20817e18782457c56a22f10c",
  "source": {
    "blob": "69a91dfc305bb6efa8d57cc09955c86ddb2ff6d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 195,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScopedEnvExtension/Variantdfe287a844583ccf6b13b16dbe3e9160d2cd29f0efd5193c76ba3944e1826346.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:20817e18782457c56a22f10c85ca57b6828cb2955fd6c600d5b7903f9a1804b1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScopedEnvExtension/Variantdfe287a844583ccf6b13b16dbe3e9160d2cd29f0efd5193c76ba3944e1826346.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9d421ece3744c6fb07db2e96a1d886aebfa2556d447c5fef27e894fc1ed40411`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ScopedEnvExtension.addCore (env : Environment) (ext : ScopedEnvExtension α β σ) (b : β) (kind : AttributeKind) (namespaceName : Name) : Environment :=
  match kind with
  | AttributeKind.global => ext.addEntry env b
  | AttributeKind.local  => ext.addLocalEntry env b
  | AttributeKind.scoped => ext.addScopedEntry env namespaceName b

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScopedEnvExtension/Variantdfe287a844583ccf6b13b16dbe3e9160d2cd29f0efd5193c76ba3944e1826346.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScopedEnvExtension/Variantdfe287a844583ccf6b13b16dbe3e9160d2cd29f0efd5193c76ba3944e1826346.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69a91dfc305bb6efa8d57cc09955c86ddb2ff6d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
