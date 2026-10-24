# algEquivGaloisField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0dad8ca27116ebbfdc71750278486e4dfef9fb07ab47d21c7cbe23cdafbfd826",
  "kind": "def",
  "lexical_name": "algEquivGaloisField",
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
  "slug": "algequivgaloisfield--f2b1472b5eea8c0ede3f9257",
  "source": {
    "blob": "d6c9ce46b6fcf3f72c117e0cc1b30c3ffa3557a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 194,
    "path": "GRWTSK/Algebra/GaloisField/Variant5394db6d9ec18cef120dec784279cfb2c7274076d5b2827083ab8ce5be3daf86.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f2b1472b5eea8c0ede3f9257f70e69111df29850c9cb93f999b1f13e2c98a322",
  "verification": {
    "reference": "docs/verification/Algebra/GaloisField/Variant5394db6d9ec18cef120dec784279cfb2c7274076d5b2827083ab8ce5be3daf86.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0dad8ca27116ebbfdc71750278486e4dfef9fb07ab47d21c7cbe23cdafbfd826`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def algEquivGaloisField (h : Fintype.card K = p ^ n) : K ≃ₐ[ZMod p] GaloisField p n :=
  haveI := isSplittingField_of_card_eq _ _ h
  IsSplittingField.algEquiv _ _
#align galois_field.alg_equiv_galois_field GaloisField.algEquivGaloisField

end GaloisField

namespace FiniteField

variable {K : Type*} [Field K] [Fintype K] {K' : Type*} [Field K'] [Fintype K']

/-- Uniqueness of finite fields:
  Any two finite fields of the same cardinality are (possibly non canonically) isomorphic-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GaloisField/Variant5394db6d9ec18cef120dec784279cfb2c7274076d5b2827083ab8ce5be3daf86.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GaloisField/Variant5394db6d9ec18cef120dec784279cfb2c7274076d5b2827083ab8ce5be3daf86.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6c9ce46b6fcf3f72c117e0cc1b30c3ffa3557a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
