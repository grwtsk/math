# BoolMatrix.entry_zeros

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b8a8526c-3f1b-0316-7903-c7c70794f8c3",
  "kind": "theorem",
  "lexical_name": "BoolMatrix.entry_zeros",
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
  "slug": "boolmatrix-entry-zeros--23c68a24b32d77b84a2b2d76",
  "source": {
    "blob": "2e45c4dd51828cc482e2484aa7821ad4b664104e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 58,
    "path": "GRWTSK/Algebra/LinearAlgebra/Operations/Variant9e696def525405e93a6ae73813ae26294096ab2c4c44a2523add78178642060e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23c68a24b32d77b84a2b2d760e1fed1b60c7b86a523ee9fc678aec6814ce2521",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Operations/Variant9e696def525405e93a6ae73813ae26294096ab2c4c44a2523add78178642060e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8a8526c-3f1b-0316-7903-c7c70794f8c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem BoolMatrix.entry_zeros
    (i : Fin rows)
    (j : Fin cols) :
    BoolMatrix.entry (BoolMatrix.zeros : BoolMatrix rows cols) i j = false :=
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Operations/Variant9e696def525405e93a6ae73813ae26294096ab2c4c44a2523add78178642060e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Operations/Variant9e696def525405e93a6ae73813ae26294096ab2c4c44a2523add78178642060e.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e45c4dd51828cc482e2484aa7821ad4b664104e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
