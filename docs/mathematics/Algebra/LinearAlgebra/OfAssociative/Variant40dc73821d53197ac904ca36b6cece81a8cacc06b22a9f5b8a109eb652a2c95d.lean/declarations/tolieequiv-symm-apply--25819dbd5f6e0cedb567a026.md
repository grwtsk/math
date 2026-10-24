# toLieEquiv_symm_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0ca691aa4b7341e6d71704c59787ca0f4cee8ba4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 416,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/40dc73821d53197ac904ca36b6cece81a8cacc06b22a9f5b8a109eb652a2c95d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4462d776-1549-0468-c989-c1ee19ea912b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:90264065-008c-9cfa-a858-5588b9ce9188",
  "kind": "theorem",
  "lexical_name": "toLieEquiv_symm_apply",
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
  "slug": "tolieequiv-symm-apply--25819dbd5f6e0cedb567a026",
  "source": {
    "blob": "0ca691aa4b7341e6d71704c59787ca0f4cee8ba4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 431,
    "line": 416,
    "path": "GRWTSK/Algebra/LinearAlgebra/OfAssociative/Variant40dc73821d53197ac904ca36b6cece81a8cacc06b22a9f5b8a109eb652a2c95d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25819dbd5f6e0cedb567a026a71e0b1c1fdc487e2b90a9b8e8308e48318ba674",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/OfAssociative/Variant40dc73821d53197ac904ca36b6cece81a8cacc06b22a9f5b8a109eb652a2c95d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90264065-008c-9cfa-a858-5588b9ce9188`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 416–431.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toLieEquiv_symm_apply (x : A₂) : e.toLieEquiv.symm x = e.symm x :=
  rfl

end AlgEquiv

namespace LieAlgebra

variable {R L L' : Type*} [CommRing R]
  [LieRing L] [LieAlgebra R L]
  [LieRing L'] [LieAlgebra R L']

open LieEquiv

/-- Given an equivalence `e` of Lie algebras from `L` to `L'`, and an element `x : L`, the conjugate
of the endomorphism `ad(x)` of `L` by `e` is the endomorphism `ad(e x)` of `L'`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/OfAssociative/Variant40dc73821d53197ac904ca36b6cece81a8cacc06b22a9f5b8a109eb652a2c95d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/OfAssociative/Variant40dc73821d53197ac904ca36b6cece81a8cacc06b22a9f5b8a109eb652a2c95d.lean#L416).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ca691aa4b7341e6d71704c59787ca0f4cee8ba4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
