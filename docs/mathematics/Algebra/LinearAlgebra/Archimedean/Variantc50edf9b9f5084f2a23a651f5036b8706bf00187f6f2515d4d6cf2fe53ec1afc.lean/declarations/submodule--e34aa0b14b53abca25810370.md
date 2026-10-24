# submodule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:42161278712f1b1d8f5b4e326e1b9db6e722d2fea170482d9329891155cd05ea",
  "kind": "def",
  "lexical_name": "submodule",
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
  "slug": "submodule--e34aa0b14b53abca25810370",
  "source": {
    "blob": "08c1f01409dc2026e99dff7ca4093a36fee5c535",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 63,
    "path": "GRWTSK/Algebra/LinearAlgebra/Archimedean/Variantc50edf9b9f5084f2a23a651f5036b8706bf00187f6f2515d4d6cf2fe53ec1afc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e34aa0b14b53abca258103708eddb1e19267de1e3ad82322223cd283c4ffb2f5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Archimedean/Variantc50edf9b9f5084f2a23a651f5036b8706bf00187f6f2515d4d6cf2fe53ec1afc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:42161278712f1b1d8f5b4e326e1b9db6e722d2fea170482d9329891155cd05ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def submodule (s : UpperSet (FiniteArchimedeanClass M)) : Submodule K M where
  __ := addSubgroup s
  smul_mem' k {a} ha ne := s.upper (ArchimedeanClass.mk_le_mk_smul ..) <|
    ha fun eq ↦ ne <| by simp [ArchimedeanClass.mk_eq_top_iff.mp eq]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Archimedean/Variantc50edf9b9f5084f2a23a651f5036b8706bf00187f6f2515d4d6cf2fe53ec1afc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Archimedean/Variantc50edf9b9f5084f2a23a651f5036b8706bf00187f6f2515d4d6cf2fe53ec1afc.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08c1f01409dc2026e99dff7ca4093a36fee5c535` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
