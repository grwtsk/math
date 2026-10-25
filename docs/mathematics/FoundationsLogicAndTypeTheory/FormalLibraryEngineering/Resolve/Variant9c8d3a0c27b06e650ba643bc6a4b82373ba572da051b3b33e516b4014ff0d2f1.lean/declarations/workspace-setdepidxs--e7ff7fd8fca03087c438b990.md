# Workspace.setDepIdxs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6d0b3730048b782daa4421e17d874c282e4552f5137896479392578787bd3d82",
  "kind": "def",
  "lexical_name": "Workspace.setDepIdxs",
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
  "slug": "workspace-setdepidxs--e7ff7fd8fca03087c438b990",
  "source": {
    "blob": "65f8fed0afd70a439a4e611a1d9aa029e0f7f523",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 85,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variant9c8d3a0c27b06e650ba643bc6a4b82373ba572da051b3b33e516b4014ff0d2f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e7ff7fd8fca03087c438b990c193556b720481f6c9edc03358fa35bf4805d5cb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variant9c8d3a0c27b06e650ba643bc6a4b82373ba572da051b3b33e516b4014ff0d2f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6d0b3730048b782daa4421e17d874c282e4552f5137896479392578787bd3d82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Workspace.setDepIdxs
  (self : Workspace) (pkg : Package) (depIdxs : Array Nat)
  (h_wsIdx : pkg.wsIdx < self.packages.size) (h_depIdxs : ∀ i ∈ depIdxs, i < self.packages.size)
: Workspace :=
  let pkg := {pkg with depIdxs}
  {self with
    packages := self.packages.set pkg.wsIdx pkg h_wsIdx
    packageMap := self.packageMap.insert pkg.keyName pkg
    size_packages_pos := by simp [self.size_packages_pos]
    packages_wsIdx {i} := by
      intro hi
      rw [Array.size_set] at hi
      rw [self.packages.getElem_set]
      split
      · assumption
      · rw [self.packages_wsIdx]
    depIdxs_packages {p} p_mem {i} i_mem := by
      simp only [Array.size_set]
      cases Array.mem_or_eq_of_mem_set p_mem with
      | inl p_mem => exact self.depIdxs_packages p p_mem i i_mem
      | inr p_eq => apply h_depIdxs; simpa only [p_eq, pkg] using i_mem
  }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variant9c8d3a0c27b06e650ba643bc6a4b82373ba572da051b3b33e516b4014ff0d2f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variant9c8d3a0c27b06e650ba643bc6a4b82373ba572da051b3b33e516b4014ff0d2f1.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65f8fed0afd70a439a4e611a1d9aa029e0f7f523` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
