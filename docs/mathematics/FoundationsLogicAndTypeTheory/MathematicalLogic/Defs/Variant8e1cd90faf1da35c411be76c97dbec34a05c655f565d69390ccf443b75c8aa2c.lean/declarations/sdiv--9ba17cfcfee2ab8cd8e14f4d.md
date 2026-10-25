# SDiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:507ed9366d926c50696869b5fb86f7236efbff89685a742579e37ebc768308dd",
  "kind": "class",
  "lexical_name": "SDiv",
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
  "slug": "sdiv--9ba17cfcfee2ab8cd8e14f4d",
  "source": {
    "blob": "837180ee9ab4a7e444a7bfd6f7ecfa26afbd71a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 74,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8e1cd90faf1da35c411be76c97dbec34a05c655f565d69390ccf443b75c8aa2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9ba17cfcfee2ab8cd8e14f4d1fc1eb056d4f86de69b0b86d49669f725e99a51f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8e1cd90faf1da35c411be76c97dbec34a05c655f565d69390ccf443b75c8aa2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:507ed9366d926c50696869b5fb86f7236efbff89685a742579e37ebc768308dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class SDiv (G : outParam Type*) (P : Type*) where
  /-- `a /ₛ b` computes the quotient of `a` and `b`. The meaning of this notation is
  type-dependent, but it is intended to be used for multiplicative torsors. -/
  sdiv : P → P → G

attribute [to_additive existing] SMul HSMul
attribute [to_additive (attr := default_instance)] instHSMul

initialize_simps_projections VAdd

attribute [ext] SMul VAdd

@[inherit_doc] infixr:65 " +ᵥ " => HVAdd.hVAdd
@[inherit_doc] infixl:65 " -ᵥ " => VSub.vsub
@[inherit_doc] infixl:65 " /ₛ " => SDiv.sdiv

recommended_spelling "vadd" for "+ᵥ" in [HVAdd.hVAdd, «term_+ᵥ_»]
recommended_spelling "vsub" for "-ᵥ" in [VSub.vsub, «term_-ᵥ_»]
recommended_spelling "sdiv" for "/ₛ" in [SDiv.sdiv, «term_/ₛ_»]

section Star

/-- Notation typeclass (with no default notation!) for an algebraic structure with a star operation.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8e1cd90faf1da35c411be76c97dbec34a05c655f565d69390ccf443b75c8aa2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant8e1cd90faf1da35c411be76c97dbec34a05c655f565d69390ccf443b75c8aa2c.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `837180ee9ab4a7e444a7bfd6f7ecfa26afbd71a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
