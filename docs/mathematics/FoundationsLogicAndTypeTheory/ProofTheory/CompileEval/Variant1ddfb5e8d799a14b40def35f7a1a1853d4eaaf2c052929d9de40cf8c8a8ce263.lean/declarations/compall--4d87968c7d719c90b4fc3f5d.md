# compAll

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8714067a0661b0fbce7334ebbc21db8b36bdde57d9e9a9b0d340967414437bf0",
  "kind": "def",
  "lexical_name": "compAll",
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
  "slug": "compall--4d87968c7d719c90b4fc3f5d",
  "source": {
    "blob": "5d4c9d2dd6e90a8f9467601f7e0df00e46faa147",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 114,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/CompileEval/Variant1ddfb5e8d799a14b40def35f7a1a1853d4eaaf2c052929d9de40cf8c8a8ce263.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4d87968c7d719c90b4fc3f5d43f98ce60781f8da93ae90f4e7101715faddf5f8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ProofTheory/CompileEval/Variant1ddfb5e8d799a14b40def35f7a1a1853d4eaaf2c052929d9de40cf8c8a8ce263.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8714067a0661b0fbce7334ebbc21db8b36bdde57d9e9a9b0d340967414437bf0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  private def compAll {K : KernelPresentation.{u}} {js : List K.Judgment} :
      IndexedAll (RawDer K) js → IndexedAll (TreePlan K) js
    | .nil => .nil
    | .cons head tail => .cons (Comp head) (compAll tail)
end

mutual
  /--
  Structural compilation followed by evaluation returns the original
  derivation.

  **Architectural problem:** The planning representation needs a kernel-checked
  recovery theorem rather than an external hash comparison.

  **Important data and indices:** Presentation, exact root judgment, rules,
  premise order, and all scoped children are shared by both sides.

  **Type-enforced invariant:** `Comp` and `Eval` cannot change the root or child
  indices in the theorem statement.

  **Layer boundary:** This is abstract structural recovery, not Lean elaboration
  or source-to-kernel trace recovery.

  **Worked example:** For the toy proof of `P → P` and for the internal-constant
  example, `Eval (Comp derivation)` contains exactly the original rule and leaf
  constructors in the original order.

  **Used by:** `CompB`, all metric/reference preservation theorems below, and
  the M1a axiom-audit evidence use this theorem as their recovery witness.

  **Proof idea:** Structural induction on `derivation`, paired with induction on
  its `IndexedAll` children, reduces each node to the induction hypotheses.

  **Equality notion:** The conclusion is propositional equality of the complete
  represented inductive syntax.  It is not merely definitional equality after
  normalization, alpha-equivalence, proof irrelevance of rule data, or equality
  of a historical Lean kernel trace.

  **Boundary cases:** Empty-premise leaves are the base case.  The theorem allows
  internal constants and makes no boundary-closure claim; `eval_compB` adds that
  result only when the original derivation already satisfies `BClosed`.

  **Validation consequence:** A checked proof rules out structural information
  loss in M1a `Comp`; it does not certify a concrete Lean adapter, DAG sharing,
  source transformation, or accepted atomization run.
  -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/CompileEval/Variant1ddfb5e8d799a14b40def35f7a1a1853d4eaaf2c052929d9de40cf8c8a8ce263.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/CompileEval/Variant1ddfb5e8d799a14b40def35f7a1a1853d4eaaf2c052929d9de40cf8c8a8ce263.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d4c9d2dd6e90a8f9467601f7e0df00e46faa147` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
