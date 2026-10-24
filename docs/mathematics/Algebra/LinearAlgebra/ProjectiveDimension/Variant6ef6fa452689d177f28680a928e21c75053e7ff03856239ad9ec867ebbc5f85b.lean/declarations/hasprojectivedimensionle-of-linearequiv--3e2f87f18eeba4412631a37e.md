# hasProjectiveDimensionLE_of_linearEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:28ac9b10-5533-7743-6b44-930d10e642b8",
  "kind": "lemma",
  "lexical_name": "hasProjectiveDimensionLE_of_linearEquiv",
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
  "slug": "hasprojectivedimensionle-of-linearequiv--3e2f87f18eeba4412631a37e",
  "source": {
    "blob": "64d7d0c9f9950980b95a810594b7d18adea16df4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 123,
    "path": "GRWTSK/Algebra/LinearAlgebra/ProjectiveDimension/Variant6ef6fa452689d177f28680a928e21c75053e7ff03856239ad9ec867ebbc5f85b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e2f87f18eeba4412631a37e14342068b46aaa7b835df803f008c942a13aebe7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ProjectiveDimension/Variant6ef6fa452689d177f28680a928e21c75053e7ff03856239ad9ec867ebbc5f85b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28ac9b10-5533-7743-6b44-930d10e642b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasProjectiveDimensionLE_of_linearEquiv (e : M ≃ₗ[R] N)
    (n : ℕ) [HasProjectiveDimensionLE M n] : HasProjectiveDimensionLE N n :=
  #adaptation_note /-- 2026-05-20 (kmill) #13807, instances are more eager to apply, but the
  `univ_out_params` attribute for `Small` doesn't seem to restrict local instances, so the
  wrong universe levels are inferred. Added `.{v, v'}`. -/
  hasProjectiveDimensionLE_of_semiLinearEquiv.{v, v'} (RingEquiv.refl R) e n

@[deprecated (since := "2026-04-04")]
alias _root_.CategoryTheory.hasProjectiveDimensionLE_of_linearEquiv :=
  hasProjectiveDimensionLE_of_linearEquiv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ProjectiveDimension/Variant6ef6fa452689d177f28680a928e21c75053e7ff03856239ad9ec867ebbc5f85b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ProjectiveDimension/Variant6ef6fa452689d177f28680a928e21c75053e7ff03856239ad9ec867ebbc5f85b.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64d7d0c9f9950980b95a810594b7d18adea16df4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
