# BitPerm.ofBijective_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dea0a68b-3135-811e-077a-566c885660b5",
  "kind": "theorem",
  "lexical_name": "BitPerm.ofBijective_apply",
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
  "slug": "bitperm-ofbijective-apply--05c7879f3ee9782c5b82d93d",
  "source": {
    "blob": "f2009fd9780bcdddc8e081e1794f17173b45d587",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 49,
    "path": "GRWTSK/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:05c7879f3ee9782c5b82d93dbc054353ca26d44e3b59477a16d0845d4f35184d",
  "verification": {
    "reference": "docs/verification/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dea0a68b-3135-811e-077a-566c885660b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem BitPerm.ofBijective_apply {n : Nat}
    (H : Bits n → Bits n)
    (hH : Function.Bijective H)
    (x : Bits n) :
    BitPerm.ofBijective H hH x = H x :=
  rfl

/-! ## An explicit XOR group

`Bits n` remains the project's plain function type.  The distinct wrapper
below supplies the group structure needed for translations without installing
global algebraic instances on `Bits n` itself.
-/

/-- Bit vectors regarded as the elementary abelian XOR group. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2009fd9780bcdddc8e081e1794f17173b45d587` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
