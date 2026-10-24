# ofCertified

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:794810135c1448493d871d1ee0cac272ad5d91b2d9134f75c06e3a1e70dbd82f",
  "kind": "def",
  "lexical_name": "ofCertified",
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
  "slug": "ofcertified--219c3e26e4dc7e14ae2c61f6",
  "source": {
    "blob": "adec12146ff8387d3d1e8458b26ba8d615909ece",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 54,
    "path": "GRWTSK/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant3fe87eee19f8fad0/CertifiedPermutationProjection.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:219c3e26e4dc7e14ae2c61f6d62655d46c65f7979b42f98608c0dfde9ebef1ac",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant3fe87eee19f8fad0/CertifiedPermutationProjection.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:794810135c1448493d871d1ee0cac272ad5d91b2d9134f75c06e3a1e70dbd82f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofCertified
    (width : Nat) (encode : X ≃ Fin width)
    (source : CertifiedInvolution X) : BitMatrix.Algebra.InvolutionProjection X where
  width := width
  encode := encode
  source := source
  actionMatrix i j := decide (encode (source.act (encode.symm j)) = i)
  action_spec i j := by simp
  f2Matrix i j := if decide (encode (source.act (encode.symm j)) = i) then 1 else 0
  f2_spec _ _ := rfl

variable (P : BitMatrix.Algebra.InvolutionProjection X)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant3fe87eee19f8fad0/CertifiedPermutationProjection.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant3fe87eee19f8fad0/CertifiedPermutationProjection.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `adec12146ff8387d3d1e8458b26ba8d615909ece` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
