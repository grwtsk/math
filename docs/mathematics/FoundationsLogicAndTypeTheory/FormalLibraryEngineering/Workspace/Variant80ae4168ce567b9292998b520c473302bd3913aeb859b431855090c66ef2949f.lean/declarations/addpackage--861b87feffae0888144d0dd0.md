# addPackage'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3eb54b680867cf7e9f8b7f874e8247c784e11a585c5907dbf9b2aee193dc5226",
  "kind": "def",
  "lexical_name": "addPackage'",
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
  "slug": "addpackage--861b87feffae0888144d0dd0",
  "source": {
    "blob": "92df575a8aa0cd7ea4a85b0831986359d40a735f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 216,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Workspace/Variant80ae4168ce567b9292998b520c473302bd3913aeb859b431855090c66ef2949f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:861b87feffae0888144d0dd095150fd87a283be6d8366fa7762f13e1fad8b216",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Workspace/Variant80ae4168ce567b9292998b520c473302bd3913aeb859b431855090c66ef2949f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3eb54b680867cf7e9f8b7f874e8247c784e11a585c5907dbf9b2aee193dc5226`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[inline] public def addPackage'
  (pkg : Package) (self : Workspace)
  (h_wsIdx : pkg.wsIdx = self.packages.size) (h_depIdxs : pkg.depIdxs = #[])
: Workspace := {self with
  packages := self.packages.push pkg
  packageMap := self.packageMap.insert pkg.keyName pkg
  size_packages_pos := by simp
  packages_wsIdx {i} i_lt := by
    cases Nat.lt_add_one_iff_lt_or_eq.mp <| Array.size_push .. ▸ i_lt with
    | inl i_lt => simpa [Array.getElem_push_lt i_lt] using self.packages_wsIdx i_lt
    | inr i_eq => simpa [i_eq] using h_wsIdx
  depIdxs_packages {p} p_mem {i} i_mem := by
    simp only [Array.size_push]
    cases Array.mem_push.mp p_mem with
    | inl p_mem => exact Nat.lt_add_one_of_lt <| self.depIdxs_packages p p_mem i i_mem
    | inr p_eq => simp [p_eq, h_depIdxs] at i_mem
}

/-- **For internal use only.** -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Workspace/Variant80ae4168ce567b9292998b520c473302bd3913aeb859b431855090c66ef2949f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Workspace/Variant80ae4168ce567b9292998b520c473302bd3913aeb859b431855090c66ef2949f.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92df575a8aa0cd7ea4a85b0831986359d40a735f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
