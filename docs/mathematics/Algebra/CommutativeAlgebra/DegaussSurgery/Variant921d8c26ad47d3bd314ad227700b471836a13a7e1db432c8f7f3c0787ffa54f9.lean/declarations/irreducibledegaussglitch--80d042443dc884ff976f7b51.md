# IrreducibleDegaussGlitch

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:72aec7115e5bb294056005de39d54fff348fcf944e47c0f6f5fb46809cd4761d",
  "kind": "structure",
  "lexical_name": "IrreducibleDegaussGlitch",
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
  "slug": "irreducibledegaussglitch--80d042443dc884ff976f7b51",
  "source": {
    "blob": "752fd3ee616f3d4b65856f4ef351a54c467c540b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 84,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/DegaussSurgery/Variant921d8c26ad47d3bd314ad227700b471836a13a7e1db432c8f7f3c0787ffa54f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:80d042443dc884ff976f7b51a5a0da707cea1e3c5f2252cbc865012c40bd48d6",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/DegaussSurgery/Variant921d8c26ad47d3bd314ad227700b471836a13a7e1db432c8f7f3c0787ffa54f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:72aec7115e5bb294056005de39d54fff348fcf944e47c0f6f5fb46809cd4761d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure IrreducibleDegaussGlitch
    (_G : GlitchedDegaussRuleset) : Prop where
  noPolynomialSmoothing :
    ¬ ∃ S : SmoothDegaussRuleset, S.moveClass = _G.moveClass

/--
Degauss arrangement target.

Every finite frame is intended to support halo surgery, and the resulting
move class should classify as smooth or glitched.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/DegaussSurgery/Variant921d8c26ad47d3bd314ad227700b471836a13a7e1db432c8f7f3c0787ffa54f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/DegaussSurgery/Variant921d8c26ad47d3bd314ad227700b471836a13a7e1db432c8f7f3c0787ffa54f9.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `752fd3ee616f3d4b65856f4ef351a54c467c540b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
