# extractSafePrefixGoal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c2a216e8ad79b5dfac982b6f120089be12396bd182f7258c3726e2800e8c9db2",
  "kind": "def",
  "lexical_name": "extractSafePrefixGoal",
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
  "slug": "extractsafeprefixgoal--458d9db03d1cacaa4ba11c00",
  "source": {
    "blob": "47ccb3c43f049d8bbe4539d492d6dbfaffe6181c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 162,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractProof/Variantd1762266f7fa85e523333e5eadad99391e70ada65942c802c117885477fc8afd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:458d9db03d1cacaa4ba11c00cd8fc82ccaec384cf19e9346ea849c9e2adc0477",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractProof/Variantd1762266f7fa85e523333e5eadad99391e70ada65942c802c117885477fc8afd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c2a216e8ad79b5dfac982b6f120089be12396bd182f7258c3726e2800e8c9db2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  private partial def extractSafePrefixGoal (parentEnv : Environment)
      (g : Goal) : SafePrefixM Unit := do
    let (some (postNormGoal, _, parentEnv)) ← visitGoal parentEnv g
      | return
    let safeRapps ← g.safeRapps
    if safeRapps.size > 1 then
      throwError "aesop: internal error: goal {g.id} has multiple safe rapps"
    if h : 0 < safeRapps.size then
      extractSafePrefixRapp parentEnv postNormGoal (← safeRapps[0].get)
    else
      modify λ s => { s with goals := s.goals.push postNormGoal }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractProof/Variantd1762266f7fa85e523333e5eadad99391e70ada65942c802c117885477fc8afd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractProof/Variantd1762266f7fa85e523333e5eadad99391e70ada65942c802c117885477fc8afd.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47ccb3c43f049d8bbe4539d492d6dbfaffe6181c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
