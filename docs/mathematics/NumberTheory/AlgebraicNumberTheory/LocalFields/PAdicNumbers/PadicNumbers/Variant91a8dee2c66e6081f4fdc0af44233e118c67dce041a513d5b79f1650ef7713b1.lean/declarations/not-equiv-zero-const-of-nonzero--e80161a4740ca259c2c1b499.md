# not_equiv_zero_const_of_nonzero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:55f5d6b1-b0ec-bf3b-5726-3d049920426f",
  "kind": "theorem",
  "lexical_name": "not_equiv_zero_const_of_nonzero",
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
  "slug": "not-equiv-zero-const-of-nonzero--e80161a4740ca259c2c1b499",
  "source": {
    "blob": "0a086f67d63d1db413964d538a37349956f65b76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 261,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variant91a8dee2c66e6081f4fdc0af44233e118c67dce041a513d5b79f1650ef7713b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e80161a4740ca259c2c1b499f1daf3f10451792b36f39883c384a65b48635211",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variant91a8dee2c66e6081f4fdc0af44233e118c67dce041a513d5b79f1650ef7713b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55f5d6b1-b0ec-bf3b-5726-3d049920426f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 261–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_equiv_zero_const_of_nonzero {q : ℚ} (hq : q ≠ 0) : ¬const (padicNorm p) q ≈ 0 :=
  fun h : LimZero (const (padicNorm p) q - 0) ↦
    not_limZero_const_of_nonzero (p := p) hq <| by simpa using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variant91a8dee2c66e6081f4fdc0af44233e118c67dce041a513d5b79f1650ef7713b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variant91a8dee2c66e6081f4fdc0af44233e118c67dce041a513d5b79f1650ef7713b1.lean#L261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a086f67d63d1db413964d538a37349956f65b76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
