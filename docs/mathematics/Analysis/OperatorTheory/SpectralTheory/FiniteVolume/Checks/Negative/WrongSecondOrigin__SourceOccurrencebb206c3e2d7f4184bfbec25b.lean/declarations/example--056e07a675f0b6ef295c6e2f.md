# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f17e4c18580e70dc0c1ea64f08c51a96946aeb1310b5f1afefb3ae91e074deba",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--056e07a675f0b6ef295c6e2f",
  "source": {
    "blob": "a4997698144419b4f6691ec5c9f5ca32991244ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 10,
    "line": 3,
    "path": "GRWTSK/Analysis/OperatorTheory/SpectralTheory/FiniteVolume/Checks/Negative/WrongSecondOrigin.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:056e07a675f0b6ef295c6e2f003816605255a79a8a25afd4d72cc3d0a6d5d856",
  "verification": {
    "reference": "docs/verification/Analysis/OperatorTheory/SpectralTheory/FiniteVolume/Checks/Negative/WrongSecondOrigin__SourceOccurrencebb206c3e2d7f4184bfbec25b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f17e4c18580e70dc0c1ea64f08c51a96946aeb1310b5f1afefb3ae91e074deba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3–10.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example : cutHamiltonian 2 (1/2) 3 0 0 0 1 1 = hamiltonian 1 (1/2) 3 0 0 0 0 := by
  change hamiltonian 2 (1/2) 3 0 0 ⟨1,by decide⟩ ⟨1,by decide⟩ -
    joiningEdge 2 0 ⟨1,by decide⟩ ⟨1,by decide⟩ =
    hamiltonian 1 (1/2) 3 0 0 0 0
  simp only [hamiltonian, Matrix.add_apply, Matrix.diagonal_apply,
    freeDirichlet, joiningEdge]
  norm_num [
    GRWTSK.LinearAlgebra.Sturmian.potential, GRWTSK.LinearAlgebra.Sturmian.bit, Int.fract]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../verification/Analysis/OperatorTheory/SpectralTheory/FiniteVolume/Checks/Negative/WrongSecondOrigin__SourceOccurrencebb206c3e2d7f4184bfbec25b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/OperatorTheory/SpectralTheory/FiniteVolume/Checks/Negative/WrongSecondOrigin.lean#L3).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4997698144419b4f6691ec5c9f5ca32991244ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
