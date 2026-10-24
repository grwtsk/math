# χ₈'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3f8a3770d3ac38402b746885622dc63f18c4a846d27a6b25958bf83915af9d83",
  "kind": "def",
  "lexical_name": "χ₈'",
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
  "slug": "anonymous--ec1989c42564ea22cccfcf26",
  "source": {
    "blob": "892f9b1db966c85191a4dbf6b65a5cd7cb8c89fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 187,
    "path": "GRWTSK/NumberTheory/ZModChar/Variant74bbf969e36a420ae7ef248991e4f88f1600f32b4f22dc33cd53241c7ca4db72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ec1989c42564ea22cccfcf268e207bc1764b6828f4870d37271e2266e78be441",
  "verification": {
    "reference": "docs/verification/NumberTheory/ZModChar/Variant74bbf969e36a420ae7ef248991e4f88f1600f32b4f22dc33cd53241c7ca4db72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3f8a3770d3ac38402b746885622dc63f18c4a846d27a6b25958bf83915af9d83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def χ₈' : MulChar (ZMod 8) ℤ where
  toFun := (![0, 1, 0, 1, 0, -1, 0, -1] : ZMod 8 → ℤ)
  map_one' := rfl
  map_mul' := by decide
  map_nonunit' := by decide
#align zmod.χ₈' ZMod.χ₈'

/-- `χ₈'` takes values in `{0, 1, -1}` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/ZModChar/Variant74bbf969e36a420ae7ef248991e4f88f1600f32b4f22dc33cd53241c7ca4db72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ZModChar/Variant74bbf969e36a420ae7ef248991e4f88f1600f32b4f22dc33cd53241c7ca4db72.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `892f9b1db966c85191a4dbf6b65a5cd7cb8c89fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
