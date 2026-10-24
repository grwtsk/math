# natDegree_norm_ne_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7ae47a00-60f0-1dc0-8f8b-bc4bc664beef",
  "kind": "lemma",
  "lexical_name": "natDegree_norm_ne_one",
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
  "slug": "natdegree-norm-ne-one--2a7676239091274442ac3f75",
  "source": {
    "blob": "1c3fb4147b96c096ea6786a2b255719b2bab131e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 475,
    "line": 464,
    "path": "GRWTSK/Algebra/LinearAlgebra/Point/Varianta4f93301bc35affc39582a7d61bb65ebbc536f599a674cfe28c6b68f7b493287.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a7676239091274442ac3f75214c90cef305cdeab35490e84db9ba7a8b4fedc6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Point/Varianta4f93301bc35affc39582a7d61bb65ebbc536f599a674cfe28c6b68f7b493287.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ae47a00-60f0-1dc0-8f8b-bc4bc664beef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 464–475.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma natDegree_norm_ne_one [IsDomain R] (x : W'.CoordinateRing) :
    (Algebra.norm R[X] x).natDegree ≠ 1 :=
  degree_norm_ne_one x ∘ (degree_eq_iff_natDegree_eq_of_pos zero_lt_one).mpr

end CoordinateRing

/-! ## Nonsingular points in affine coordinates -/

variable (W') in
/-- A nonsingular point on a Weierstrass curve `W` in affine coordinates. This is either the unique
point at infinity `WeierstrassCurve.Affine.Point.zero` or a nonsingular affine point
`WeierstrassCurve.Affine.Point.some (x, y)` satisfying the Weierstrass equation of `W`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Point/Varianta4f93301bc35affc39582a7d61bb65ebbc536f599a674cfe28c6b68f7b493287.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Point/Varianta4f93301bc35affc39582a7d61bb65ebbc536f599a674cfe28c6b68f7b493287.lean#L464).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c3fb4147b96c096ea6786a2b255719b2bab131e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
