# isSquare_of_charTwo'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7a24f1f6-8f9f-5041-2357-8e52374af39f",
  "kind": "theorem",
  "lexical_name": "isSquare_of_charTwo'",
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
  "slug": "issquare-of-chartwo--53b78dc08f0e8f2a80b1cde9",
  "source": {
    "blob": "83d2cb38ccf6954997e9827cf57ddd223152545d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 472,
    "line": 459,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variantccb5a397324054a51c949f93c91df7b338a3e9df17db878fec6f7585919338e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53b78dc08f0e8f2a80b1cde9bbce9aa00228df32fae7bb9ee57b1ce232333531",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variantccb5a397324054a51c949f93c91df7b338a3e9df17db878fec6f7585919338e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a24f1f6-8f9f-5041-2357-8e52374af39f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 459–472.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSquare_of_charTwo' {R : Type*} [Finite R] [CommRing R] [IsReduced R] [CharP R 2]
    (a : R) : IsSquare a := by
  cases nonempty_fintype R
  exact
    Exists.imp (fun b h => pow_two b ▸ Eq.symm h)
      (((Fintype.bijective_iff_injective_and_card _).mpr ⟨frobenius_inj R 2, rfl⟩).surjective a)
#align is_square_of_char_two' isSquare_of_charTwo'

namespace CharP

section

variable [NonAssocRing R]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variantccb5a397324054a51c949f93c91df7b338a3e9df17db878fec6f7585919338e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variantccb5a397324054a51c949f93c91df7b338a3e9df17db878fec6f7585919338e6.lean#L459).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83d2cb38ccf6954997e9827cf57ddd223152545d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
