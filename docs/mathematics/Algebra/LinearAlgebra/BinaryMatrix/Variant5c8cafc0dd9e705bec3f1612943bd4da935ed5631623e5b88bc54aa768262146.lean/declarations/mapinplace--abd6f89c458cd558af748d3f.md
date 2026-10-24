# mapInPlace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fa7b93e6f14a78a8b788f2c6385b932aeef87a664fb7987345d5b003b06bece1",
  "kind": "def",
  "lexical_name": "mapInPlace",
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
  "slug": "mapinplace--abd6f89c458cd558af748d3f",
  "source": {
    "blob": "14f7a5c588fc075abff3274bbbb006c5020563ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 268,
    "path": "GRWTSK/Algebra/LinearAlgebra/BinaryMatrix/Variant5c8cafc0dd9e705bec3f1612943bd4da935ed5631623e5b88bc54aa768262146.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:abd6f89c458cd558af748d3f3c4fa0e7ce27683762f3a2857eebe0184a35b687",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BinaryMatrix/Variant5c8cafc0dd9e705bec3f1612943bd4da935ed5631623e5b88bc54aa768262146.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fa7b93e6f14a78a8b788f2c6385b932aeef87a664fb7987345d5b003b06bece1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapInPlace
    (A : BinMatMut m n)
    (f : Bool → Bool) :
    BinMatMut m n :=
  ⟨A.data.mapFinIdx (fun _ a _ => f a), by
    simpa using A.size_eq⟩

/--
Apply a binary operation pointwise.

The output reuses `A.data` when it is uniquely owned. The proof passed while
reading `B.data` is derived statically from both matrices' dimension invariants.
-/
@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BinaryMatrix/Variant5c8cafc0dd9e705bec3f1612943bd4da935ed5631623e5b88bc54aa768262146.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BinaryMatrix/Variant5c8cafc0dd9e705bec3f1612943bd4da935ed5631623e5b88bc54aa768262146.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14f7a5c588fc075abff3274bbbb006c5020563ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
