# Pi.evalMulHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a130be906c88d3b0b67f7c25ee434d67c44a6263fdb76204bb5207fa719524ec",
  "kind": "def",
  "lexical_name": "Pi.evalMulHom",
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
  "slug": "pi-evalmulhom--a6fc89703a6abea338914add",
  "source": {
    "blob": "e9ea27487a7d8ac215e656579adfacd7de1c75d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 104,
    "path": "GRWTSK/Algebra/GroupTheory/Lemmas/Variant0528e7440acf34ed318de22f1c4fe0067ba1dc31d5e59d8dab61aec835aec99d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a6fc89703a6abea338914add5d02c51e48376d4f4c221aa38a7ba3ae1acdcb02",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Lemmas/Variant0528e7440acf34ed318de22f1c4fe0067ba1dc31d5e59d8dab61aec835aec99d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a130be906c88d3b0b67f7c25ee434d67c44a6263fdb76204bb5207fa719524ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Pi.evalMulHom (i : I) : (∀ i, f i) →ₙ* f i where
  toFun g := g i
  map_mul' _ _ := Pi.mul_apply _ _ i

/-- A family of MulHom's `f i : M i →ₙ* N i` defines a MulHom
`MulHom.piMap f : (Π i, M i) →ₙ* (Π i, N i)`
given by `MulHom.piMap f x i = f i x`. This is `Pi.map` for `MulHom`s. -/
@[to_additive (attr := simps!)
  /-- A family of AddHom's `f i : M i →ₙ+ N i` defines an AddHom
  `AddHom.piMap f : (Π i, M i) →ₙ+ (Π i, N i)`
  given by `AddHom.piMap f x i = f i x`. This is `Pi.map` for `AddHom`s. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Lemmas/Variant0528e7440acf34ed318de22f1c4fe0067ba1dc31d5e59d8dab61aec835aec99d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Lemmas/Variant0528e7440acf34ed318de22f1c4fe0067ba1dc31d5e59d8dab61aec835aec99d.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9ea27487a7d8ac215e656579adfacd7de1c75d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
