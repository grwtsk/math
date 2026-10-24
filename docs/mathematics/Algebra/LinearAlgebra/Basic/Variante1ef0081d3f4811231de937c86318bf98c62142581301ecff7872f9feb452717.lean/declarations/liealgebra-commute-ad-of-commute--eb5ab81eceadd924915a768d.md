# LieAlgebra.commute_ad_of_commute

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7de4dfe0-2cb6-39dc-2d4d-dd8693e0e038",
  "kind": "theorem",
  "lexical_name": "LieAlgebra.commute_ad_of_commute",
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
  "slug": "liealgebra-commute-ad-of-commute--eb5ab81eceadd924915a768d",
  "source": {
    "blob": "b76953a5c7e7486b8dfa0d255257a241283ead09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 42,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variante1ef0081d3f4811231de937c86318bf98c62142581301ecff7872f9feb452717.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb5ab81eceadd924915a768df8444c4003a9da6fde3697030b474faf7332b85f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variante1ef0081d3f4811231de937c86318bf98c62142581301ecff7872f9feb452717.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7de4dfe0-2cb6-39dc-2d4d-dd8693e0e038`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LieAlgebra.commute_ad_of_commute {a b : A} (h : Commute a b) :
    Commute (LieAlgebra.ad R A a) (LieAlgebra.ad R A b) := by
  rw [Commute, SemiconjBy, ← sub_eq_zero, ← Ring.lie_def,
    ← (LieAlgebra.ad R A).map_lie, Ring.lie_def, sub_eq_zero.mpr h, map_zero]

/-- The adjoint of a nilpotent element is nilpotent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variante1ef0081d3f4811231de937c86318bf98c62142581301ecff7872f9feb452717.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variante1ef0081d3f4811231de937c86318bf98c62142581301ecff7872f9feb452717.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b76953a5c7e7486b8dfa0d255257a241283ead09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
