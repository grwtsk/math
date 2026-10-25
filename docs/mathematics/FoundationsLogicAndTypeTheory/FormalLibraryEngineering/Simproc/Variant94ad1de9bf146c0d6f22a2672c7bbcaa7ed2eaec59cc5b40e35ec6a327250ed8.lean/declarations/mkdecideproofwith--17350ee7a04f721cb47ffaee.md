# mkDecideProofWith

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d57f4317d60752dda7707fa7db0c0ff29bce0aa860c0751c595a3d6a5c315ffe",
  "kind": "def",
  "lexical_name": "mkDecideProofWith",
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
  "slug": "mkdecideproofwith--17350ee7a04f721cb47ffaee",
  "source": {
    "blob": "d33f429f7a7d01b1bddef28ad6146ea2e3018c02",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 23,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simproc/Variant94ad1de9bf146c0d6f22a2672c7bbcaa7ed2eaec59cc5b40e35ec6a327250ed8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:17350ee7a04f721cb47ffaee8f1313884405730decdb62e127924f2b8ea73e5d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simproc/Variant94ad1de9bf146c0d6f22a2672c7bbcaa7ed2eaec59cc5b40e35ec6a327250ed8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d57f4317d60752dda7707fa7db0c0ff29bce0aa860c0751c595a3d6a5c315ffe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkDecideProofWith (p : Expr) (inst : Expr) : Expr :=
  let decP := mkApp2 (mkConst ``Decidable.decide) p inst
  let boolTy := mkConst ``Bool
  let decEqTrue := mkApp3 (mkConst ``Eq [1]) boolTy decP (mkConst ``Bool.true)
  let h := mkApp2 (mkConst ``Eq.refl [1]) boolTy (mkConst ``Bool.true)
  let h := mkExpectedPropHint h decEqTrue
  mkApp3 (mkConst ``of_decide_eq_true) p inst h

namespace BitVec

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simproc/Variant94ad1de9bf146c0d6f22a2672c7bbcaa7ed2eaec59cc5b40e35ec6a327250ed8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simproc/Variant94ad1de9bf146c0d6f22a2672c7bbcaa7ed2eaec59cc5b40e35ec6a327250ed8.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d33f429f7a7d01b1bddef28ad6146ea2e3018c02` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
