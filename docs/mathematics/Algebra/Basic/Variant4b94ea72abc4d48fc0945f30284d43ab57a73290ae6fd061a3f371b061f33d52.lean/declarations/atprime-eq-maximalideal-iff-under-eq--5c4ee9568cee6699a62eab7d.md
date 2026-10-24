# AtPrime.eq_maximalIdeal_iff_under_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0dbeb0ce-8337-4ee1-7e9e-022ef2b9f223",
  "kind": "lemma",
  "lexical_name": "AtPrime.eq_maximalIdeal_iff_under_eq",
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
  "slug": "atprime-eq-maximalideal-iff-under-eq--5c4ee9568cee6699a62eab7d",
  "source": {
    "blob": "31f9a7a8cc78ab3ff24305094374c01bf85e7c1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 224,
    "path": "GRWTSK/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c4ee9568cee6699a62eab7d0875e2952677a2e68abf047350e910f7e2b5352a",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0dbeb0ce-8337-4ee1-7e9e-022ef2b9f223`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma AtPrime.eq_maximalIdeal_iff_under_eq {J : Ideal (Localization.AtPrime I)} :
    J.under R = I ↔ J = IsLocalRing.maximalIdeal (Localization.AtPrime I) where
  mp h := le_antisymm (IsLocalRing.le_maximalIdeal (fun hJ ↦ (hI.ne_top (h.symm ▸ hJ ▸ rfl)))) <| by
    simpa [← AtPrime.map_eq_maximalIdeal, ← h] using Ideal.map_comap_le
  mpr h := h.symm ▸ AtPrime.under_maximalIdeal

@[deprecated (since := "2026-04-09")] alias AtPrime.eq_maximalIdeal_iff_comap_eq :=
  AtPrime.eq_maximalIdeal_iff_under_eq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31f9a7a8cc78ab3ff24305094374c01bf85e7c1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
