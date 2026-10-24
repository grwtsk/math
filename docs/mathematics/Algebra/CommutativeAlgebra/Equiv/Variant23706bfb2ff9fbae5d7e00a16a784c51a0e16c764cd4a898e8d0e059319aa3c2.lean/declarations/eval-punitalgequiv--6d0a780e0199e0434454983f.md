# eval₂_pUnitAlgEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:17a5389c-c543-edb2-70c4-8d00632d2276",
  "kind": "theorem",
  "lexical_name": "eval₂_pUnitAlgEquiv",
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
  "slug": "eval-punitalgequiv--6d0a780e0199e0434454983f",
  "source": {
    "blob": "1548fce94216adf949c2926d361eec1200162586",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 251,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Equiv/Variant23706bfb2ff9fbae5d7e00a16a784c51a0e16c764cd4a898e8d0e059319aa3c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d0a780e0199e0434454983f7f9fccc6b78fea73c45f62166118fd46d7395e95",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Equiv/Variant23706bfb2ff9fbae5d7e00a16a784c51a0e16c764cd4a898e8d0e059319aa3c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17a5389c-c543-edb2-70c4-8d00632d2276`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eval₂_pUnitAlgEquiv {f : MvPolynomial PUnit R} {φ : R →+* S} {a : PUnit → S} :
    ((MvPolynomial.pUnitAlgEquiv R) f : Polynomial R).eval₂ φ (a default) = f.eval₂ φ a :=
  eval₂_uniqueAlgEquiv

@[deprecated eval₂_const_uniqueAlgEquiv (since := "2026-04-15")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Equiv/Variant23706bfb2ff9fbae5d7e00a16a784c51a0e16c764cd4a898e8d0e059319aa3c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Equiv/Variant23706bfb2ff9fbae5d7e00a16a784c51a0e16c764cd4a898e8d0e059319aa3c2.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1548fce94216adf949c2926d361eec1200162586` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
