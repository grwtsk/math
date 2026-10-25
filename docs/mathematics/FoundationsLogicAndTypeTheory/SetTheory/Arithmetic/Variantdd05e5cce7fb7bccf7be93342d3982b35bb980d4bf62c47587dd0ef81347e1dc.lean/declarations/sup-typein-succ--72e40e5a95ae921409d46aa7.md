# sup_typein_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ca03caf-e25f-bf30-d41b-28c103dd7b97",
  "kind": "theorem",
  "lexical_name": "sup_typein_succ",
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
  "slug": "sup-typein-succ--72e40e5a95ae921409d46aa7",
  "source": {
    "blob": "c645c924592c1d359f7ffee102a85dda474aacf7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1755,
    "line": 1739,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variantdd05e5cce7fb7bccf7be93342d3982b35bb980d4bf62c47587dd0ef81347e1dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72e40e5a95ae921409d46aa73b500922690786fcca5cf98bf17da74f4aad50f0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variantdd05e5cce7fb7bccf7be93342d3982b35bb980d4bf62c47587dd0ef81347e1dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ca03caf-e25f-bf30-d41b-28c103dd7b97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1739–1755.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sup_typein_succ {o : Ordinal} :
    sup.{u, u} (typein ((· < ·) : (succ o).out.α → (succ o).out.α → Prop)) = o := by
  cases'
    sup_eq_lsub_or_sup_succ_eq_lsub.{u, u}
      (typein ((· < ·) : (succ o).out.α → (succ o).out.α → Prop)) with
    h h
  · rw [sup_eq_lsub_iff_succ] at h
    simp only [lsub_typein] at h
    exact (h o (lt_succ o)).false.elim
  rw [← succ_eq_succ_iff, h]
  apply lsub_typein
#align ordinal.sup_typein_succ Ordinal.sup_typein_succ

/-- The least strict upper bound of a family of ordinals indexed by the set of ordinals less than
    some `o : Ordinal.{u}`.

    This is to `lsub` as `bsup` is to `sup`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variantdd05e5cce7fb7bccf7be93342d3982b35bb980d4bf62c47587dd0ef81347e1dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variantdd05e5cce7fb7bccf7be93342d3982b35bb980d4bf62c47587dd0ef81347e1dc.lean#L1739).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c645c924592c1d359f7ffee102a85dda474aacf7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
