# not_dvd_index_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2f7f0112-2c4b-bc02-ca92-71700d5e01c6",
  "kind": "theorem",
  "lexical_name": "not_dvd_index_aux",
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
  "slug": "not-dvd-index-aux--4c521c09f1db93b800c21bae",
  "source": {
    "blob": "695ced75729a1d8d7fff3dd361b791a4790a1126",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 432,
    "line": 415,
    "path": "GRWTSK/Algebra/GroupTheory/Sylow/Variantf46ba724031c427de1cbbe5f909e16fdd412183627f7f03114095ba3f797d219.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c521c09f1db93b800c21bae16239d7a47231197f1d3474ecfdbe4abd79ab156",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Sylow/Variantf46ba724031c427de1cbbe5f909e16fdd412183627f7f03114095ba3f797d219.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f7f0112-2c4b-bc02-ca92-71700d5e01c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 415–432.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem not_dvd_index_aux [hp : Fact p.Prime] (P : Sylow p G) [P.Normal]
    [P.FiniteIndex] : ¬ p ∣ P.index := by
  intro h
  rw [P.index_eq_card] at h
  obtain ⟨x, hx⟩ := exists_prime_orderOf_dvd_card' (G := G ⧸ (P : Subgroup G)) p h
  have h := IsPGroup.of_card (((Nat.card_zpowers x).trans hx).trans (pow_one p).symm)
  let Q := (zpowers x).comap (QuotientGroup.mk' (P : Subgroup G))
  have hQ : IsPGroup p Q := by
    apply h.comap_of_ker_isPGroup
    rw [QuotientGroup.ker_mk']
    exact P.2
  replace hp := mt orderOf_eq_one_iff.mpr (ne_of_eq_of_ne hx hp.1.ne_one)
  rw [← zpowers_eq_bot, ← Ne, ← bot_lt_iff_ne_bot, ←
    comap_lt_comap_of_surjective (QuotientGroup.mk'_surjective _), MonoidHom.comap_bot,
    QuotientGroup.ker_mk'] at hp
  exact hp.ne' (P.3 hQ hp.le)

/-- A Sylow p-subgroup has index indivisible by `p`, assuming [N(P) : P] < ∞. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Sylow/Variantf46ba724031c427de1cbbe5f909e16fdd412183627f7f03114095ba3f797d219.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Sylow/Variantf46ba724031c427de1cbbe5f909e16fdd412183627f7f03114095ba3f797d219.lean#L415).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `695ced75729a1d8d7fff3dd361b791a4790a1126` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
