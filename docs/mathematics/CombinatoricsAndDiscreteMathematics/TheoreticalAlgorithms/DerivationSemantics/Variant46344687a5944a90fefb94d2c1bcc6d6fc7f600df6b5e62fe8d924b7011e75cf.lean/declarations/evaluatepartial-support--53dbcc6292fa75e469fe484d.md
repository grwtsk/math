# evaluatePartial_support

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:49a51e71-ebfc-2aa1-1b65-a2a07c43d1f7",
  "kind": "theorem",
  "lexical_name": "evaluatePartial_support",
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
  "slug": "evaluatepartial-support--53dbcc6292fa75e469fe484d",
  "source": {
    "blob": "5786f4bffd29885eb2509edc830f6b7e59639cb4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 71,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DerivationSemantics/Variant46344687a5944a90fefb94d2c1bcc6d6fc7f600df6b5e62fe8d924b7011e75cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53dbcc6292fa75e469fe484db62cde36424351ec0d09705b3b6335bd09971fe7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DerivationSemantics/Variant46344687a5944a90fefb94d2c1bcc6d6fc7f600df6b5e62fe8d924b7011e75cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49a51e71-ebfc-2aa1-1b65-a2a07c43d1f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem evaluatePartial_support (table : FiniteTable) (term : Term)
    (left right : ℕ → Option ℕ)
    (agree : ∀ index ∈ term.variableSupport, left index = right index) :
    evaluatePartial table left term = evaluatePartial table right term := by
  induction term with
  | «variable» index => exact agree index (Finset.mem_singleton_self index)
  | nullary constructor => rfl
  | unary constructor argument ih => simp only [evaluatePartial, ih agree]

/-- Missing substitution images preserve their original variables, matching `Term.substitute`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DerivationSemantics/Variant46344687a5944a90fefb94d2c1bcc6d6fc7f600df6b5e62fe8d924b7011e75cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DerivationSemantics/Variant46344687a5944a90fefb94d2c1bcc6d6fc7f600df6b5e62fe8d924b7011e75cf.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5786f4bffd29885eb2509edc830f6b7e59639cb4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
