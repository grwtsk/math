# Rat.instPosMulMono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0cf5b58d0afb996180b2d04d2de9560c6efd77a11115d098d703f10be8619ea9",
  "kind": "instance",
  "lexical_name": "Rat.instPosMulMono",
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
  "slug": "rat-instposmulmono--84514cf11deae7c1a7e27dc5",
  "source": {
    "blob": "5dce273679b5683de24a054559b2d29402845e01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 64,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Defs/Variant94adf0a7d34c8e17ccd88672bd6459dde5f4a54806cfa70f922f961252b6d4af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:84514cf11deae7c1a7e27dc509ac681ced05a87c281b923ff00eb6ecb3b2dffd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Defs/Variant94adf0a7d34c8e17ccd88672bd6459dde5f4a54806cfa70f922f961252b6d4af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0cf5b58d0afb996180b2d04d2de9560c6efd77a11115d098d703f10be8619ea9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Rat.instPosMulMono : PosMulMono ℚ where
  elim := fun r p q h => by
    simp only [mul_comm]
    simpa [sub_mul, sub_nonneg] using Rat.mul_nonneg (sub_nonneg.2 h) r.2

deriving instance CommSemiring for NNRat
deriving instance LinearOrder for NNRat
deriving instance Sub for NNRat
deriving instance Inhabited for NNRat

namespace NNRat

variable {p q : ℚ≥0}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Defs/Variant94adf0a7d34c8e17ccd88672bd6459dde5f4a54806cfa70f922f961252b6d4af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Defs/Variant94adf0a7d34c8e17ccd88672bd6459dde5f4a54806cfa70f922f961252b6d4af.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5dce273679b5683de24a054559b2d29402845e01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
