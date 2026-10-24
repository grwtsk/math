# AutomorphismAction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a6e3e093800782fe5751bc073f718a166a049420dced735bd337f662a4967c66",
  "kind": "abbrev",
  "lexical_name": "AutomorphismAction",
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
  "slug": "automorphismaction--b684e991d80231519b95fb39",
  "source": {
    "blob": "9bd2460b2f7dac71a9209a7087883848a3caef30",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 18,
    "line": 15,
    "path": "GRWTSK/Algebra/GroupTheory/AutomorphismAction/Variantbf99fb92a8b1c2534631994c790fbae0987e2b1f240fe3a81bea9ab67a4867c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b684e991d80231519b95fb390750ba3a51030ecf90a4f472c33f4edee36fc932",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/AutomorphismAction/Variantbf99fb92a8b1c2534631994c790fbae0987e2b1f240fe3a81bea9ab67a4867c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a6e3e093800782fe5751bc073f718a166a049420dced735bd337f662a4967c66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 15–18.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev AutomorphismAction
    (Symmetry : Type u) (Object : Type v) [Group Symmetry] :=
  Mathematics.Federation.InternalAutomorphismAction Symmetry Object

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/AutomorphismAction/Variantbf99fb92a8b1c2534631994c790fbae0987e2b1f240fe3a81bea9ab67a4867c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/AutomorphismAction/Variantbf99fb92a8b1c2534631994c790fbae0987e2b1f240fe3a81bea9ab67a4867c1.lean#L15).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bd2460b2f7dac71a9209a7087883848a3caef30` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
