# add_eq_min

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e416ffbd-d2bc-0fc8-73af-a4dac037f4fa",
  "kind": "lemma",
  "lexical_name": "add_eq_min",
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
  "slug": "add-eq-min--9c6ebbee1081a091330fdd0e",
  "source": {
    "blob": "16c3061492a96cbfd3f732ed1d63b2aa0de86ac1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 357,
    "line": 348,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Basic/Variant0adcb27178c6a111cf455f52f54041db6151e40945750bbea8745493ff6f2ce7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c6ebbee1081a091330fdd0eba00883456d4ab266695c7a9f3d76bef9615f35d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Basic/Variant0adcb27178c6a111cf455f52f54041db6151e40945750bbea8745493ff6f2ce7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e416ffbd-d2bc-0fc8-73af-a4dac037f4fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 348–357.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma add_eq_min {q r : ℚ} (hqr : q + r ≠ 0) (hq : q ≠ 0) (hr : r ≠ 0)
    (hval : padicValRat p q ≠ padicValRat p r) :
    padicValRat p (q + r) = min (padicValRat p q) (padicValRat p r) := by
  have h1 := min_le_padicValRat_add (p := p) hqr
  have h2 := min_le_padicValRat_add (p := p) (ne_of_eq_of_ne (add_neg_cancel_right q r) hq)
  have h3 := min_le_padicValRat_add (p := p) (ne_of_eq_of_ne (add_neg_cancel_right r q) hr)
  rw [add_neg_cancel_right, padicValRat.neg] at h2 h3
  rw [add_comm] at h3
  omega

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Basic/Variant0adcb27178c6a111cf455f52f54041db6151e40945750bbea8745493ff6f2ce7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Basic/Variant0adcb27178c6a111cf455f52f54041db6151e40945750bbea8745493ff6f2ce7.lean#L348).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16c3061492a96cbfd3f732ed1d63b2aa0de86ac1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
