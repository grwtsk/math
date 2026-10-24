# isNilpotent_trace_of_isNilpotent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "054450baeb12d032c79cbdb6303fda39f89b5d33",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 535,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/65/6527000fdacd2ccfa49e3d4ca899d41dad1e9985c5696442e34f4ed0a41d0f02.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:33a5c5c4-4f36-c4da-352d-81c39c502938",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ef94a0e2-00b7-7827-d88e-ec5f1e7bcf24",
  "kind": "lemma",
  "lexical_name": "isNilpotent_trace_of_isNilpotent",
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
  "slug": "isnilpotent-trace-of-isnilpotent--71a22c1fc3f6a18b7b7dbada",
  "source": {
    "blob": "054450baeb12d032c79cbdb6303fda39f89b5d33",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 552,
    "line": 535,
    "path": "GRWTSK/Algebra/Basic/Variant6527000fdacd2ccfa49e3d4ca899d41dad1e9985c5696442e34f4ed0a41d0f02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71a22c1fc3f6a18b7b7dbada9af27001cbd3542d626e3652d55717881356c8dd",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant6527000fdacd2ccfa49e3d4ca899d41dad1e9985c5696442e34f4ed0a41d0f02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef94a0e2-00b7-7827-d88e-ec5f1e7bcf24`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 535–552.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isNilpotent_trace_of_isNilpotent {R S : Type*} [CommRing R] [CommRing S] [Algebra R S] {x : S}
    (hx : IsNilpotent x) : IsNilpotent (trace R S x) :=
  LinearMap.isNilpotent_trace_of_isNilpotent (hx.map (lmul R S))

end Algebra

end isNilpotent

section Basis

open Algebra

variable [FiniteDimensional K L] [Algebra.IsSeparable K L] [Finite ι] [DecidableEq ι]
  (b : Basis ι K L)

/--
The dual basis of a basis under the trace form in a finite separable extension.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant6527000fdacd2ccfa49e3d4ca899d41dad1e9985c5696442e34f4ed0a41d0f02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant6527000fdacd2ccfa49e3d4ca899d41dad1e9985c5696442e34f4ed0a41d0f02.lean#L535).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `054450baeb12d032c79cbdb6303fda39f89b5d33` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
