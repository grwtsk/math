# eval_toCNF_and_negToCNF

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0c0a4812-c093-3dbf-69d6-2c6e507a57c9",
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
  "slug": "eval-tocnf-and-negtocnf--7246b46f0a60daaa7f098deb",
  "source": {
    "blob": "7bd7d1e2cf0af415589435c2b71a17ead5cf7c23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 308,
    "line": 268,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variantb0e6940675bbab06d9967fcd41e019b25932a4cc27c4ca22fee882ceed5f4468.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7246b46f0a60daaa7f098debaac9590a2c6de3d8585f055e220f9c54de7832ba",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variantb0e6940675bbab06d9967fcd41e019b25932a4cc27c4ca22fee882ceed5f4468.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c0a4812-c093-3dbf-69d6-2c6e507a57c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–308.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variantb0e6940675bbab06d9967fcd41e019b25932a4cc27c4ca22fee882ceed5f4468.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variantb0e6940675bbab06d9967fcd41e019b25932a4cc27c4ca22fee882ceed5f4468.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7bd7d1e2cf0af415589435c2b71a17ead5cf7c23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
