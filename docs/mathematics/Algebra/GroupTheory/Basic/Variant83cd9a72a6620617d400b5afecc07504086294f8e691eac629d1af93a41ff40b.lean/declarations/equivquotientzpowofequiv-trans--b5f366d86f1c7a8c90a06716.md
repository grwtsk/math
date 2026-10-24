# equivQuotientZPowOfEquiv_trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:980aa3c5-ed0a-3d04-57b0-f44f3f0ce19d",
  "kind": "theorem",
  "lexical_name": "equivQuotientZPowOfEquiv_trans",
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
  "slug": "equivquotientzpowofequiv-trans--b5f366d86f1c7a8c90a06716",
  "source": {
    "blob": "a93a59bba6b604056d5152bef719eabaa3503d5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 286,
    "line": 268,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant83cd9a72a6620617d400b5afecc07504086294f8e691eac629d1af93a41ff40b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5f366d86f1c7a8c90a067160ce40b3443e4193dca5b13b15970e9be88b29c09",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant83cd9a72a6620617d400b5afecc07504086294f8e691eac629d1af93a41ff40b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:980aa3c5-ed0a-3d04-57b0-f44f3f0ce19d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–286.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem equivQuotientZPowOfEquiv_trans :
    (equivQuotientZPowOfEquiv e n).trans (equivQuotientZPowOfEquiv d n) =
      equivQuotientZPowOfEquiv (e.trans d) n := by
  ext x
  rw [← Quotient.out_eq' x]
  rfl

end ZPow

section SndIsomorphismThm

open Subgroup

/-- **Noether's second isomorphism theorem**: given a subgroup `N` of `G` and a
subgroup `H` of the normalizer of `N` in `G`,
defines an isomorphism between `H/(H ∩ N)` and `(HN)/N`. -/
@[to_additive /-- Noether's second isomorphism theorem: given a subgroup `N` of `G` and a
subgroup `H` of the normalizer of `N` in `G`,
defines an isomorphism between `H/(H ∩ N)` and `(H + N)/N` -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant83cd9a72a6620617d400b5afecc07504086294f8e691eac629d1af93a41ff40b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant83cd9a72a6620617d400b5afecc07504086294f8e691eac629d1af93a41ff40b.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a93a59bba6b604056d5152bef719eabaa3503d5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
