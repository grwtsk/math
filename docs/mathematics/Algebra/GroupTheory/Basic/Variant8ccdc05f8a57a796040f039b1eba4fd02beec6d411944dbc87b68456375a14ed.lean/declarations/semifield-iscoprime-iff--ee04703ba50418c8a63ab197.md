# Semifield.isCoprime_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5fc83396-a8aa-b575-1057-894e4aea0e45",
  "kind": "lemma",
  "lexical_name": "Semifield.isCoprime_iff",
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
  "slug": "semifield-iscoprime-iff--ee04703ba50418c8a63ab197",
  "source": {
    "blob": "d750a3a079a23d7d26a10517c0d5ec7dcbae9e1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 441,
    "line": 430,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant8ccdc05f8a57a796040f039b1eba4fd02beec6d411944dbc87b68456375a14ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee04703ba50418c8a63ab1974d463ab50688006caf0abaedf82fe5e1dabbe7f2",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant8ccdc05f8a57a796040f039b1eba4fd02beec6d411944dbc87b68456375a14ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5fc83396-a8aa-b575-1057-894e4aea0e45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 430–441.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Semifield.isCoprime_iff {R : Type*} [Semifield R] {m n : R} :
    IsCoprime m n ↔ m ≠ 0 ∨ n ≠ 0 := by
  obtain rfl | hn := eq_or_ne n 0
  · simp [isCoprime_zero_right]
  suffices IsCoprime m n by simpa [hn]
  refine ⟨0, n⁻¹, ?_⟩
  simp [inv_mul_cancel₀ hn]

namespace IsRelPrime

variable {R} [CommRing R] {x y : R}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant8ccdc05f8a57a796040f039b1eba4fd02beec6d411944dbc87b68456375a14ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant8ccdc05f8a57a796040f039b1eba4fd02beec6d411944dbc87b68456375a14ed.lean#L430).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d750a3a079a23d7d26a10517c0d5ec7dcbae9e1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
