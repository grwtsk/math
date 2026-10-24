# zeroFillShift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eea241e6fdd832a932c43af6740bc997cba3a3891eec424fa882a32a0daf0f94",
  "kind": "def",
  "lexical_name": "zeroFillShift",
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
  "slug": "zerofillshift--9a38ac2b0415bf43bf10bf8a",
  "source": {
    "blob": "5880ee9d4a1170c20b134156a96898dbf845419a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 26,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ShiftSemantics/Varianteedf0c1998c0e422cb834dfb6a8244790413d9d63df419801360a53c93b72167.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9a38ac2b0415bf43bf10bf8ac5f77284b880d66def79515506cf5f0e6da01750",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ShiftSemantics/Varianteedf0c1998c0e422cb834dfb6a8244790413d9d63df419801360a53c93b72167.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eea241e6fdd832a932c43af6740bc997cba3a3891eec424fa882a32a0daf0f94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def zeroFillShift
    (amount width : Nat)
    (bitfield : BooleanBitfield width) :
    BooleanBitfield width :=
  fun index =>
    if inRange : index.val + amount < width then
      bitfield ⟨index.val + amount, inRange⟩
    else
      false

/-- A logical shift carries its exact Hamming-Lipschitz theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ShiftSemantics/Varianteedf0c1998c0e422cb834dfb6a8244790413d9d63df419801360a53c93b72167.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ShiftSemantics/Varianteedf0c1998c0e422cb834dfb6a8244790413d9d63df419801360a53c93b72167.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5880ee9d4a1170c20b134156a96898dbf845419a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
