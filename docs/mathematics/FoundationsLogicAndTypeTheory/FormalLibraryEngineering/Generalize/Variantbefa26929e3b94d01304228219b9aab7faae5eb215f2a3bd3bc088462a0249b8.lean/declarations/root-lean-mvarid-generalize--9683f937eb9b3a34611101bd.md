# _root_.Lean.MVarId.generalize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:acdd1ede40c641ca99743c2cd41719ec83ec71745cb44d8ef02ceb6330c2c50f",
  "kind": "def",
  "lexical_name": "_root_.Lean.MVarId.generalize",
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
  "slug": "root-lean-mvarid-generalize--9683f937eb9b3a34611101bd",
  "source": {
    "blob": "ecb3ed7b1219d45c92a8a3368793a52e7de24e37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 130,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Generalize/Variantbefa26929e3b94d01304228219b9aab7faae5eb215f2a3bd3bc088462a0249b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9683f937eb9b3a34611101bd845475dbaf675396507bcfbd8586b2fa42fd7bcd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Generalize/Variantbefa26929e3b94d01304228219b9aab7faae5eb215f2a3bd3bc088462a0249b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:acdd1ede40c641ca99743c2cd41719ec83ec71745cb44d8ef02ceb6330c2c50f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.Lean.MVarId.generalize (mvarId : MVarId) (args : Array GeneralizeArg)
    (transparency := TransparencyMode.instances) : MetaM (Array FVarId × MVarId) :=
  generalizeCore mvarId args transparency

/--
Extension of `generalize` to support generalizing within specified hypotheses.
The `hyps` array contains the list of hypotheses within which to look for occurrences
of the generalizing expressions.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Generalize/Variantbefa26929e3b94d01304228219b9aab7faae5eb215f2a3bd3bc088462a0249b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Generalize/Variantbefa26929e3b94d01304228219b9aab7faae5eb215f2a3bd3bc088462a0249b8.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecb3ed7b1219d45c92a8a3368793a52e7de24e37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
