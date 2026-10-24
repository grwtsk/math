# FormulaTree.toSOPNnf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:936bad5cfe965e7698d8874f5ea84a1ac34f65f3629e8fc5263a85ae7975e4fa",
  "kind": "def",
  "lexical_name": "FormulaTree.toSOPNnf",
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
  "slug": "formulatree-tosopnnf--e2baabb03e0df37f55bd4715",
  "source": {
    "blob": "a73a2c7c1cd60412183a621805c9b858e02ce37f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 112,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SOP/Varianta74c4ff307ec4b874baf84beb1b00d399b87de62c1bc5e30f1a071e33d9dafac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e2baabb03e0df37f55bd4715a20f2bc685e54ca80410004670181c08ccb8f1a1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SOP/Varianta74c4ff307ec4b874baf84beb1b00d399b87de62c1bc5e30f1a071e33d9dafac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:936bad5cfe965e7698d8874f5ea84a1ac34f65f3629e8fc5263a85ae7975e4fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def FormulaTree.toSOPNnf : FormulaTree α → SumOfProducts α
  | .var a => [[Literal.pos a]]
  | .falsum => []
  | .truth => [[]]
  | .neg (.var a) => [[Literal.neg a]]
  | .neg .falsum => [[]]
  | .neg .truth => []
  | .conj p q => SumOfProducts.multiply (FormulaTree.toSOPNnf p) (FormulaTree.toSOPNnf q)
  | .disj p q => FormulaTree.toSOPNnf p ++ FormulaTree.toSOPNnf q
  | .neg _ => []
  | .impl _ _ => []
  | .eqv _ _ => []
  | .nand _ _ => []

/--
Convert a Boolean tree into Sum-of-Products form.

Process:
1. eliminate implication, equivalence, and NAND into AND/OR/NOT via `nnf`;
2. push negations to leaves using De Morgan transformations;
3. distribute AND over OR, producing product terms;
4. represent the result as a list of product terms.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SOP/Varianta74c4ff307ec4b874baf84beb1b00d399b87de62c1bc5e30f1a071e33d9dafac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SOP/Varianta74c4ff307ec4b874baf84beb1b00d399b87de62c1bc5e30f1a071e33d9dafac.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a73a2c7c1cd60412183a621805c9b858e02ce37f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
