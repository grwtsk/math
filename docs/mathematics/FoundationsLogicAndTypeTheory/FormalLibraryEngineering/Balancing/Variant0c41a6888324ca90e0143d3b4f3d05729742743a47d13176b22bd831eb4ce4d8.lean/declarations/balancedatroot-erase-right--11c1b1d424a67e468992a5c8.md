# BalancedAtRoot.erase_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7d48ab4e-85f4-0734-72a1-dc33e76e5670",
  "kind": "theorem",
  "lexical_name": "BalancedAtRoot.erase_right",
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
  "slug": "balancedatroot-erase-right--11c1b1d424a67e468992a5c8",
  "source": {
    "blob": "8a9edfc50ebaaf22b84d3e1758a3e5989fc92b55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 416,
    "line": 413,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balancing/Variant0c41a6888324ca90e0143d3b4f3d05729742743a47d13176b22bd831eb4ce4d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11c1b1d424a67e468992a5c86245aa7f7c7e5275d1d8c87a9cca871c8770be0c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balancing/Variant0c41a6888324ca90e0143d3b4f3d05729742743a47d13176b22bd831eb4ce4d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d48ab4e-85f4-0734-72a1-dc33e76e5670`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 413–416.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem BalancedAtRoot.erase_right {l r r' : Nat} : BalancedAtRoot l r → r - 1 ≤ r' → r' ≤ r →
    BalanceLErasePrecond l r' :=
  fun h h₁ h₂ => h.symm.erase_left h₁ h₂

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balancing/Variant0c41a6888324ca90e0143d3b4f3d05729742743a47d13176b22bd831eb4ce4d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balancing/Variant0c41a6888324ca90e0143d3b4f3d05729742743a47d13176b22bd831eb4ce4d8.lean#L413).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a9edfc50ebaaf22b84d3e1758a3e5989fc92b55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
