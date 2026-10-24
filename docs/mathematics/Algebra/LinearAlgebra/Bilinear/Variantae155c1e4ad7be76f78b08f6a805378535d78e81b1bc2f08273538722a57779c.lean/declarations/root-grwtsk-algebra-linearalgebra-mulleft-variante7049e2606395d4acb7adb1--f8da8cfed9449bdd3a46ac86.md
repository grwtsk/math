# _root_.GRWTSK.Algebra.LinearAlgebra.MulLeft.Variante7049e2606395d4acb7adb1dc1eb657dfc2e66e6e2e5e243701db36f02199048.Algebra.lmul_isUnit_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:18666184-3ed4-8160-40b5-b96574f88131",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.MulLeft.Variante7049e2606395d4acb7adb1dc1eb657dfc2e66e6e2e5e243701db36f02199048.Algebra.lmul_isUnit_iff",
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
  "slug": "root-grwtsk-algebra-linearalgebra-mulleft-variante7049e2606395d4acb7adb1--f8da8cfed9449bdd3a46ac86",
  "source": {
    "blob": "2d5473f7f06fa3cb47f25f0ff0f72409380b7d6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 249,
    "path": "GRWTSK/Algebra/LinearAlgebra/Bilinear/Variantae155c1e4ad7be76f78b08f6a805378535d78e81b1bc2f08273538722a57779c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8da8cfed9449bdd3a46ac8660784c15b86627cc9b9d341bdf64324e03d12dbd",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Bilinear/Variantae155c1e4ad7be76f78b08f6a805378535d78e81b1bc2f08273538722a57779c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18666184-3ed4-8160-40b5-b96574f88131`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 249–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.LinearAlgebra.MulLeft.Variante7049e2606395d4acb7adb1dc1eb657dfc2e66e6e2e5e243701db36f02199048.Algebra.lmul_isUnit_iff {x : A} :
    IsUnit (Algebra.lmul R A x) ↔ IsUnit x := by
  rw [Module.End.isUnit_iff, Iff.comm]
  exact IsUnit.isUnit_iff_mulLeft_bijective

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Bilinear/Variantae155c1e4ad7be76f78b08f6a805378535d78e81b1bc2f08273538722a57779c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Bilinear/Variantae155c1e4ad7be76f78b08f6a805378535d78e81b1bc2f08273538722a57779c.lean#L249).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d5473f7f06fa3cb47f25f0ff0f72409380b7d6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
