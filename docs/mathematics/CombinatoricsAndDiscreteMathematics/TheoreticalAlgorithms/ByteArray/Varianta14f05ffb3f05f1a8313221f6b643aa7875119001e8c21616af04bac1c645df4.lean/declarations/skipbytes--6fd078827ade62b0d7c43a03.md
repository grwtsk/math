# skipBytes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cade9d9f22466f4c1ce3aa3dc1f9d254710d417076aff68626a20bdb242ca6d9",
  "kind": "def",
  "lexical_name": "skipBytes",
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
  "slug": "skipbytes--6fd078827ade62b0d7c43a03",
  "source": {
    "blob": "8727f6f16969e4dcbe25f12c387ef7efb7bc1bf6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 67,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteArray/Varianta14f05ffb3f05f1a8313221f6b643aa7875119001e8c21616af04bac1c645df4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6fd078827ade62b0d7c43a03dcbdd00a88669bf86c54c285d151bb947fbde5ef",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteArray/Varianta14f05ffb3f05f1a8313221f6b643aa7875119001e8c21616af04bac1c645df4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cade9d9f22466f4c1ce3aa3dc1f9d254710d417076aff68626a20bdb242ca6d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def skipBytes (arr : ByteArray) : Parser Unit := fun it =>
  let rec go (idx : Nat) (it : ByteArray.Iterator) : ParseResult Unit ByteArray.Iterator :=
    if h : idx < arr.size then
      if hnext : it.hasNext then
        let got := it.curr' hnext
        let want := arr[idx]
        if got = want then
          go (idx + 1) (it.next' hnext)
        else
          .error it (.other s!"expected byte {want}, got {got}")
      else
        .error it .eof
    else
      .success it ()
  go 0 it

/--
Parse a string by matching its UTF-8 bytes, returns the string on success.
-/
@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteArray/Varianta14f05ffb3f05f1a8313221f6b643aa7875119001e8c21616af04bac1c645df4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteArray/Varianta14f05ffb3f05f1a8313221f6b643aa7875119001e8c21616af04bac1c645df4.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8727f6f16969e4dcbe25f12c387ef7efb7bc1bf6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
