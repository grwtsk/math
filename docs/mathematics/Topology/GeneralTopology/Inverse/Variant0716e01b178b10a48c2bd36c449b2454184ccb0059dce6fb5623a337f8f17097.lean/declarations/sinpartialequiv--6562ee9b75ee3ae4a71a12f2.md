# sinPartialEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:222b530421cf0d9d72e4485a633baef456ffd558ca20d5794d6cdad6f977e7b1",
  "kind": "def",
  "lexical_name": "sinPartialEquiv",
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
  "slug": "sinpartialequiv--6562ee9b75ee3ae4a71a12f2",
  "source": {
    "blob": "de8e43747e7d1c254f92f37e442ae41a83441e47",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 441,
    "line": 432,
    "path": "GRWTSK/Topology/GeneralTopology/Inverse/Variant0716e01b178b10a48c2bd36c449b2454184ccb0059dce6fb5623a337f8f17097.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6562ee9b75ee3ae4a71a12f24d24683f222c576828062ca12f8263f714bce6a6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Inverse/Variant0716e01b178b10a48c2bd36c449b2454184ccb0059dce6fb5623a337f8f17097.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:222b530421cf0d9d72e4485a633baef456ffd558ca20d5794d6cdad6f977e7b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 432–441.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sinPartialEquiv : PartialEquiv ℝ ℝ where
  toFun := sin
  invFun := arcsin
  source := Icc (-(π / 2)) (π / 2)
  target := Icc (-1) 1
  map_source' x hx := by simpa [← abs_le] using abs_sin_le_one x
  map_target' θ hθ := arcsin_mem_Icc θ
  left_inv' θ hθ := arcsin_sin (by aesop) (by aesop)
  right_inv' x hx := sin_arcsin (by aesop) (by aesop)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Inverse/Variant0716e01b178b10a48c2bd36c449b2454184ccb0059dce6fb5623a337f8f17097.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Inverse/Variant0716e01b178b10a48c2bd36c449b2454184ccb0059dce6fb5623a337f8f17097.lean#L432).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de8e43747e7d1c254f92f37e442ae41a83441e47` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
