# resCoindAdjunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2419c83b780d5b1e44a3b272fe360666b5b96bc379448187093cc091d7ff8ea3",
  "kind": "abbrev",
  "lexical_name": "resCoindAdjunction",
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
  "slug": "rescoindadjunction--333dff7a133b33da5f039c2d",
  "source": {
    "blob": "6ecfd42b7283c0c05e42ead1a6b873dfbffd4f2c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 307,
    "line": 302,
    "path": "GRWTSK/Algebra/LinearAlgebra/Coinduced/Variantbe752066e8ad735d9fcd5d112632739e321082c28fcd5ad51831ecc388beacd5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:333dff7a133b33da5f039c2d3a6f07a4e2451665adb0456b73672e7cc6301ab4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Coinduced/Variantbe752066e8ad735d9fcd5d112632739e321082c28fcd5ad51831ecc388beacd5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2419c83b780d5b1e44a3b272fe360666b5b96bc379448187093cc091d7ff8ea3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–307.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable abbrev resCoindAdjunction : resFunctor.{max w t} φ ⊣ coindFunctor k φ :=
  Adjunction.mkOfHomEquiv {
    homEquiv X Y := (resCoindHomEquiv φ X Y).toEquiv
    homEquiv_naturality_left_symm := by intros; rfl
    homEquiv_naturality_right := by intros; ext; rfl }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Coinduced/Variantbe752066e8ad735d9fcd5d112632739e321082c28fcd5ad51831ecc388beacd5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Coinduced/Variantbe752066e8ad735d9fcd5d112632739e321082c28fcd5ad51831ecc388beacd5.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ecfd42b7283c0c05e42ead1a6b873dfbffd4f2c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
