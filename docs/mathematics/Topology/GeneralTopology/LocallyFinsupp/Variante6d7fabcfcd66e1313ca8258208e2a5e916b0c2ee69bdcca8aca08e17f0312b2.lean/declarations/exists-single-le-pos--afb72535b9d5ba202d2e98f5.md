# exists_single_le_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c57b30bc-3c17-0ad7-29b4-6fb75109c651",
  "kind": "lemma",
  "lexical_name": "exists_single_le_pos",
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
  "slug": "exists-single-le-pos--afb72535b9d5ba202d2e98f5",
  "source": {
    "blob": "80084dd2ce2e6875491a2bd80de9e453c951612b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 590,
    "line": 573,
    "path": "GRWTSK/Topology/GeneralTopology/LocallyFinsupp/Variante6d7fabcfcd66e1313ca8258208e2a5e916b0c2ee69bdcca8aca08e17f0312b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:afb72535b9d5ba202d2e98f5ec1776436e1361014f5d03e042e8bab093630443",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocallyFinsupp/Variante6d7fabcfcd66e1313ca8258208e2a5e916b0c2ee69bdcca8aca08e17f0312b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c57b30bc-3c17-0ad7-29b4-6fb75109c651`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 573–590.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_single_le_pos [DecidableEq X] {D : locallyFinsupp X ℤ} (h : 0 < D) :
    ∃ e, single e 1 ≤ D := by
  obtain ⟨z, hz⟩ : ∃ z, D z ≠ 0 := by simpa [D.ext_iff] using! (ne_of_lt h).symm
  refine ⟨z, fun e ↦ ?_⟩
  obtain (rfl | he) := eq_or_ne e z
  · simpa [single_apply] using! Int.lt_iff_le_and_ne.mpr ⟨h.le e, hz.symm⟩
  · simpa [he, single_apply] using! h.le e

end LinearOrder

/-!
## Restriction
-/

/--
If `V` is a subset of `U`, then functions with locally finite support within `U` restrict to
functions with locally finite support within `V`, by setting their values to zero outside of `V`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocallyFinsupp/Variante6d7fabcfcd66e1313ca8258208e2a5e916b0c2ee69bdcca8aca08e17f0312b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocallyFinsupp/Variante6d7fabcfcd66e1313ca8258208e2a5e916b0c2ee69bdcca8aca08e17f0312b2.lean#L573).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80084dd2ce2e6875491a2bd80de9e453c951612b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
