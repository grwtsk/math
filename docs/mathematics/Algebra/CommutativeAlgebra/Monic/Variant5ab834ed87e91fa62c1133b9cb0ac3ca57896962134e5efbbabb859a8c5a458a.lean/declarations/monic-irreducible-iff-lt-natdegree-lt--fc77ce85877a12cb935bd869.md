# Monic.irreducible_iff_lt_natDegree_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eb8bc7ae-47cf-aa06-6419-05bc372165b5",
  "kind": "lemma",
  "lexical_name": "Monic.irreducible_iff_lt_natDegree_lt",
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
  "slug": "monic-irreducible-iff-lt-natdegree-lt--fc77ce85877a12cb935bd869",
  "source": {
    "blob": "36bbc4359f4cff6d176d78390ab5a92c4b5be3f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 374,
    "line": 366,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Monic/Variant5ab834ed87e91fa62c1133b9cb0ac3ca57896962134e5efbbabb859a8c5a458a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc77ce85877a12cb935bd869038fb6eb57e8f0c31506dfd52e061ae1ee13038c",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Monic/Variant5ab834ed87e91fa62c1133b9cb0ac3ca57896962134e5efbbabb859a8c5a458a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb8bc7ae-47cf-aa06-6419-05bc372165b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 366–374.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Monic.irreducible_iff_lt_natDegree_lt {p : R[X]} (hp : p.Monic) (hp1 : p ≠ 1) :
    Irreducible p ↔ ∀ q, Monic q → natDegree q ∈ Finset.Ioc 0 (natDegree p / 2) → ¬ q ∣ p := by
  rw [hp.irreducible_iff_natDegree', and_iff_right hp1]
  constructor
  · rintro h g hg hdg ⟨f, rfl⟩
    exact h f g (hg.of_mul_monic_left hp) hg (mul_comm f g) hdg
  · rintro h f g - hg rfl hdg
    exact h g hg hdg (dvd_mul_left g f)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Monic/Variant5ab834ed87e91fa62c1133b9cb0ac3ca57896962134e5efbbabb859a8c5a458a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Monic/Variant5ab834ed87e91fa62c1133b9cb0ac3ca57896962134e5efbbabb859a8c5a458a.lean#L366).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36bbc4359f4cff6d176d78390ab5a92c4b5be3f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
