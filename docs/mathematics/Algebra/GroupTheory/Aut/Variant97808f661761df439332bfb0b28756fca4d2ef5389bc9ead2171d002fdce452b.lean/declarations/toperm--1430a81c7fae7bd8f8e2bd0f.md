# toPerm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2b08a6071bed87d1a6085ee5da4e0a3a27c39a83b33f0d7f7eed71f8c3ae819d",
  "kind": "def",
  "lexical_name": "toPerm",
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
  "slug": "toperm--1430a81c7fae7bd8f8e2bd0f",
  "source": {
    "blob": "4916ded16df28ed4a9b383b8c0f50baf94567e35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 117,
    "path": "GRWTSK/Algebra/GroupTheory/Aut/Variant97808f661761df439332bfb0b28756fca4d2ef5389bc9ead2171d002fdce452b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1430a81c7fae7bd8f8e2bd0f26388205473cf8053306f99614806362c83a7652",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Aut/Variant97808f661761df439332bfb0b28756fca4d2ef5389bc9ead2171d002fdce452b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2b08a6071bed87d1a6085ee5da4e0a3a27c39a83b33f0d7f7eed71f8c3ae819d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toPerm : MulAut M →* Equiv.Perm M := by
  refine' { toFun := MulEquiv.toEquiv, ..} <;> intros <;> rfl
#align mul_aut.to_perm MulAut.toPerm

/-- The tautological action by `MulAut M` on `M`.

This generalizes `Function.End.applyMulAction`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Aut/Variant97808f661761df439332bfb0b28756fca4d2ef5389bc9ead2171d002fdce452b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Aut/Variant97808f661761df439332bfb0b28756fca4d2ef5389bc9ead2171d002fdce452b.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4916ded16df28ed4a9b383b8c0f50baf94567e35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
