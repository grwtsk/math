# supports_run

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "139842ce8cdc9a876486c670f92254e60bb6b224",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 447,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/afc1165dfcfab793b6a7cab9ac0f0047d501221cad9ef68afaded8749303dda6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:899eb1e2-1478-5d35-92d8-ac359b6bb4df",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:716459be-52dd-039c-18cd-7e2d4cea8173",
  "kind": "theorem",
  "lexical_name": "supports_run",
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
  "slug": "supports-run--4339d68aba74d70d2d818304",
  "source": {
    "blob": "139842ce8cdc9a876486c670f92254e60bb6b224",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 457,
    "line": 447,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/StackTuringMachine/Variantafc1165dfcfab793b6a7cab9ac0f0047d501221cad9ef68afaded8749303dda6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4339d68aba74d70d2d81830480920a9c571d1e9a38bb567853732096406011a2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/StackTuringMachine/Variantafc1165dfcfab793b6a7cab9ac0f0047d501221cad9ef68afaded8749303dda6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:716459be-52dd-039c-18cd-7e2d4cea8173`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 447–457.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem supports_run (S : Finset Λ) {k : K} (s : StAct K Γ σ k) (q : TM2.Stmt Γ Λ σ) :
    TM2.SupportsStmt S (stRun s q) ↔ TM2.SupportsStmt S q := by
  cases s <;> rfl

end

variable (K Γ Λ σ)

/-- The machine states of the TM2 emulator. We can either be in a normal state when waiting for the
next TM2 action, or we can be in the "go" and "return" states to go to the top of the stack and
return to the bottom, respectively. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/StackTuringMachine/Variantafc1165dfcfab793b6a7cab9ac0f0047d501221cad9ef68afaded8749303dda6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/StackTuringMachine/Variantafc1165dfcfab793b6a7cab9ac0f0047d501221cad9ef68afaded8749303dda6.lean#L447).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `139842ce8cdc9a876486c670f92254e60bb6b224` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
