# Workspace.updateDepPkgs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e50ba13cc34684537b98e9d371607a7dc7b48e253c4b051e73aae1521e8019ef",
  "kind": "def",
  "lexical_name": "Workspace.updateDepPkgs",
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
  "slug": "workspace-updatedeppkgs--8826d9fe5fc8ed0d4584090b",
  "source": {
    "blob": "12bc63da52e494f596009abb873fad86cfda7530",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 104,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variantdd1bc95fc3b3a4b9cb12d01951ad9c63fc5343f41b81b408282f108a824bc2c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8826d9fe5fc8ed0d4584090b79eceaacf6ccb098d52e8abb38eca353a01470d4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variantdd1bc95fc3b3a4b9cb12d01951ad9c63fc5343f41b81b408282f108a824bc2c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e50ba13cc34684537b98e9d371607a7dc7b48e253c4b051e73aae1521e8019ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Workspace.updateDepPkgs (self : Workspace) : Workspace :=
  let s : {pkgs : Vector Package self.packages.size //
    ∀ i, (h : i < pkgs.size) → pkgs[i].wsIdx = i ∧ ∀ j ∈ pkgs[i].depIdxs, j < pkgs.size} :=
    ⟨self.packages.toVector, fun i i_lt => ⟨self.packages_wsIdx i_lt,
      self.depIdxs_packages self.packages[i] (Array.getElem_mem ..)⟩⟩
  -- Set `depPkgs` in reverse order (starting from a leaf package).
  -- Since the workspace's packages are topologically sorted, no recursion is necessary.
  let ⟨pkgs, h⟩ := self.packages.size.foldRev (init := s) fun i i_lt ⟨pkgs, h⟩ =>
    let pkg := pkgs[i]'i_lt
    let depPkgs := pkg.depIdxs.attach.map fun ⟨j, j_mem⟩ =>
      pkgs[j]'(h i i_lt |>.2 j j_mem)
    let pkgs' := pkgs.set i {pkg with depPkgs}
    have h : ∀ j, (h : j < pkgs'.size) →
        pkgs'[j].wsIdx = j ∧ ∀ k ∈ pkgs'[j].depIdxs, k < pkgs'.size := by
      intro j j_lt
      simp only [Vector.getElem_set, Vector.size, pkgs', pkg]
      split
      · next i_eq => simpa [i_eq] using h j j_lt
      · exact h j j_lt
    ⟨pkgs', h⟩
  {self with
    packages := pkgs.toArray
    packageMap := pkgs.foldl (fun map pkg => map.insert pkg.keyName pkg) {}
    size_packages_pos := by simp [self.size_packages_pos]
    packages_wsIdx {i} i_lt := h i (pkgs.size_toArray.subst i_lt) |>.1
    depIdxs_packages p p_mem := by
      have ⟨i, i_lt, p_eq⟩ := Array.mem_iff_getElem.mp p_mem
      simpa [← p_eq] using h i (pkgs.size_toArray.subst i_lt) |>.2
  }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variantdd1bc95fc3b3a4b9cb12d01951ad9c63fc5343f41b81b408282f108a824bc2c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variantdd1bc95fc3b3a4b9cb12d01951ad9c63fc5343f41b81b408282f108a824bc2c1.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12bc63da52e494f596009abb873fad86cfda7530` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
