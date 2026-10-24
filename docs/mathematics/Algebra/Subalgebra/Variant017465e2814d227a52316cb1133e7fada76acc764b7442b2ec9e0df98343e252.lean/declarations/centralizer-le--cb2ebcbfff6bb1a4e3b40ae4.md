# centralizer_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0217ab7f126a7bb3e7f7675a05b56734beb0562f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 314,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/01/017465e2814d227a52316cb1133e7fada76acc764b7442b2ec9e0df98343e252.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:438cc395-f7dd-b182-cde8-ebe44f75981e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cba1ae0c-b471-c22c-21d3-4e7b8679b5ea",
  "kind": "theorem",
  "lexical_name": "centralizer_le",
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
  "slug": "centralizer-le--cb2ebcbfff6bb1a4e3b40ae4",
  "source": {
    "blob": "0217ab7f126a7bb3e7f7675a05b56734beb0562f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 335,
    "line": 314,
    "path": "GRWTSK/Algebra/Subalgebra/Variant017465e2814d227a52316cb1133e7fada76acc764b7442b2ec9e0df98343e252.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb2ebcbfff6bb1a4e3b40ae4be8cfe552d15d6c810488b7744c99221ecfe6173",
  "verification": {
    "reference": "docs/verification/Algebra/Subalgebra/Variant017465e2814d227a52316cb1133e7fada76acc764b7442b2ec9e0df98343e252.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cba1ae0c-b471-c22c-21d3-4e7b8679b5ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 314–335.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centralizer_le (s t : Set A) (h : s ⊆ t) : centralizer R t ≤ centralizer R s :=
  Set.centralizer_subset (Set.union_subset_union h <| Set.preimage_mono h)
#align star_subalgebra.centralizer_le StarSubalgebra.centralizer_le

end Centralizer

end StarSubalgebra

/-! ### The star closure of a subalgebra -/


namespace Subalgebra

open Pointwise

variable {F R A B : Type*} [CommSemiring R] [StarRing R]

variable [Semiring A] [Algebra R A] [StarRing A] [StarModule R A]

variable [Semiring B] [Algebra R B] [StarRing B] [StarModule R B]

/-- The pointwise `star` of a subalgebra is a subalgebra. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Subalgebra/Variant017465e2814d227a52316cb1133e7fada76acc764b7442b2ec9e0df98343e252.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Subalgebra/Variant017465e2814d227a52316cb1133e7fada76acc764b7442b2ec9e0df98343e252.lean#L314).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0217ab7f126a7bb3e7f7675a05b56734beb0562f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
