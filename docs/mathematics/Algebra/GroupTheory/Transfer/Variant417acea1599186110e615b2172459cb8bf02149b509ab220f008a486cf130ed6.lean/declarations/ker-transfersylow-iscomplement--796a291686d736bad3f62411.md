# ker_transferSylow_isComplement'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dd36d48c-2310-54e5-1533-2eefff5f4aca",
  "kind": "theorem",
  "lexical_name": "ker_transferSylow_isComplement'",
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
  "slug": "ker-transfersylow-iscomplement--796a291686d736bad3f62411",
  "source": {
    "blob": "c98355533cabbb878b3faada7ab0f73e16d42d09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 258,
    "path": "GRWTSK/Algebra/GroupTheory/Transfer/Variant417acea1599186110e615b2172459cb8bf02149b509ab220f008a486cf130ed6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:796a291686d736bad3f62411c373d37e552d6be3b3a70e7101eafc6b8268f479",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Transfer/Variant417acea1599186110e615b2172459cb8bf02149b509ab220f008a486cf130ed6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd36d48c-2310-54e5-1533-2eefff5f4aca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ker_transferSylow_isComplement' : IsComplement' (transferSylow P hP).ker P := by
  have hf : Function.Bijective ((transferSylow P hP).restrict (P : Subgroup G)) :=
    (transferSylow_restrict_eq_pow P hP).symm ▸
      (P.2.powEquiv'
          (not_dvd_index_sylow P
            (mt index_eq_zero_of_relindex_eq_zero index_ne_zero_of_finite))).bijective
  rw [Function.Bijective, ← range_top_iff_surjective, restrict_range] at hf
  have := range_top_iff_surjective.mp (top_le_iff.mp (hf.2.ge.trans
    (map_le_range (transferSylow P hP) P)))
  rw [← (comap_injective this).eq_iff, comap_top, comap_map_eq, sup_comm, SetLike.ext'_iff,
    normal_mul, ← ker_eq_bot_iff, ← (map_injective (P : Subgroup G).subtype_injective).eq_iff,
    ker_restrict, subgroupOf_map_subtype, Subgroup.map_bot, coe_top] at hf
  exact isComplement'_of_disjoint_and_mul_eq_univ (disjoint_iff.2 hf.1) hf.2
#align monoid_hom.ker_transfer_sylow_is_complement' MonoidHom.ker_transferSylow_isComplement'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Transfer/Variant417acea1599186110e615b2172459cb8bf02149b509ab220f008a486cf130ed6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Transfer/Variant417acea1599186110e615b2172459cb8bf02149b509ab220f008a486cf130ed6.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c98355533cabbb878b3faada7ab0f73e16d42d09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
