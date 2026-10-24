# even_add_one_iff_odd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fc747e1f-acd9-fed4-ac27-392e9ce77b76",
  "kind": "lemma",
  "lexical_name": "even_add_one_iff_odd",
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
  "slug": "even-add-one-iff-odd--dff8f9af30d1af94c9e59e0e",
  "source": {
    "blob": "f7bb345b7dc6b904d9020f8265b2d38be1398e60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 122,
    "path": "GRWTSK/Algebra/Parity/Variantefd854bd73f943ac9fa8363d2ab3545ceb26ab12c9c9c32dc78ff2989ba5dbd0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dff8f9af30d1af94c9e59e0edabe572ad1e276fe68f7d51be907442519ee29e5",
  "verification": {
    "reference": "docs/verification/Algebra/Parity/Variantefd854bd73f943ac9fa8363d2ab3545ceb26ab12c9c9c32dc78ff2989ba5dbd0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc747e1f-acd9-fed4-ac27-392e9ce77b76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma even_add_one_iff_odd [NeZero n] : Even (k + 1) ↔ Odd k :=
  ⟨fun ⟨k, hk⟩ ↦ eq_sub_iff_add_eq.mpr hk ▸ (Even.add_self k).sub_odd odd_one, Odd.add_one⟩

end Fin
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Parity/Variantefd854bd73f943ac9fa8363d2ab3545ceb26ab12c9c9c32dc78ff2989ba5dbd0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Parity/Variantefd854bd73f943ac9fa8363d2ab3545ceb26ab12c9c9c32dc78ff2989ba5dbd0.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7bb345b7dc6b904d9020f8265b2d38be1398e60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
