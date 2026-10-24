# normalizedFactors_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:55a4d8a6-7014-d6e2-8283-29be2f9d61a5",
  "kind": "theorem",
  "lexical_name": "normalizedFactors_pos",
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
  "slug": "normalizedfactors-pos--fa343e97a712d03a77cb6148",
  "source": {
    "blob": "e689c717fbdde549494eaaa644c83de690f6e6ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 305,
    "line": 289,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant3ef64c7be33ee9de68297500b745ea156b04419ca6cb21a5a04ef8c1f1390649.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa343e97a712d03a77cb6148dbc8208737791a9162cc16e07ba8e010be4107ee",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant3ef64c7be33ee9de68297500b745ea156b04419ca6cb21a5a04ef8c1f1390649.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55a4d8a6-7014-d6e2-8283-29be2f9d61a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 289–305.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizedFactors_pos (x : α) (hx : x ≠ 0) : 0 < normalizedFactors x ↔ ¬IsUnit x := by
  constructor
  · intro h hx
    obtain ⟨p, hp⟩ := Multiset.exists_mem_of_ne_zero h.ne'
    exact
      (prime_of_normalized_factor _ hp).not_isUnit
        (isUnit_of_dvd_unit (dvd_of_mem_normalizedFactors hp) hx)
  · intro h
    obtain ⟨p, hp⟩ := exists_mem_normalizedFactors hx h
    exact
      bot_lt_iff_ne_bot.mpr
        (mt Multiset.eq_zero_iff_forall_notMem.mp (not_forall.mpr ⟨p, not_not.mpr hp⟩))

/--
The multiset of normalized factors of `x` is nil if and only if `x` is a unit.
The converse is true without the nonzero assumption, see `normalizedFactors_of_isUnit`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant3ef64c7be33ee9de68297500b745ea156b04419ca6cb21a5a04ef8c1f1390649.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant3ef64c7be33ee9de68297500b745ea156b04419ca6cb21a5a04ef8c1f1390649.lean#L289).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e689c717fbdde549494eaaa644c83de690f6e6ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
