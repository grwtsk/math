# FinTM2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:12e4f4cb979685be3dccd399308c7d66e1306786cee79def2cfa08ece2975beb",
  "kind": "structure",
  "lexical_name": "FinTM2",
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
  "slug": "fintm2--fc3e989dd408902c7ffcbb6d",
  "source": {
    "blob": "75e0b611a992986ee8abc6a43e931c3d756138e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 53,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantd4f8578af80b41bf00528a0a7a4d226d6edc3a552338b87fe41871a28c085f3a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fc3e989dd408902c7ffcbb6d8d3acfb453c0f5da98eb6aeed66660f9369f1fa0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantd4f8578af80b41bf00528a0a7a4d226d6edc3a552338b87fe41871a28c085f3a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:12e4f4cb979685be3dccd399308c7d66e1306786cee79def2cfa08ece2975beb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FinTM2 where
  {K : Type} [kDecidableEq : DecidableEq K] [kFin : Fintype K] -- index type of stacks
  (k₀ k₁ : K) -- input and output stack
  (Γ : K → Type) -- type of stack elements
  (Λ : Type) (main : Λ) [ΛFin : Fintype Λ] -- type of function labels
  (σ : Type) (initialState : σ) -- type of states of the machine
  [σFin : Fintype σ]
  [Γk₀Fin : Fintype (Γ k₀)]
  (m : Λ → Turing.TM2.Stmt Γ Λ σ) -- the program itself, i.e. one function for every function label
#align turing.fin_tm2 Turing.FinTM2

namespace FinTM2

section

variable (tm : FinTM2)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantd4f8578af80b41bf00528a0a7a4d226d6edc3a552338b87fe41871a28c085f3a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantd4f8578af80b41bf00528a0a7a4d226d6edc3a552338b87fe41871a28c085f3a.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75e0b611a992986ee8abc6a43e931c3d756138e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
