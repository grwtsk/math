# MultilinearMap.curryMid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8a81da8569df55234ab2eafbd34b2dab5cfe63416b28f87020d9657a43c88cde",
  "kind": "def",
  "lexical_name": "MultilinearMap.curryMid",
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
  "slug": "multilinearmap-currymid--7059ceed42ce70d1d5ac11a5",
  "source": {
    "blob": "90a49ef04a3004b7dc1f3b5f06c336cd4df90def",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 199,
    "path": "GRWTSK/Algebra/LinearAlgebra/Curry/Variant814afbb0d1782acc9fbcba73154700cee233528cc0cb57f87f35704a66ef264e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7059ceed42ce70d1d5ac11a546024e4bb9478936aad8676e9f7508b2d6ff3aad",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Curry/Variant814afbb0d1782acc9fbcba73154700cee233528cc0cb57f87f35704a66ef264e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8a81da8569df55234ab2eafbd34b2dab5cfe63416b28f87020d9657a43c88cde`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def MultilinearMap.curryMid (p : Fin (n + 1)) (f : MultilinearMap R M M₂) :
    M p →ₗ[R] MultilinearMap R (fun i ↦ M (p.succAbove i)) M₂ where
  toFun x := .mk' fun m ↦ f (p.insertNth x m)
  map_add' x y := by ext; simp [map_insertNth_add]
  map_smul' c x := by ext; simp [map_insertNth_smul]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Curry/Variant814afbb0d1782acc9fbcba73154700cee233528cc0cb57f87f35704a66ef264e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Curry/Variant814afbb0d1782acc9fbcba73154700cee233528cc0cb57f87f35704a66ef264e.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90a49ef04a3004b7dc1f3b5f06c336cd4df90def` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
