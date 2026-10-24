# fill

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ee6553fe892e2ccd6f5ac95a4e8993855a4d5305a0d9ea6a100e3127307e4e9a",
  "kind": "def",
  "lexical_name": "fill",
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
  "slug": "fill--caa92100fa82ff586eaeb7d4",
  "source": {
    "blob": "14f7a5c588fc075abff3274bbbb006c5020563ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 233,
    "path": "GRWTSK/Algebra/LinearAlgebra/BinaryMatrix/Variant5c8cafc0dd9e705bec3f1612943bd4da935ed5631623e5b88bc54aa768262146.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:caa92100fa82ff586eaeb7d48e156e13fc706fc5825eb316c3a40a35085d9a19",
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

Occurrence: `declaration:ee6553fe892e2ccd6f5ac95a4e8993855a4d5305a0d9ea6a100e3127307e4e9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fill
    (m n : Nat)
    (value : Bool) :
    BinMatMut m n :=
  ⟨Array.replicate (m * n) value, by simp⟩

/--
Read a flat implementation index.

No runtime bounds check is required by the logical interface: `k` carries its
bound, and `size_eq` transports that bound to the underlying array.
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BinaryMatrix/Variant5c8cafc0dd9e705bec3f1612943bd4da935ed5631623e5b88bc54aa768262146.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14f7a5c588fc075abff3274bbbb006c5020563ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
