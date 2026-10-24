# transportToMatrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f51e8ccc42ea524f998881e93b422df0cecf44154cef2903e6f3e814354774a7",
  "kind": "def",
  "lexical_name": "transportToMatrix",
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
  "slug": "transporttomatrix--9fd4e57c307343210a2f008e",
  "source": {
    "blob": "95b399593217b321fe2654386f10f351d6731b27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 62,
    "path": "GRWTSK/Algebra/GaloisFieldRound/Varianta77c309892f38b97b4248a62c9a90680970ea1a37f0acf7062f46cca01e6d1ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9fd4e57c307343210a2f008e618e6d657492fb665171257a0ad11e29228e70d4",
  "verification": {
    "reference": "docs/verification/Algebra/GaloisFieldRound/Varianta77c309892f38b97b4248a62c9a90680970ea1a37f0acf7062f46cca01e6d1ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f51e8ccc42ea524f998881e93b422df0cecf44154cef2903e6f3e814354774a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def transportToMatrix
    (E : BinMatFieldEncoding F m n)
    (R : F ≃ F) :
    BinMat m n ≃ BinMat m n :=
  (E.code.symm.trans R).trans E.code

/--
Row-major flattening intertwines matrix transport with the existing transport
of the derived bit representation.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GaloisFieldRound/Varianta77c309892f38b97b4248a62c9a90680970ea1a37f0acf7062f46cca01e6d1ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GaloisFieldRound/Varianta77c309892f38b97b4248a62c9a90680970ea1a37f0acf7062f46cca01e6d1ee.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95b399593217b321fe2654386f10f351d6731b27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
