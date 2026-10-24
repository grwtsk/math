# Weight.instFinite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:53364385b9b0b77b3173aa9eb4c2d430ab75173802927b38f54f32ce90f3ffa5",
  "kind": "instance",
  "lexical_name": "Weight.instFinite",
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
  "slug": "weight-instfinite--ecdec506daf8369e4cbb5586",
  "source": {
    "blob": "83f5b2952575d4313b52c658f11b1c343244623b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 697,
    "line": 694,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant5739a328cb492f7b169a7597b174e63c8494bdc5dc5fec4f2f189a1103da329f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ecdec506daf8369e4cbb55868ed9f090774314bb110e8625e14d1724960ce7e6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant5739a328cb492f7b169a7597b174e63c8494bdc5dc5fec4f2f189a1103da329f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:53364385b9b0b77b3173aa9eb4c2d430ab75173802927b38f54f32ce90f3ffa5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 694–697.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Weight.instFinite [IsNoetherian R M] : Finite (Weight R L M) := by
  have : Finite {χ : L → R | genWeightSpace M χ ≠ ⊥} := finite_genWeightSpace_ne_bot R L M
  exact Finite.of_injective (equivSetOfPred R L M) (equivSetOfPred R L M).injective

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant5739a328cb492f7b169a7597b174e63c8494bdc5dc5fec4f2f189a1103da329f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant5739a328cb492f7b169a7597b174e63c8494bdc5dc5fec4f2f189a1103da329f.lean#L694).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83f5b2952575d4313b52c658f11b1c343244623b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
