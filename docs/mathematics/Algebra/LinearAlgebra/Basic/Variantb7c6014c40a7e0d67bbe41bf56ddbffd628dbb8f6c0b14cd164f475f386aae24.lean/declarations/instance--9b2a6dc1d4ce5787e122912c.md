# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d128555176ac5e072b5e4f799d4a9cd1cc791f3c6cd95b04b8b205cfce3006a3",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--9b2a6dc1d4ce5787e122912c",
  "source": {
    "blob": "016defb205c4d7a34c795c98ba9d1ee093d7f233",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 311,
    "line": 301,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantb7c6014c40a7e0d67bbe41bf56ddbffd628dbb8f6c0b14cd164f475f386aae24.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9b2a6dc1d4ce5787e122912c3b751d307ad9295e512a8352f28366a04fd3f018",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantb7c6014c40a7e0d67bbe41bf56ddbffd628dbb8f6c0b14cd164f475f386aae24.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d128555176ac5e072b5e4f799d4a9cd1cc791f3c6cd95b04b8b205cfce3006a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 301–311.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : Semiring (MvPowerSeries σ R) where
  mul_one := MvPowerSeries.mul_one
  one_mul := MvPowerSeries.one_mul
  mul_assoc := MvPowerSeries.mul_assoc
  mul_zero := MvPowerSeries.mul_zero
  zero_mul := MvPowerSeries.zero_mul
  left_distrib := MvPowerSeries.mul_add
  right_distrib := MvPowerSeries.add_mul

end Semiring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantb7c6014c40a7e0d67bbe41bf56ddbffd628dbb8f6c0b14cd164f475f386aae24.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantb7c6014c40a7e0d67bbe41bf56ddbffd628dbb8f6c0b14cd164f475f386aae24.lean#L301).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `016defb205c4d7a34c795c98ba9d1ee093d7f233` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
