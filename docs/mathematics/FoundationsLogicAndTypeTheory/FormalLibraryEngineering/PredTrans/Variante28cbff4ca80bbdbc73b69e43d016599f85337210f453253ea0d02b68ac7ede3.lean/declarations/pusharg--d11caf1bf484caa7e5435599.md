# pushArg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f3eb82a5b8018ba7e854c3e6dd488e49bfabecc80792724f85d757fc97b9b733",
  "kind": "def",
  "lexical_name": "pushArg",
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
  "slug": "pusharg--d11caf1bf484caa7e5435599",
  "source": {
    "blob": "af7e1ad75cfd850648f3e46a0ba1cd0fba0bb336",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 196,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PredTrans/Variante28cbff4ca80bbdbc73b69e43d016599f85337210f453253ea0d02b68ac7ede3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d11caf1bf484caa7e543559901736b2c815bc19b42c565b7424010a21fca3541",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PredTrans/Variante28cbff4ca80bbdbc73b69e43d016599f85337210f453253ea0d02b68ac7ede3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f3eb82a5b8018ba7e854c3e6dd488e49bfabecc80792724f85d757fc97b9b733`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pushArg {σ : Type u} (x : StateT σ (PredTrans ps) α) : PredTrans (.arg σ ps) α where
  trans := fun Q s => (x.run s).apply (fun (a, s) => Q.1 a s, Q.2)
  conjunctiveRaw := by
    intro Q₁ Q₂
    apply SPred.bientails.of_eq
    ext s
    dsimp only [SPred.and_cons, ExceptConds.and, StateT.run]
    rw [← ((x s).conjunctive _ _).to_eq]

/--
Adds the ability to make assertions about exceptions of type `ε` to a predicate transformer with
postcondition shape `ps`, resulting in postcondition shape `.except ε ps`. This is done by
interpreting `ExceptT ε (PredTrans ps) α` into `PredTrans (.except ε ps) α`.

This can be used for all kinds of exception-like effects, such as early termination, by interpreting
them as exceptions.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PredTrans/Variante28cbff4ca80bbdbc73b69e43d016599f85337210f453253ea0d02b68ac7ede3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PredTrans/Variante28cbff4ca80bbdbc73b69e43d016599f85337210f453253ea0d02b68ac7ede3.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af7e1ad75cfd850648f3e46a0ba1cd0fba0bb336` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
