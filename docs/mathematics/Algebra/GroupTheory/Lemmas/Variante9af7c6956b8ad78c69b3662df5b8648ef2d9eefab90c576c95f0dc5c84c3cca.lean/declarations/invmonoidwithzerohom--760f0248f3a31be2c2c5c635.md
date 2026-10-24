# invMonoidWithZeroHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:033a65a414a58db450758f21ebaabfc5766677b616bf7d1aa844a53d6508f0b3",
  "kind": "def",
  "lexical_name": "invMonoidWithZeroHom",
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
  "slug": "invmonoidwithzerohom--760f0248f3a31be2c2c5c635",
  "source": {
    "blob": "5fbd5d9df8a2a5d10a4342ffb0cae00b5e11fe90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 122,
    "path": "GRWTSK/Algebra/GroupTheory/Lemmas/Variante9af7c6956b8ad78c69b3662df5b8648ef2d9eefab90c576c95f0dc5c84c3cca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:760f0248f3a31be2c2c5c63560bc08c2edea099263b9957c06c06cad3fa002e8",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Lemmas/Variante9af7c6956b8ad78c69b3662df5b8648ef2d9eefab90c576c95f0dc5c84c3cca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:033a65a414a58db450758f21ebaabfc5766677b616bf7d1aa844a53d6508f0b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def invMonoidWithZeroHom {G₀ : Type*} [CommGroupWithZero G₀] : G₀ →*₀ G₀ :=
  { invMonoidHom with map_zero' := inv_zero }

/-- If a monoid homomorphism `f` between two `GroupWithZero`s maps `0` to `0`, then it maps `x^n`,
`n : ℤ`, to `(f x)^n`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Lemmas/Variante9af7c6956b8ad78c69b3662df5b8648ef2d9eefab90c576c95f0dc5c84c3cca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Lemmas/Variante9af7c6956b8ad78c69b3662df5b8648ef2d9eefab90c576c95f0dc5c84c3cca.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fbd5d9df8a2a5d10a4342ffb0cae00b5e11fe90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
