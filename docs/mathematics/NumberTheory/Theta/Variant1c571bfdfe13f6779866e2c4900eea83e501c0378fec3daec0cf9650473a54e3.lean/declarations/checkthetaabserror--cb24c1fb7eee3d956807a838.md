# checkThetaAbsError

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d531fd5f78f3bf6cd0ce6d7c1de9eaf324ef51ed825365b8481058bb075bd896",
  "kind": "def",
  "lexical_name": "checkThetaAbsError",
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
  "slug": "checkthetaabserror--cb24c1fb7eee3d956807a838",
  "source": {
    "blob": "f8fc81ae9f509248c72474b0c860dbc05c8b3907",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 152,
    "path": "GRWTSK/NumberTheory/Theta/Variant1c571bfdfe13f6779866e2c4900eea83e501c0378fec3daec0cf9650473a54e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cb24c1fb7eee3d956807a8384508d2510b8af8c773a327e76589039110c0b548",
  "verification": {
    "reference": "docs/verification/NumberTheory/Theta/Variant1c571bfdfe13f6779866e2c4900eea83e501c0378fec3daec0cf9650473a54e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d531fd5f78f3bf6cd0ce6d7c1de9eaf324ef51ed825365b8481058bb075bd896`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def checkThetaAbsError (N : Nat) (bound : Rat) (depth : Nat := 20) : Bool :=
  decide (thetaUB N depth - (N : Rat) <= bound) &&
  decide ((N : Rat) - thetaLB N depth <= bound)

/-- If `checkThetaAbsError N bound depth` holds, then `|theta(N) - N| <= bound`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Theta/Variant1c571bfdfe13f6779866e2c4900eea83e501c0378fec3daec0cf9650473a54e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Theta/Variant1c571bfdfe13f6779866e2c4900eea83e501c0378fec3daec0cf9650473a54e3.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8fc81ae9f509248c72474b0c860dbc05c8b3907` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
