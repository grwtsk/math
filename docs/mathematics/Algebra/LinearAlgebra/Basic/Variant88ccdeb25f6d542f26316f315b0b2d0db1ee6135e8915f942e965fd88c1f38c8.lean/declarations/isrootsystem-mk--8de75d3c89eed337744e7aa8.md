# isRootSystem_mk''

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c208d2db-84e4-f5dd-c636-b546ae12a405",
  "kind": "lemma",
  "lexical_name": "isRootSystem_mk''",
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
  "slug": "isrootsystem-mk--8de75d3c89eed337744e7aa8",
  "source": {
    "blob": "71fe93c2c46c264676e7ab0abff838e78d6265f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 282,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant88ccdeb25f6d542f26316f315b0b2d0db1ee6135e8915f942e965fd88c1f38c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8de75d3c89eed337744e7aa881b2c2e4d867d05f9ec2e087288a3cbec6b53138",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant88ccdeb25f6d542f26316f315b0b2d0db1ee6135e8915f942e965fd88c1f38c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c208d2db-84e4-f5dd-c636-b546ae12a405`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 282–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isRootSystem_mk'' (h_int : ∀ i j, ∃ z : ℤ, z = p (root i) (coroot j)) :
    (mk'' p root coroot hp hs hsp).IsRootSystem where
  span_root_eq_top := hsp
  span_coroot_eq_top :=
    have _i : (mk'' p root coroot hp hs hsp).IsCrystallographic := ⟨h_int⟩
    have _i : Fintype ι := Fintype.ofFinite ι
    (rootSpan_eq_top_iff _).mp hsp

end

end RootPairing
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant88ccdeb25f6d542f26316f315b0b2d0db1ee6135e8915f942e965fd88c1f38c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant88ccdeb25f6d542f26316f315b0b2d0db1ee6135e8915f942e965fd88c1f38c8.lean#L282).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71fe93c2c46c264676e7ab0abff838e78d6265f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
