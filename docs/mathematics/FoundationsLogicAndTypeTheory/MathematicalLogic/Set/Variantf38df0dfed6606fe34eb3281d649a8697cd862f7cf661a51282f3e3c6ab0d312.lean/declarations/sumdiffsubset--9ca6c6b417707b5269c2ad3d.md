# sumDiffSubset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0716f2df2f603dd596c2147075924ddbbf2f323a5ce97bd5b45add0d17158bf6",
  "kind": "def",
  "lexical_name": "sumDiffSubset",
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
  "slug": "sumdiffsubset--9ca6c6b417707b5269c2ad3d",
  "source": {
    "blob": "e38f9c799817239ac2260ce64982195b4b476715",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 356,
    "line": 349,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variantf38df0dfed6606fe34eb3281d649a8697cd862f7cf661a51282f3e3c6ab0d312.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9ca6c6b417707b5269c2ad3df1d2e8e3901587c07fc36982008d006a72f937e4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variantf38df0dfed6606fe34eb3281d649a8697cd862f7cf661a51282f3e3c6ab0d312.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0716f2df2f603dd596c2147075924ddbbf2f323a5ce97bd5b45add0d17158bf6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 349–356.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def sumDiffSubset {α} {s t : Set α} (h : s ⊆ t) [DecidablePred (· ∈ s)] :
    s ⊕ (t \ s : Set α) ≃ t :=
  calc
    s ⊕ (t \ s : Set α) ≃ (s ∪ t \ s : Set α) :=
      (Equiv.Set.union disjoint_sdiff_self_right).symm
    _ ≃ t := Set.equivOfEq (by simp [union_sdiff_self, union_eq_self_of_subset_left h])

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variantf38df0dfed6606fe34eb3281d649a8697cd862f7cf661a51282f3e3c6ab0d312.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variantf38df0dfed6606fe34eb3281d649a8697cd862f7cf661a51282f3e3c6ab0d312.lean#L349).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e38f9c799817239ac2260ce64982195b4b476715` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
