# union

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4549b77dac1911ea5c9d600076d74fb3007553c37cc7faf53025a51d373908a9",
  "kind": "def",
  "lexical_name": "union",
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
  "slug": "union--40b16f7c502aab7fcfeff013",
  "source": {
    "blob": "5661493b0d1950c7223c60732214732a154e5840",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 21,
    "line": 21,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ClassicalSmoothAnalytic/Variant66e17b879999014a8a32cef5099f0baf32fa5b5fdba0340d0fb54819c12ad8c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:40b16f7c502aab7fcfeff0132f1cc0b2acf8ed36e72d8b4864b6775563c5054a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ClassicalSmoothAnalytic/Variant66e17b879999014a8a32cef5099f0baf32fa5b5fdba0340d0fb54819c12ad8c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4549b77dac1911ea5c9d600076d74fb3007553c37cc7faf53025a51d373908a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–21.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def union (A B : Finset α) : Finset α := { elems := A.elems ++ B.elems }
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ClassicalSmoothAnalytic/Variant66e17b879999014a8a32cef5099f0baf32fa5b5fdba0340d0fb54819c12ad8c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ClassicalSmoothAnalytic/Variant66e17b879999014a8a32cef5099f0baf32fa5b5fdba0340d0fb54819c12ad8c7.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5661493b0d1950c7223c60732214732a154e5840` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
