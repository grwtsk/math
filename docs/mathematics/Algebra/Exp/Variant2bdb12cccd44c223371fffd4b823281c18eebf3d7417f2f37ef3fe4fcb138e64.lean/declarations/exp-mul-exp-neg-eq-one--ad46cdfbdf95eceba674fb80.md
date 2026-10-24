# exp_mul_exp_neg_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b235a15-21af-89df-7aca-71411ce8d8d7",
  "kind": "theorem",
  "lexical_name": "exp_mul_exp_neg_eq_one",
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
  "slug": "exp-mul-exp-neg-eq-one--ad46cdfbdf95eceba674fb80",
  "source": {
    "blob": "ec0df2033222548ef12d0ff90b4567f0453958c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 158,
    "path": "GRWTSK/Algebra/Exp/Variant2bdb12cccd44c223371fffd4b823281c18eebf3d7417f2f37ef3fe4fcb138e64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad46cdfbdf95eceba674fb8044fdacdfa5abb95f6ae6d1aa08200d365b196c6d",
  "verification": {
    "reference": "docs/verification/Algebra/Exp/Variant2bdb12cccd44c223371fffd4b823281c18eebf3d7417f2f37ef3fe4fcb138e64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b235a15-21af-89df-7aca-71411ce8d8d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exp_mul_exp_neg_eq_one [Algebra ℚ A] : exp A * evalNegHom (exp A) = 1 := by
  convert! exp_mul_exp_eq_exp_add (1 : A) (-1) <;> simp

/-- Shows that $(e^{X})^k = e^{kX}$. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Exp/Variant2bdb12cccd44c223371fffd4b823281c18eebf3d7417f2f37ef3fe4fcb138e64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Exp/Variant2bdb12cccd44c223371fffd4b823281c18eebf3d7417f2f37ef3fe4fcb138e64.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec0df2033222548ef12d0ff90b4567f0453958c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
