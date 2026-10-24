# algEquivGaloisField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f6b6514c0e9e67e42a30e67cfd01555a7d64d0e37365abde34fb3a5f2a1c631d",
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
  "slug": "algequivgaloisfield--ea6924df3bb9983806a391c4",
  "source": {
    "blob": "68033f3da6a40fd4478032c5b67a5700e34749f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 224,
    "path": "GRWTSK/Algebra/GaloisField/Variant5211b2099ff6468503281ab60361388caf8ffdea5dbaf3b11110a72e5cc99f88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ea6924df3bb9983806a391c48147f89722bba313ab3c2a30e9715f24c0b0ceb8",
  "verification": {
    "reference": "docs/verification/Algebra/GaloisField/Variant5211b2099ff6468503281ab60361388caf8ffdea5dbaf3b11110a72e5cc99f88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f6b6514c0e9e67e42a30e67cfd01555a7d64d0e37365abde34fb3a5f2a1c631d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def algEquivGaloisField (h : Nat.card K = p ^ n) : K ≃ₐ[ZMod p] GaloisField p n :=
  haveI := FiniteField.isSplittingField_of_nat_card_eq _ _ h
  IsSplittingField.algEquiv _ _

end Finite

end GaloisField

namespace FiniteField

variable {K K' : Type*} [Field K] [Field K']

section norm

variable [Algebra K K'] [Finite K']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GaloisField/Variant5211b2099ff6468503281ab60361388caf8ffdea5dbaf3b11110a72e5cc99f88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GaloisField/Variant5211b2099ff6468503281ab60361388caf8ffdea5dbaf3b11110a72e5cc99f88.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68033f3da6a40fd4478032c5b67a5700e34749f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
