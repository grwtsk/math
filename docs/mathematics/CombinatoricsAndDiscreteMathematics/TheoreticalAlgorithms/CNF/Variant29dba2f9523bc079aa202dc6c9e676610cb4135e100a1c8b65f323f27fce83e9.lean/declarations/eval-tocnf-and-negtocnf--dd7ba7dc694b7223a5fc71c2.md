# eval_toCNF_and_negToCNF

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3e7f0474cdb9cd11bf64cc7e8fe3e134524f6b10",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 260,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/29/29dba2f9523bc079aa202dc6c9e676610cb4135e100a1c8b65f323f27fce83e9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9187d66d-bc0e-6650-3727-b31eaa38971b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:40c57df4-c8b7-6938-fd7e-09f2a5f5a3cc",
  "kind": "theorem",
  "lexical_name": "eval_toCNF_and_negToCNF",
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
  "slug": "eval-tocnf-and-negtocnf--dd7ba7dc694b7223a5fc71c2",
  "source": {
    "blob": "3e7f0474cdb9cd11bf64cc7e8fe3e134524f6b10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 300,
    "line": 260,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variant29dba2f9523bc079aa202dc6c9e676610cb4135e100a1c8b65f323f27fce83e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd7ba7dc694b7223a5fc71c24d6a8e36d49da59a96543a244c854edc6673c647",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variant29dba2f9523bc079aa202dc6c9e676610cb4135e100a1c8b65f323f27fce83e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40c57df4-c8b7-6938-fd7e-09f2a5f5a3cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 260–300.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eval_toCNF_and_negToCNF
    (ν : Valuation α)
    (p : Formula α) :
    CNF.eval ν (toCNF p) = Formula.eval ν p ∧
      CNF.eval ν (negToCNF p) = !(Formula.eval ν p) := by
  induction p with
  | var a =>
      simp [toCNF, negToCNF, Formula.eval, CNF.literal, CNF.eval,
        CNF.evalClauses, CNF.Clause.eval, CNF.Literal.eval]
  | falsum => simp [toCNF, negToCNF, Formula.eval]
  | truth => simp [toCNF, negToCNF, Formula.eval]
  | neg p ih =>
      constructor
      · exact ih.2
      · cases hp : Formula.eval ν p <;>
          simp [negToCNF, Formula.eval, ih.1, hp]
  | conj p q ihp ihq =>
      constructor
      · simp [toCNF, Formula.eval, ihp.1, ihq.1]
      · cases hp : Formula.eval ν p <;>
          cases hq : Formula.eval ν q <;>
          simp [negToCNF, Formula.eval, ihp.2, ihq.2, hp, hq]
  | disj p q ihp ihq =>
      constructor
      · simp [toCNF, Formula.eval, ihp.1, ihq.1]
      · simp [negToCNF, Formula.eval, ihp.2, ihq.2]
  | impl p q ihp ihq =>
      constructor
      · simp [toCNF, Formula.eval, ihp.2, ihq.1]
      · simp [negToCNF, Formula.eval, ihp.1, ihq.2]
  | eqv p q ihp ihq =>
      constructor
      · cases hp : Formula.eval ν p <;>
          cases hq : Formula.eval ν q <;>
          simp [toCNF, Formula.eval, ihp.1, ihp.2, ihq.1, ihq.2,
            hp, hq]
      · cases hp : Formula.eval ν p <;>
          cases hq : Formula.eval ν q <;>
          simp [negToCNF, Formula.eval, ihp.1, ihp.2, ihq.1, ihq.2,
            hp, hq]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variant29dba2f9523bc079aa202dc6c9e676610cb4135e100a1c8b65f323f27fce83e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variant29dba2f9523bc079aa202dc6c9e676610cb4135e100a1c8b65f323f27fce83e9.lean#L260).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e7f0474cdb9cd11bf64cc7e8fe3e134524f6b10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
