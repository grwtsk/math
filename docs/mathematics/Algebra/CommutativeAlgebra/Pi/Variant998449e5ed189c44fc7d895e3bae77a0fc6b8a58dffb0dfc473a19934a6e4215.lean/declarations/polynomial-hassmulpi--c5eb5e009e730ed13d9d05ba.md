# Polynomial.hasSMulPi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ac5793fe7cedf40b956559b1d9654cc5a2bb266380db7fc705526d6897e4d1d8",
  "kind": "def",
  "lexical_name": "Polynomial.hasSMulPi",
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
  "slug": "polynomial-hassmulpi--c5eb5e009e730ed13d9d05ba",
  "source": {
    "blob": "8c0165dd378b87f53e8126e5d115d5bbf6ad47d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 33,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Pi/Variant998449e5ed189c44fc7d895e3bae77a0fc6b8a58dffb0dfc473a19934a6e4215.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c5eb5e009e730ed13d9d05baacd0796536bc4d54c9837c5486e1adccccc2b061",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Pi/Variant998449e5ed189c44fc7d895e3bae77a0fc6b8a58dffb0dfc473a19934a6e4215.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ac5793fe7cedf40b956559b1d9654cc5a2bb266380db7fc705526d6897e4d1d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Polynomial.hasSMulPi [Semiring R] [SMul R S] : SMul R[X] (R → S) :=
  ⟨fun p f x => eval x p • f x⟩

/-- This is not an instance as it forms a diamond with `Pi.instSMul`.

See the `instance_diamonds` test for details. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Pi/Variant998449e5ed189c44fc7d895e3bae77a0fc6b8a58dffb0dfc473a19934a6e4215.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Pi/Variant998449e5ed189c44fc7d895e3bae77a0fc6b8a58dffb0dfc473a19934a6e4215.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c0165dd378b87f53e8126e5d115d5bbf6ad47d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
