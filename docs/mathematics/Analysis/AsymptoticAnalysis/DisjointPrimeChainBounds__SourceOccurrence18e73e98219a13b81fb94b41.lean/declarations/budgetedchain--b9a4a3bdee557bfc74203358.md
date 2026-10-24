# budgetedChain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3dd56dd5cdaaf4d3bef87da5f1a651d84a60bf05d98280ea20c2b6428fe7a962",
  "kind": "def",
  "lexical_name": "budgetedChain",
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
  "slug": "budgetedchain--b9a4a3bdee557bfc74203358",
  "source": {
    "blob": "251102665590ff9a533578fd068bedbd933252a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 35,
    "path": "GRWTSK/Analysis/Asymptotics/DisjointPrimeChainBounds.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b9a4a3bdee557bfc74203358b7c3d0ff98a9e1f0502ae6c890fc8c539a51217c",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/DisjointPrimeChainBounds__SourceOccurrence18e73e98219a13b81fb94b41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3dd56dd5cdaaf4d3bef87da5f1a651d84a60bf05d98280ea20c2b6428fe7a962`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def budgetedChain {T η : ℝ} (chain : CompletionChain T)
    (admissible : ∀ j, AdmissibleBlock (chain.states j) (chain.blocks j) T η) :
    ASClosure.BudgetedChain T η where
  chain := chain
  admissible := admissible
  massBudget := (completion_total_mass chain).le

/-- The original uniform AS hypothesis closes to the literal ordered P04 target.
This theorem supplies the prime-harmonic bound internally.  It does not supply
an arithmetic reserve or the AS estimate.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/AsymptoticAnalysis/DisjointPrimeChainBounds__SourceOccurrence18e73e98219a13b81fb94b41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Asymptotics/DisjointPrimeChainBounds.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `251102665590ff9a533578fd068bedbd933252a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
