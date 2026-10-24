# iterateInduction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d424c1fc7f02b81c3c7fe09a89a511d2e320d738da1153ecb535659c83458423",
  "kind": "def",
  "lexical_name": "iterateInduction",
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
  "slug": "iterateinduction--966dcfd6d49ba3f9db6e5d4b",
  "source": {
    "blob": "d74cf76d06abd4ac83e88e8a06b16bc1fc84a710",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 108,
    "path": "GRWTSK/Analysis/MeasureTheory/Traj/Variantc565dd9bdc17c21181cd5cbe41055aa2889210745bc463ff0596a01c580ccbcb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:966dcfd6d49ba3f9db6e5d4bd527da21fd2bfe0999c2cf5254ac2b48b210385a",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Traj/Variantc565dd9bdc17c21181cd5cbe41055aa2889210745bc463ff0596a01c580ccbcb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d424c1fc7f02b81c3c7fe09a89a511d2e320d738da1153ecb535659c83458423`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def iterateInduction {a : ℕ} (x : Π i : Iic a, X i)
    (ind : (n : ℕ) → (Π i : Iic n, X i) → X (n + 1)) : Π n, X n
  | 0 => x ⟨0, mem_Iic.2 <| zero_le a⟩
  | k + 1 => if h : k + 1 ≤ a
      then x ⟨k + 1, mem_Iic.2 h⟩
      else ind k (fun i ↦ iterateInduction x ind i)
  decreasing_by exact Nat.lt_succ.2 (mem_Iic.1 i.2)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Traj/Variantc565dd9bdc17c21181cd5cbe41055aa2889210745bc463ff0596a01c580ccbcb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Traj/Variantc565dd9bdc17c21181cd5cbe41055aa2889210745bc463ff0596a01c580ccbcb.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d74cf76d06abd4ac83e88e8a06b16bc1fc84a710` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
