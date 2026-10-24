# Anonymous macro_rules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cf260b04ee6cd2acd9a34a77079de697cfba0ec417df2339da53e0958b10910f",
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
  "slug": "macro-rules--32e7e6c2fb392bf8c8c59c0f",
  "source": {
    "blob": "6a86d3cb0f9ffbd1bed45fb6a41f33bb895121bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 435,
    "line": 394,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Notation/Variant0a064de7925f6bb8f28ee9e6874076c59fb11f4f507dafd730187596843ce4d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:32e7e6c2fb392bf8c8c59c0f2d04d7578617014bb321193be4a83f1fc7f90ccd",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Notation/Variant0a064de7925f6bb8f28ee9e6874076c59fb11f4f507dafd730187596843ce4d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `macro_rules` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cf260b04ee6cd2acd9a34a77079de697cfba0ec417df2339da53e0958b10910f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 394–435.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
macro_rules | `($x == $y) => `(binrel_no_prop% BEq.beq $x $y)

recommended_spelling "le" for "≤" in [LE.le, «term_≤_»]
recommended_spelling "lt" for "<" in [LT.lt, «term_<_»]
recommended_spelling "gt" for ">" in [GT.gt, «term_>_»]
recommended_spelling "ge" for "≥" in [GE.ge, «term_≥_»]
recommended_spelling "eq" for "=" in [Eq, «term_=_»]
recommended_spelling "beq" for "==" in [BEq.beq, «term_==_»]
recommended_spelling "heq" for "≍" in [HEq, «term_≍_»]

@[inherit_doc] infixr:35 unicode(" ∧ ", " /\\ ") => And
@[inherit_doc] infixr:30 unicode(" ∨ ", " \\/ ") => Or
@[inherit_doc] notation:max "¬" p:40 => Not p

recommended_spelling "and" for "∧" in [And, «term_∧_»]
recommended_spelling "or" for "∨" in [Or, «term_∨_»]
recommended_spelling "not" for "¬" in [Not, «term¬_»]

@[inherit_doc] infixl:35 " && " => and
@[inherit_doc] infixl:30 " || " => or
@[inherit_doc] notation:max "!" b:40 => not b

recommended_spelling "and" for "&&" in [and, «term_&&_»]
recommended_spelling "or" for "||" in [and, «term_||_»]
recommended_spelling "not" for "!" in [not, «term!_»]

@[inherit_doc] notation:50 a:50 " ∈ " b:50 => Membership.mem b a
/-- `a ∉ b` is negated elementhood. It is notation for `¬ (a ∈ b)`. -/
notation:50 a:50 " ∉ " b:50 => ¬ (a ∈ b)

recommended_spelling "mem" for "∈" in [Membership.mem, «term_∈_»]
recommended_spelling "notMem" for "∉" in [«term_∉_»]

@[inherit_doc] infixr:67 " :: " => List.cons
@[inherit_doc] infixr:100 " <$> " => Functor.map
@[inherit_doc] infixl:55  " >>= " => Bind.bind
@[inherit_doc HOrElse.hOrElse]   syntax:20 term:21 " <|> " term:20 : term
@[inherit_doc HAndThen.hAndThen] syntax:60 term:61 " >> " term:60 : term
@[inherit_doc Seq.seq]           syntax:60 term:60 " <*> " term:61 : term
@[inherit_doc SeqLeft.seqLeft]   syntax:60 term:60 " <* " term:61 : term
@[inherit_doc SeqRight.seqRight] syntax:60 term:60 " *> " term:61 : term

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Notation/Variant0a064de7925f6bb8f28ee9e6874076c59fb11f4f507dafd730187596843ce4d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Notation/Variant0a064de7925f6bb8f28ee9e6874076c59fb11f4f507dafd730187596843ce4d0.lean#L394).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a86d3cb0f9ffbd1bed45fb6a41f33bb895121bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
