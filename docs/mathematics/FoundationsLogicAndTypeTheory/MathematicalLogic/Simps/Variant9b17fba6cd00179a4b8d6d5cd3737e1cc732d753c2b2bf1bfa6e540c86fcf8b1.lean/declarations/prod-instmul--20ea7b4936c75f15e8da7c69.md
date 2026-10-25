# Prod.instMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:85f22d73ba298fc3bc415f442386891f79a3bf66ba6b38d1c8fb605a46c5af6d",
  "kind": "instance",
  "lexical_name": "Prod.instMul",
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
  "slug": "prod-instmul--20ea7b4936c75f15e8da7c69",
  "source": {
    "blob": "a8b442e22582bb19489966323ad6bcdaf113328e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1044,
    "line": 1034,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Simps/Variant9b17fba6cd00179a4b8d6d5cd3737e1cc732d753c2b2bf1bfa6e540c86fcf8b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:20ea7b4936c75f15e8da7c69d81652d3a7df1a0f93e47388b210d548b7e908cc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Simps/Variant9b17fba6cd00179a4b8d6d5cd3737e1cc732d753c2b2bf1bfa6e540c86fcf8b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:85f22d73ba298fc3bc415f442386891f79a3bf66ba6b38d1c8fb605a46c5af6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1034–1044.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Prod.instMul {M N} [Mul M] [Mul N] : Mul (M × N) := ⟨fun p q ↦ ⟨p.1 * q.1, p.2 * q.2⟩⟩

run_cmd liftTermElabM do
  let env ← getEnv
  guard <| env.find? `Prod.mul_def |>.isSome
  guard <| env.find? `Prod.add_def |>.isSome
  -- hasAttribute `to_additive `Prod.instMul
  -- hasAttribute `to_additive `Prod.mul_def
  guard <| hasSimpAttribute env `Prod.mul_def
  guard <| hasSimpAttribute env `Prod.add_def

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Simps/Variant9b17fba6cd00179a4b8d6d5cd3737e1cc732d753c2b2bf1bfa6e540c86fcf8b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Simps/Variant9b17fba6cd00179a4b8d6d5cd3737e1cc732d753c2b2bf1bfa6e540c86fcf8b1.lean#L1034).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8b442e22582bb19489966323ad6bcdaf113328e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
