# isIntegral_root

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8be5d60a-9ce4-e5d6-cfa2-b58ea294707e",
  "kind": "theorem",
  "lexical_name": "isIntegral_root",
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
  "slug": "isintegral-root--9f2567cfdb7ff40d6f8d8935",
  "source": {
    "blob": "056f4dd44affcce327af07d649dfb0e557e4abb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 542,
    "line": 527,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/IsAdjoinRoot/Variant29d40fc2feaf037dfc36b088293f1b655c9a1a05aa42d5c3f8762aca50f99f4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f2567cfdb7ff40d6f8d893500b6fa763d16e50238c8ac6abcfb6601ce24ab84",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/IsAdjoinRoot/Variant29d40fc2feaf037dfc36b088293f1b655c9a1a05aa42d5c3f8762aca50f99f4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8be5d60a-9ce4-e5d6-cfa2-b58ea294707e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 527–542.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isIntegral_root (h : IsAdjoinRootMonic S f) : IsIntegral R h.root :=
  ⟨f, h.Monic, h.aeval_root⟩

end IsAdjoinRootMonic

end Ring

section CommRing

variable {R : Type u} {S : Type v} [CommRing R] [CommRing S] [Algebra R S] {f : R[X]}

namespace IsAdjoinRoot

section lift

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/IsAdjoinRoot/Variant29d40fc2feaf037dfc36b088293f1b655c9a1a05aa42d5c3f8762aca50f99f4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/IsAdjoinRoot/Variant29d40fc2feaf037dfc36b088293f1b655c9a1a05aa42d5c3f8762aca50f99f4d.lean#L527).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `056f4dd44affcce327af07d649dfb0e557e4abb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
