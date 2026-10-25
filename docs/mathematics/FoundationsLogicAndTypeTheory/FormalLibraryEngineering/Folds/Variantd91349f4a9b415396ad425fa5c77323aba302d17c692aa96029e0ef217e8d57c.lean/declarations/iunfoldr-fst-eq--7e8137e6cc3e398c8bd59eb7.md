# iunfoldr.fst_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a29c31b1-356a-6f0f-dbeb-14873b2b70b0",
  "kind": "theorem",
  "lexical_name": "iunfoldr.fst_eq",
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
  "slug": "iunfoldr-fst-eq--7e8137e6cc3e398c8bd59eb7",
  "source": {
    "blob": "4f651d1eadbf66787eaa7909a1079a4c81a8feda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 28,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Folds/Variantd91349f4a9b415396ad425fa5c77323aba302d17c692aa96029e0ef217e8d57c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e8137e6cc3e398c8bd59eb7c21378a5ffba558a358b33616a37d3d3c2b77762",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Folds/Variantd91349f4a9b415396ad425fa5c77323aba302d17c692aa96029e0ef217e8d57c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a29c31b1-356a-6f0f-dbeb-14873b2b70b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iunfoldr.fst_eq
    {f : Fin w → α → α × Bool} (state : Nat → α) (s : α)
    (init : s = state 0)
    (ind : ∀(i : Fin w), (f i (state i.val)).fst = state (i.val+1)) :
    (iunfoldr f s).fst = state w := by
  unfold iunfoldr
  apply Fin.hIterate_elim (fun i (p : α × BitVec i) => p.fst = state i)
  case init =>
    exact init
  case step =>
    intro i ⟨s, v⟩ p
    simp_all [ind i]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Folds/Variantd91349f4a9b415396ad425fa5c77323aba302d17c692aa96029e0ef217e8d57c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Folds/Variantd91349f4a9b415396ad425fa5c77323aba302d17c692aa96029e0ef217e8d57c.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f651d1eadbf66787eaa7909a1079a4c81a8feda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
