# quotientEquivSigmaZMod_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a33d835c-a947-b4dc-2e7d-5023a2539cc1",
  "kind": "lemma",
  "lexical_name": "quotientEquivSigmaZMod_apply",
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
  "slug": "quotientequivsigmazmod-apply--64329e6bf9d8cffe825f515b",
  "source": {
    "blob": "951a09f8bb0a7a227dbf1aaf4cd7b3830cc586d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 213,
    "path": "GRWTSK/Algebra/GroupTheory/QuotientGroup/Varianta8c3b003f58bc2b8910fdbeef0f6ba48d8d5bcaa9422b688d3ac10ace535abc9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:64329e6bf9d8cffe825f515b7da18df8b6abb97dcdbed4aeae8d3d650bace66a",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/QuotientGroup/Varianta8c3b003f58bc2b8910fdbeef0f6ba48d8d5bcaa9422b688d3ac10ace535abc9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a33d835c-a947-b4dc-2e7d-5023a2539cc1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma quotientEquivSigmaZMod_apply (q : orbitRel.Quotient (zpowers g) (G ⧸ H)) (k : ℤ) :
    quotientEquivSigmaZMod H g (g ^ k • q.out) = ⟨q, k⟩ := by
  rw [← eq_symm_apply, quotientEquivSigmaZMod_symm_apply, ZMod.coe_intCast,
    zpow_smul_mod_minimalPeriod]

/-- The sum of minimal periods over all orbits equals the index `[G:H]`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/QuotientGroup/Varianta8c3b003f58bc2b8910fdbeef0f6ba48d8d5bcaa9422b688d3ac10ace535abc9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/QuotientGroup/Varianta8c3b003f58bc2b8910fdbeef0f6ba48d8d5bcaa9422b688d3ac10ace535abc9.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `951a09f8bb0a7a227dbf1aaf4cd7b3830cc586d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
