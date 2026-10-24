# _root_.GRWTSK.Algebra.LinearAlgebra.FgOfFgMapOfFgInfKer.Variant224da0b5a6aaf349c5d492a924c43a606e14151193398eb44b65dbac7424de04.Module.Finite.of_submodule_quotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7a8130aa-8654-2778-1cd5-f9d8ee0b10b8",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.FgOfFgMapOfFgInfKer.Variant224da0b5a6aaf349c5d492a924c43a606e14151193398eb44b65dbac7424de04.Module.Finite.of_submodule_quotient",
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
  "slug": "root-grwtsk-algebra-linearalgebra-fgoffgmapoffginfker-variant224da0b5a6a--c570677c3c479c86687a93f2",
  "source": {
    "blob": "d2e7aed1ee7a4e68944b7214107d1859914cac15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 118,
    "path": "GRWTSK/Algebra/LinearAlgebra/Finsupp/Variantb63aaf7148f20843b6e436bfd079d69cef788056ae9176a0fda1746bedb60004.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c570677c3c479c86687a93f253985243f17177ae7018235749b04a0d8fb6a55f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Finsupp/Variantb63aaf7148f20843b6e436bfd079d69cef788056ae9176a0fda1746bedb60004.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a8130aa-8654-2778-1cd5-f9d8ee0b10b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.LinearAlgebra.FgOfFgMapOfFgInfKer.Variant224da0b5a6aaf349c5d492a924c43a606e14151193398eb44b65dbac7424de04.Module.Finite.of_submodule_quotient (N : Submodule R M) [Module.Finite R N]
    [Module.Finite R (M ⧸ N)] : Module.Finite R M where
  fg_top := fg_of_fg_map_of_fg_inf_ker N.mkQ
    (by simpa only [map_top, range_mkQ] using Module.finite_def.mp ‹_›) <| by
    simpa only [top_inf_eq, ker_mkQ] using Module.Finite.iff_fg.mp ‹_›

end Submodule

section

variable {R V} [Semiring R] [AddCommMonoid V] [Module R V]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Finsupp/Variantb63aaf7148f20843b6e436bfd079d69cef788056ae9176a0fda1746bedb60004.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Finsupp/Variantb63aaf7148f20843b6e436bfd079d69cef788056ae9176a0fda1746bedb60004.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2e7aed1ee7a4e68944b7214107d1859914cac15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
