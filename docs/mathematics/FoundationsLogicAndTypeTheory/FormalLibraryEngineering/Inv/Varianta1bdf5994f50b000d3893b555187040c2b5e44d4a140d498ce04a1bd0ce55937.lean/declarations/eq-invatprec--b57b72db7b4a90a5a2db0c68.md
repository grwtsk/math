# eq_invAtPrec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "84ec9c3a8894b1bbb0da0f0777e3dcc011f74659",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 174,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a1/a1bdf5994f50b000d3893b555187040c2b5e44d4a140d498ce04a1bd0ce55937.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:48534a55-f218-f3d5-c5f0-256a26c9ed72",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:873c2ea2-3072-b3e3-2537-563bfe915396",
  "kind": "theorem",
  "lexical_name": "eq_invAtPrec",
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
  "slug": "eq-invatprec--b57b72db7b4a90a5a2db0c68",
  "source": {
    "blob": "84ec9c3a8894b1bbb0da0f0777e3dcc011f74659",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 174,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Varianta1bdf5994f50b000d3893b555187040c2b5e44d4a140d498ce04a1bd0ce55937.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b57b72db7b4a90a5a2db0c6856b4929ed460f8f3118a049b01179c672c1b6c57",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Varianta1bdf5994f50b000d3893b555187040c2b5e44d4a140d498ce04a1bd0ce55937.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:873c2ea2-3072-b3e3-2537-563bfe915396`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_invAtPrec {x : Dyadic} (hx : 0 < x) {prec : Int} {y : Dyadic}
    (hp : y.precision ≤ some prec) (h1 : y * x ≤ 1)
    (h2 : 1 < (y + ofIntWithPrec 1 prec) * x) :
    y = invAtPrec x prec := by
  rw [invAtPrec_eq_divAtPrec_one]
  exact eq_divAtPrec hx hp h1 h2

/--
The equality `divAtPrec a b prec = a * invAtPrec b prec` does *not* hold in general:
`a * invAtPrec b prec` rounds `1/b` first and then multiplies, whereas `divAtPrec a b prec`
rounds `a/b` directly. The next two theorems pin the gap asymmetrically:

  `divAtPrec a b prec - a * 2 ^ (-prec) < a * invAtPrec b prec < divAtPrec a b prec + 2 ^ (-prec)`.

For nonneg `a` and positive `b`, `a * invAtPrec b prec` is less than `2 ^ (-prec)` larger
than `divAtPrec a b prec`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Varianta1bdf5994f50b000d3893b555187040c2b5e44d4a140d498ce04a1bd0ce55937.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Varianta1bdf5994f50b000d3893b555187040c2b5e44d4a140d498ce04a1bd0ce55937.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84ec9c3a8894b1bbb0da0f0777e3dcc011f74659` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
