# mvqpfFix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2c52b197114a7359a94b3db4fa6494155e18adbc3ef312f4dc55a69bb92c1ecc",
  "kind": "instance",
  "lexical_name": "mvqpfFix",
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
  "slug": "mvqpffix--f6e4e15fb5eba06ee2b57800",
  "source": {
    "blob": "c43e28115819785510f0d9b46182491351a17b4d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 300,
    "line": 283,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Varianta72a26df9454023e07de47fc58738f2b5577963c7097c437965cc4a794015104.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f6e4e15fb5eba06ee2b57800a050bef820a7404501c0c51bdcbdabb20c3ea2f5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Varianta72a26df9454023e07de47fc58738f2b5577963c7097c437965cc4a794015104.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2c52b197114a7359a94b3db4fa6494155e18adbc3ef312f4dc55a69bb92c1ecc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–300.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance mvqpfFix : MvQPF (Fix F) where
  P := q.P.wp
  abs α := Quot.mk WEquiv α
  repr α := fixToW α
  abs_repr := by
    intro α
    apply Quot.ind
    intro a
    apply Quot.sound
    apply wrepr_equiv
  abs_map := by
    intro α β g x
    conv =>
      rhs
      dsimp [MvFunctor.map]
    rfl

/-- Dependent recursor for `fix F` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Varianta72a26df9454023e07de47fc58738f2b5577963c7097c437965cc4a794015104.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Varianta72a26df9454023e07de47fc58738f2b5577963c7097c437965cc4a794015104.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c43e28115819785510f0d9b46182491351a17b4d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
