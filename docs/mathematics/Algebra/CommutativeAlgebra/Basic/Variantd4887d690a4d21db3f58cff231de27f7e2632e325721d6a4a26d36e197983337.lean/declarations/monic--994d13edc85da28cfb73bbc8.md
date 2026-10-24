# monic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ab1c2198597faedcf09dbcc347ea8ed3e3c4abb1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 50,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d4887d690a4d21db3f58cff231de27f7e2632e325721d6a4a26d36e197983337.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1bf6183b-877a-d633-bf30-553c1820c277",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0dacc11a-43ec-1e16-7247-7be1a3ff86aa",
  "kind": "theorem",
  "lexical_name": "monic",
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
  "slug": "monic--994d13edc85da28cfb73bbc8",
  "source": {
    "blob": "ab1c2198597faedcf09dbcc347ea8ed3e3c4abb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 50,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantd4887d690a4d21db3f58cff231de27f7e2632e325721d6a4a26d36e197983337.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:994d13edc85da28cfb73bbc89176aebb699789fc23ac31de3c238bc44cce07f7",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variantd4887d690a4d21db3f58cff231de27f7e2632e325721d6a4a26d36e197983337.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0dacc11a-43ec-1e16-7247-7be1a3ff86aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem monic (hx : IsIntegral A x) : Monic (minpoly A x) := by
  delta minpoly
  rw [dif_pos hx]
  exact (degree_lt_wf.min_mem _ hx).1

/-- A minimal polynomial is nonzero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variantd4887d690a4d21db3f58cff231de27f7e2632e325721d6a4a26d36e197983337.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantd4887d690a4d21db3f58cff231de27f7e2632e325721d6a4a26d36e197983337.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab1c2198597faedcf09dbcc347ea8ed3e3c4abb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
