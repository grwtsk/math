# enclose_valid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a2a565d6-0fe1-b9b0-bbff-f9cd2e4f2655",
  "kind": "lemma",
  "lexical_name": "enclose_valid",
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
  "slug": "enclose-valid--c49b669d129862cf111320dd",
  "source": {
    "blob": "169432b99b1099a91d8d3700e9b516df9603aa70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 210,
    "path": "GRWTSK/Analysis/Complex/GaussianPolynomialPair.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c49b669d129862cf111320dd2dfc6f7f6778cf84a87b4117a15d70bd0a28d92f",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/GaussianPolynomialPair.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2a565d6-0fe1-b9b0-bbff-f9cd2e4f2655`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma enclose_valid (p : Poly) {V Q : Disk} {v q : ℂ}
    (hv : V.Valid v) (hq : Q.Valid q) :
    (enclose p V Q).1.Valid (pair p v q).1 ∧
    (enclose p V Q).2.Valid (pair p v q).2 := by
  induction p with
  | nil => simpa [enclose,pair,Gaussian.value_ofRat] using And.intro
      (Disk.point_valid (Gaussian.ofRat 0)) (Disk.point_valid (Gaussian.ofRat 0))
  | cons a p ih => exact ⟨((Disk.point_valid a).add_valid (hv.mul_valid ih.1)).add_valid
      (hq.mul_valid ih.2),ih.1.add_valid (hv.mul_valid ih.2)⟩

/-- An affine margin can vanish at q=0 and still be positive on 0<q<=Q.
This does not give a positive lower bound independent of q. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/GaussianPolynomialPair.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/GaussianPolynomialPair.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `169432b99b1099a91d8d3700e9b516df9603aa70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
