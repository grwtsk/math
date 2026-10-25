# evalDvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:29a4cd2fab4a18ae1a590416d382450b5c9728df564a0eb09d8d4f629522a10e",
  "kind": "def",
  "lexical_name": "evalDvd",
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
  "slug": "evaldvd--92fafcab98d76d113e799d55",
  "source": {
    "blob": "3e96c22f2c82685468e8cf8bbc0aedc67f0a2ebb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 474,
    "line": 469,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalGround/Variant10fee3bc54ea9f7d8f244d25d9385a8d6d7d1cd47ee3686476610893419f154f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:92fafcab98d76d113e799d5508fb405fdd776d863581664c06d3f0dc82a78cbe",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalGround/Variant10fee3bc54ea9f7d8f244d25d9385a8d6d7d1cd47ee3686476610893419f154f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:29a4cd2fab4a18ae1a590416d382450b5c9728df564a0eb09d8d4f629522a10e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 469–474.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalDvd (α : Expr) (a b : Expr) : SimpM Result :=
  match_expr α with
  | Nat => evalBinPred getNatValue? (mkConst ``Nat.dvd_eq_true) (mkConst ``Nat.dvd_eq_false) (. ∣ .) a b
  | Int => evalBinPred getIntValue? (mkConst ``Int.dvd_eq_true) (mkConst ``Int.dvd_eq_false) (. ∣ .) a b
  | _ => return .rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalGround/Variant10fee3bc54ea9f7d8f244d25d9385a8d6d7d1cd47ee3686476610893419f154f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalGround/Variant10fee3bc54ea9f7d8f244d25d9385a8d6d7d1cd47ee3686476610893419f154f.lean#L469).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e96c22f2c82685468e8cf8bbc0aedc67f0a2ebb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
