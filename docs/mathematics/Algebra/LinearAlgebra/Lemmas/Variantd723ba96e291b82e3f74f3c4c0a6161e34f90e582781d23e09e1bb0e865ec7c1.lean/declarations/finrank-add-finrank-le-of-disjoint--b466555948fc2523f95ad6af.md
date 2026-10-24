# finrank_add_finrank_le_of_disjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:67839ce8-8fcc-f722-aac6-bd2030165108",
  "kind": "theorem",
  "lexical_name": "finrank_add_finrank_le_of_disjoint",
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
  "slug": "finrank-add-finrank-le-of-disjoint--b466555948fc2523f95ad6af",
  "source": {
    "blob": "c592adb9eb5e1eec28da9bfa3ec335213e6977d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 69,
    "path": "GRWTSK/Algebra/LinearAlgebra/Lemmas/Variantd723ba96e291b82e3f74f3c4c0a6161e34f90e582781d23e09e1bb0e865ec7c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b466555948fc2523f95ad6afce0b7d503e2e54eb166a97e9777c592a00bbc609",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Lemmas/Variantd723ba96e291b82e3f74f3c4c0a6161e34f90e582781d23e09e1bb0e865ec7c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67839ce8-8fcc-f722-aac6-bd2030165108`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finrank_add_finrank_le_of_disjoint [FiniteDimensional K V]
    {s t : Submodule K V} (hdisjoint : Disjoint s t) :
    finrank K s + finrank K t ≤ finrank K V := by
  rw [← Submodule.finrank_sup_add_finrank_inf_eq s t, hdisjoint.eq_bot, finrank_bot, add_zero]
  exact Submodule.finrank_le _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Lemmas/Variantd723ba96e291b82e3f74f3c4c0a6161e34f90e582781d23e09e1bb0e865ec7c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Lemmas/Variantd723ba96e291b82e3f74f3c4c0a6161e34f90e582781d23e09e1bb0e865ec7c1.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c592adb9eb5e1eec28da9bfa3ec335213e6977d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
