# Anonymous macro_rules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:febe1f047fe0c6ef0a30d0ecf8a3816c4a8e20ea8c551780379517f9d69b41b8",
  "kind": "macro_rules",
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
  "slug": "macro-rules--f8afdaaf6171adda5d8ddce4",
  "source": {
    "blob": "245dfd10a8e7b1c8c62c8513914d8f37f75705f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 379,
    "line": 355,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Notation/Variant84788268919d3b0b65acc15f11670dd60361444cc8fe9f1111c6c78760e2c835.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f8afdaaf6171adda5d8ddce44357d363579038e6cc7d9ae997780e04d3e01d96",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Notation/Variant84788268919d3b0b65acc15f11670dd60361444cc8fe9f1111c6c78760e2c835.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `macro_rules` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:febe1f047fe0c6ef0a30d0ecf8a3816c4a8e20ea8c551780379517f9d69b41b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 355–379.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
macro_rules | `($x • $y) => `(leftact% HSMul.hSMul $x $y)

recommended_spelling "or" for "|||" in [HOr.hOr, «term_|||_»]
recommended_spelling "xor" for "^^^" in [HXor.hXor, «term_^^^_»]
recommended_spelling "and" for "&&&" in [HAnd.hAnd, «term_&&&_»]
recommended_spelling "add" for "+" in [HAdd.hAdd, «term_+_»]
/-- when used as a binary operator -/
recommended_spelling "sub" for "-" in [HSub.hSub, «term_-_»]
recommended_spelling "mul" for "*" in [HMul.hMul, «term_*_»]
recommended_spelling "div" for "/" in [HDiv.hDiv, «term_/_»]
recommended_spelling "mod" for "%" in [HMod.hMod, «term_%_»]
recommended_spelling "pow" for "^" in [HPow.hPow, «term_^_»]
recommended_spelling "smul" for "•" in [HSMul.hSMul, «term_•_»]
recommended_spelling "append" for "++" in [HAppend.hAppend, «term_++_»]
/-- when used as a unary operator -/
recommended_spelling "neg" for "-" in [Neg.neg, «term-_»]
recommended_spelling "inv" for "⁻¹" in [Inv.inv, «term_⁻¹»]
recommended_spelling "dvd" for "∣" in [Dvd.dvd, «term_∣_»]
recommended_spelling "shiftLeft" for "<<<" in [HShiftLeft.hShiftLeft, «term_<<<_»]
recommended_spelling "shiftRight" for ">>>" in [HShiftRight.hShiftRight, «term_>>>_»]
recommended_spelling "not" for "~~~" in [Complement.complement, «term~~~_»]

-- TODO(kmill) remove these after stage0 update. There are builtin macros still using `«term_>=_»`
@[inherit_doc] infix:50 (priority := low) " >= " => GE.ge
@[inherit_doc] infix:50 (priority := low) " <= " => LE.le
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Notation/Variant84788268919d3b0b65acc15f11670dd60361444cc8fe9f1111c6c78760e2c835.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Notation/Variant84788268919d3b0b65acc15f11670dd60361444cc8fe9f1111c6c78760e2c835.lean#L355).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `245dfd10a8e7b1c8c62c8513914d8f37f75705f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
